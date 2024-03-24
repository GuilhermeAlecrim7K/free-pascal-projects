program TemperatureConverter;

{$mode objfpc}

uses
  SysUtils;

type
  generic TPromptValidator<T> = function (AValue: T; out AMessageIfInvalid: string): boolean;

generic function Prompt<T>(const AMessage: string): T;
begin
  Write(AMessage);
  Readln(Result);
end;

generic function EnsurePrompt<T>(const AMessage: string; AValidator: specialize TPromptValidator<T>): T;
var
  Message: string;
begin
  Message := AMessage;
  while True do
  begin
    try
      Result := specialize Prompt<T>(Message);
    except
      Message := 'Invalid input. Try again: ';
      Continue;
    end;
    if not AValidator(Result, Message) then
      Continue;
    break;
  end;
end;

function CheckValidCelsiusOrFahrenheit(AValue: char; out AMessageIfInvalid: string): boolean;
begin
  Result := AValue in ['C', 'c', 'F', 'f'];
  AMessageIfInvalid := 'Invalid option. Type "C" for Celsius or "F" for Fahrenheit';
end;

generic function IfThen<T>(ACondition: Boolean; const ATrueValue, AFalseValue: T): T;
begin
  if ACondition then
    Result := ATrueValue
  else
    Result := AFalseValue;
end;

function CheckValidCelsius(AValue: Real; out AMessageIfInvalid: string): boolean;
const
  ABSOLUTE_ZERO = -273.15;
begin
  Result := AValue >= ABSOLUTE_ZERO;
  AMessageIfInvalid := Format('Value must be greater than %.2f (absolute zero). Try again: ', [ABSOLUTE_ZERO]);
end;

function CheckValidFahrenheit(AValue: Real; out AMessageIfInvalid: string): boolean;
const
  ABSOLUTE_ZERO = -459.67;
begin
  Result := AValue >= ABSOLUTE_ZERO;
  AMessageIfInvalid := Format('Value must be greater than %.2f (absolute zero). Try again: ', [ABSOLUTE_ZERO]);
end;

function CelsiusToFahrenheit(AValue: real): real;
begin
  Result := 9 * AValue / 5 + 32;
end;

function FahrenheitToCelsius(AValue: real): real;
begin
  Result := 5 * (AValue - 32) / 9;
end;

var
  celsiusOrFahrenheit: char;
  isCelsius: boolean;
  temperature: real;
begin
  celsiusOrFahrenheit := specialize EnsurePrompt<char>(
    'Would you like to convert from (C)elsius or (F)ahrenheit: ',
    @CheckValidCelsiusOrFahrenheit
  );
  isCelsius := celsiusOrFahrenheit in ['C', 'c'];
  temperature := specialize EnsurePrompt<real>(
    specialize IfThen<string>(isCelsius, '°C: ', '°F: '),
    specialize IfThen<specialize TPromptValidator<real>>(isCelsius, @CheckValidCelsius, @CheckValidFahrenheit)
  );
  if isCelsius then
    temperature := CelsiusToFahrenheit(temperature)
  else
    temperature := FahrenheitToCelsius(temperature);
  Writeln(
    temperature:0:4,
    specialize IfThen<string>(isCelsius, '°C', '°F')
  );
end.
