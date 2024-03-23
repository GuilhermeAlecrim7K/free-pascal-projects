program Constants;

// Scalar constants
const
  NAME = 'Tao Yue';
  FIRST_LETTER = 'a';
  YEAR = 1997;
  PI = 3.1415926535897932;
  USING_NCSA_MOSAIC = TRUE;
  A_FORCED_TYPE_CONSTANT : real = 12;

type
  RComplex = record
    R,I: real;
  end;

const
  // Fields must be initialized in the same order that they are declared
  C1: RComplex = (R:3; I:1783.5);
  C2: RComplex = (R:9.6; I:1.62);

// Array constants
const
  // One dimensional array constant
  ALPHABET: array [1..26] of char =
    ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
     'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
     'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'    );
  // Two dimensional array constant
  TWO_D_ARRAY: array [0..3, 0..1] of integer = (
    (100, 56),
    (241, 19),
    (12, 55),
    (191, 215)
  );
  THREE_D_ARRAY: array [0..1, 0..2, 0..3] of integer = (
    (
      (111, 112, 113, 114),
      (121, 122, 123, 124),
      (131, 132, 133, 134)
    ),
    (
      (211, 212, 213, 214),
      (221, 222, 223, 224),
      (231, 232, 233, 234)
    )
  );


const
  MONTH_START = 0;
  MONTH_END = 11;
  DAY_START = 0;
  DAY_END = 6;
  DAY_NAME_CH: array [DAY_START..DAY_END] of char =
    ('S', 'M', 'T', 'W', 'H', 'F', 'A');
  DAY_NAME_SHORT: array [DAY_START..DAY_END] of string =
    ('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
  DAY_NAME_LONG: array [DAY_START..DAY_END] of string =
    ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
  MONTH_NAME_LONG: array [MONTH_START..MONTH_END] of string = (
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  );
  MONTH_DAYS: Array [MONTH_START..MONTH_END] of integer =
    (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

// Constant arrays of records
type
  EMonth = (
    JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE,
    JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
  );
  EachMonth = record
    Name: string;
    Abbreviation: string;
    DayCount: Integer;
  end;
const
  MONTHS: array [JANUARY..DECEMBER] of EachMonth = (
    (Name: 'January'; Abbreviation: 'Jan'; DayCount: 31),
    (Name: 'February'; Abbreviation: 'Feb'; DayCount: 28),
    (Name: 'March'; Abbreviation: 'Mar'; DayCount: 31),
    (Name: 'April'; Abbreviation: 'Apr'; DayCount: 30),
    (Name: 'May'; Abbreviation: 'May'; DayCount: 31),
    (Name: 'June'; Abbreviation: 'Jun'; DayCount: 30),
    (Name: 'July'; Abbreviation: 'Jul'; DayCount: 31),
    (Name: 'August'; Abbreviation: 'Aug'; DayCount: 31),
    (Name: 'September'; Abbreviation: 'Sep'; DayCount: 30),
    (Name: 'October'; Abbreviation: 'Oct'; DayCount: 31),
    (Name: 'November'; Abbreviation: 'Nov'; DayCount: 30),
    (Name: 'December'; Abbreviation: 'Dec'; DayCount: 31)
  );

begin
end.
