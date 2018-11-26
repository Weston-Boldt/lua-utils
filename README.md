# lua-utils
utility functions for lua

## inTable (needle, haystack) 
> find a needle in the hay stack
> Caveat: as of now, this function doesn't support table equality so if you are looking for a table in a table,
>   I apologize!

## empty (value)
> if the table has no length, is an empty string, or is falsy it is empty!

## cap (val, min, max)
> keep a value in range

## dump (object, counter) (counter is for recrusion)
> deep print a object (up to 5 hardcoded levels ((DOH REMOVE HARDCODED LEVEL LIMIT!!!!)))
