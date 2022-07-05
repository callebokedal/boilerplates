# Date Standards

## ECMA 262 13th edition - June 2022

https://www.ecma-international.org/wp-content/uploads/ECMA-262_13th_edition_june_2022.pdf

### 21.4.1.15 Date Time String Format
ECMAScript defines a string interchange format for date-times based upon a simplification of the ISO 8601 calendar date extended format. The format is as follows: YYYY-MM-DDTHH:mm:ss.sssZ

Where the elements are as follows:

    YYYY    is the year in the proleptic Gregorian calendar as four decimal digits from 0000 to 9999, or as an expanded year of "+" or "-" followed by six decimal digits.
    -       "-" (hyphen) appears literally twice in the string.
    MM      is the month of the year as two decimal digits from 01 (January) to 12 (December).
    DD      is the day of the month as two decimal digits from 01 to 31.
    T       "T" appears literally in the string, to indicate the beginning of the time element.
    HH      is the number of complete hours that have passed since midnight as two decimal digits from 00 to 24. : ":" (colon) appears literally twice in the string.
    mm      is the number of complete minutes since the start of the hour as two decimal digits from 00 to 59.
    ss      is the number of complete seconds since the start of the minute as two decimal digits from 00 to 59.
    .       "." (dot) appears literally in the string.
    sss     is the number of complete milliseconds since the start of the second as three decimal digits.
    Z       is the UTC offset representation specified as "Z" (for UTC with no offset) or an offset of either "+" or "-" followed by a time expression HH:mm (indicating local time ahead of 
            or behind UTC, respectively)

This format includes date-only forms:

    YYYY
    YYYY-MM
    YYYY-MM-DD

