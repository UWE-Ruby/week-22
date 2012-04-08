## Configuring Configurable Configuration with Configuration

Often times when we start writing better code, we start to remove all those
hard-coded values within our application and allow for certain features to
become more configurable. Or we want to be able to configure our system to be
run in different ways in different environments (e.g. development, test,
production). However, with more configuration brings more problems. It is
something that can easily get away from you within an application.

The objective of this exercise is to provide a single, simplistic reference
point of configuration that aggregates several configuration sources.

### Exercise

The objective of the exercise is to accomplish the following:

#### Defining the Problem

For this exercise choose at least two input sources:

1. YML

    > `fixtures/configuration.yml`

2. YML (User specific)

    > `fixtures/user-configuration.yml`
    
3. Command-Line Parameters

    > Examples in `fixtures/command-parameters.md`

4. Environment Variables

    > Examples in `fixtures/environment-parameters.md`
    
5. JSON

    > `fixtures/configuration.json`

6. XML

    > `fixtures/configuration.xml`
    
7. Database

    > TO BE CREATED
    
8. Webservice

    > Run `rake service` to start the service.

#### Conquering Input

After selecting the input sources, implement the initial strategy that will load
these values. 

#### Unify the Configuration

Then, when you have all these values loaded, decide on way to
represent the configuration in a way that would be easily __expandable__ and
__flexible__.

* Expandable

    > A configuration system that you could later decide to add/apply a 
    > different input source or additional input sources with the most minimal
    > design changes. 

* Flexible

    > A configuration system that would insulate your application from changes
    > to the specifics of the input (e.g. Changing the names of the command-line
    > parameters or the name-value pairs of the JSON).


### Exercise Retrospective

* How did you decide the order of which to apply the various configurations?

* How did you choose to resolve conflicts?

* How did you, or would you, make a user aware of how the configuration system
  resolved conflicts?
  
* Did your design choices support easily adding a new configuration?

* Did your design choices support changes in the layout of the configuration?
  
### Reading


### Further Exercise

Within the short time allotted to the exercise it was likely that you were
barely able to prove that your system was __exandable__ or __flexible__. With
this additional time finish your initial implementation and then:

* Choose an additional configuration input source

* Change one of your additional configuration sources slightly, requiring you
  to change how you parse the input.
  
* Provide the ability to support but the origin configuration source and this
  new modified configuration source (this may be a configuration difference).