Program ProgramStructure (ParamList);

{ Constant declarations }
const
  ZERO = 0;

var
  { Variable declarations }
  aVariable: integer;

type
  { Type declarations }
  EDayOfTheWeek = (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY);

{ Subprogram definitions (procedures, functions, etc.) }
procedure DoNothing;
begin
  aVariable := ZERO;
end;

function ReturnSunday: EDayOfTheWeek;
begin
  ReturnSunday := SUNDAY;
end;

var
  aDayOfTheWeek: EDayOfTheWeek;

begin
  { Executable statements }
  DoNothing;
  Assert(aVariable = ZERO);
  aDayOfTheWeek := ReturnSunday;
  Assert(aDayOfTheWeek = SUNDAY);
end.
