program GuessTheNumber;

{$mode objfpc}

uses
  SysUtils;

generic function Prompt<T>(const AMessage: string): T;
begin
  Write(AMessage);
  Readln(Result);
end;

function PromptForValidInteger(const AMessage: string): integer;
var
  Message: string;
begin
  Message := AMessage;
  while True do
  begin
    try
      Result := specialize Prompt<integer>(Message);
    except
      Message := 'Not a number. Try again: ';
      continue;
    end;
    if (Result < 1) or (Result > 100) then
    begin
      Message := 'Number not in accepted range. Try again: ';
      continue;
    end;
    break;
  end;
end;

var
  userNumber, number, I: integer;
  userPicks: array of integer;
begin
  Randomize;
  Write('Welcome to Guess the Number! ');
  repeat
    number := Random(100) + 1;
    userNumber := PromptForValidInteger('Choose a number from from 1 to 100: ');
    SetLength(userPicks, 1);
    userPicks[0] := userNumber;
    while userNumber <> number do
    begin
      if userNumber > number then
        userNumber := PromptForValidInteger('Too high. Try again: ')
      else
        userNumber := PromptForValidInteger('Too low. Try again: ');
      SetLength(userPicks, Length(userPicks) + 1);
      userPicks[High(userPicks)] := userNumber;
    end;
    Writeln;
    Writeln(
      Format('Correct! You got it in %d attempts', [Length(userPicks)])
    );
    Writeln('Attempts:');
    for I := Low(userPicks) to High(userPicks) do
      Writeln('  ', userPicks[I]);
    Writeln;
    if not (specialize Prompt<char>('Type (Y)es to play again: ') in ['Y', 'y']) then
      break;
  until false;
  Writeln('Thanks for playing!');
end.
