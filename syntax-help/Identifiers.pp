program Identifiers;

{
  Rules for identifiers:
    - Must begin with a letter (a..Z) or an underscore (_)
    - Can be followed by zero or more letters (a..Z), digits (0..9) or undercores(_), in any combination.
    - Cannot be the same as a keyword
    - May not contain special characters
  Obs: Pascal is NOT case sensitive.
}
var
  aValidIdentifier: string;
  an0therV4l1dIdentifier: string;
  _YetAnotherValidIdentifier: string;
begin
  aValidIdentifier := 'A string';
  Assert(aValidIdentifier = avalididentifier); // case insensitive
end.

{
  Keep in mind:
  - Many Pascal compilers will only look at the first 32 characters or so.
  - Free Pascal limits identifiers to 127 characters.
  - If you want to make your code compilable by all compilers, use a reasonable length for identifiers -- up to 15 characters
}
