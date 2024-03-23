program Files;
{$mode objfpc}
var
  InFile, OutFile: Text;
  Character: char;
begin
  Assign(InFile, './file-example.txt');
  Assign(OutFile, './file-out.txt');
  try
    Reset(InFile);
    Rewrite(OutFile);
    while not Eof(InFile) do
    begin
      Read(InFile, Character);
      Write(OutFile, Character);
    end;
  finally
    Close(InFile);
    Close(OutFile);
  end;
end.
