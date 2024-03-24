program SumAndAvgOfNumbers;

{$mode objfpc}
{
Find the sum and average of five integers.
The sum should be an integer, and the average should be real.
The five numbers are: 45, 7, 68, 2, and 34.
Use a constant to signify the number of integers handled by the program, i.e. define a constant as having the value 5.
}

const
  N1 = 45;
  N2 = 7;
  N3 = 68;
  N4 = 2;
  N5 = 34;

const
  NUMBERS: array [0..4] of integer = (N1, N2, N3, N4, N5);

function GetSum(ANumbers: array of integer): integer;
var
  I: integer;
begin
  Result := 0;
  for I := Low(ANumbers) to High(ANumbers) do
    Result := Result + ANumbers[I];
end;

function GetAverage(ANumbers: array of integer): Real;
begin
  Result := GetSum(ANumbers) / Length(ANumbers);
end;

var
  I: integer;
begin
  Writeln('Number of integers = ', Length(NUMBERS));
  for I := Low(NUMBERS) to High(NUMBERS) do
    Writeln('Number ', Succ(I), ' = ', NUMBERS[I]);
  Writeln('Sum = ', GetSum(NUMBERS));
  Writeln('Average = ', GetAverage(NUMBERS));
end.
