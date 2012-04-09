!SLIDE quote
# Exercise #

!SLIDE quote

## Select at least two configuration input sources:

1. YML
2. YML (User specific)
3. Command-Line Parameters
4. Environment Variables
5. JSON
6. XML
7. Database
8. Webservice

!SLIDE quote

## Conquering Input

After selecting the input sources, implement the initial strategy that will load
these values. 

!SLIDE quote

## Unification

Then, when you have all these values loaded, decide on way to
represent the configuration in a way that would be easily __expandable__ and
__flexible__.

!SLIDE quote

## Expandable

A configuration system that you could later decide to add/apply a 
different input source or additional input sources with the most minimal
design changes. 

## Flexible

A configuration system that would insulate your application from changes
to the specifics of the input (e.g. Changing the names of the command-line
parameters or the name-value pairs of the JSON).


