program ReservedWords;
begin
{
  There are three groups of reserved words, according to the FPC reference.

  - Turbo Pascal reserved words
  - Delphi reserved words
  - FPC reserved words

  Turbo Pascal reserved words

  - absolute   - and            - array   - asm         - begin
  - break      - case           - const   - constructor - continue
  - destructor - div            - do      - downto      - else
  - end        - file           - for     - function    - goto
  - if         - implementation - in      - inherited   - inline
  - interface  - label          - mod     - nil         - not
  - object     - of             - on      - operator    - or
  - packed     - procedure      - program - record      - reintroduce
  - repeat     - self           - set     - shl         - shr
  - string     - then           - to      - type        - unit
  - unit       - uses           - var     - while       - with
  - xor

  Delphi reserved words
  The same as the pascal ones, plus:

  - as       - class          - except    - exports - finalization
  - finally  - initialization - is        - library - on
  - property - raise          - threadvar - try

  On top of the Turbo Pascal and Delphi reserved words, Free Pascal also considers the following as reserved words:

  - dispose - exit  - false    - new
  - true    - break - continue

  Also, Pascal has several pre-defined identifiers. You can replace them with your own definitions, but thenn you'd be deleting part of the functionality of Pascal.

  - abs     - arctan  - boolean - char   - cos
  - dispose - eof     - eolln   - exp    - false
  - input   - integer - ln      - maxint - new
  - odd     - ord     - output  - pack   - page
  - pred    - read    - readln  - real   - reset
  - rewrite - round   - sin     - sqr    - sqrt
  - succ    - text    - true    - trunc  - write
  - writeln
}
end.
