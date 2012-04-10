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

    > Configuration: `fixtures/configuration.yml`
    >
    > Example      : `lib/yml.rb`

2. YML (User specific)

    > Configuration: `fixtures/user-configuration.yml`
    >
    > Example      : `lib/yml.rb`
    
3. Command-Line Parameters

    > Commands: `fixtures/command-parameters.md`
    >
    > Example : `lib/command.rb`
    
4. Environment Variables

    > Commands: `fixtures/environment-parameters.md`
    >
    > Example : `lib/environment.rb`
    
5. JSON

    > Configuration: `fixtures/configuration.json`
    >
    > Example      : `lib/json.rb`

6. XML

    > Configuration:`fixtures/configuration.xml`
    >
    > Example      : `lib/xml.rb`
    
7. Database

    > Example      : `lib/database.rb`
    
8. Webservice

    > Run `ruby lib/sinatra.rb` to start the service.
    >
    > Visit __localhost:4567/configuration.json__
    >
    > Visit __localhost:4567/configuration.xml__
    >
    > Visit __localhost:4567/configuration.yml__
    
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


Similar to the exploration of `Rake` and `ActiveSupport` in the previous
reading. Examining and exploring code is the most fruitful way to learn to be a
better developer. There are a number of libraries that you have likely employed
that provides a flexible configuration system. Explore these frameworks. Attempt
to answer the retrospective questions.

Each of the sections I have tried to outline a good starting point of where to
being your examination. With all of these frameworks the accompanying tests are 
also great places as well.

* [Cucumber](https://github.com/cucumber/cucumber)

    > Cucumber employs a system of default options, command-line options, 
    > and user profiles.
    >
    > [cucumber/lib/cucumber/cli](https://github.com/cucumber/cucumber/tree/master/lib/cucumber/cli)


* [RSpec](https://github.com/rspec/rspec-core)

    > RSpec uses a local config file, global config file, command-line options 
    > and then to top it off provides the ability to further augment 
    > configuration through a [block-based configuration system](https://www.relishapp.com/rspec/rspec-core/v/2-9/docs/configuration/custom-settings).
    >
    > Start with the  [Runner](https://github.com/rspec/rspec-core/blob/master/lib/rspec/core/runner.rb) class
    >
    > Then look at [ConfigurationOptions](https://github.com/rspec/rspec-core/blob/master/lib/rspec/core/configuration_options.rb)
    >

* [Rails](https://github.com/rails/rails)

  > Rails is a large beast, so do not get lost and do not wander too far. Here
  > the object is simply to understand initially how Rails starts up.
  >
  > Start with the 
  > [bin](https://github.com/rails/rails/blob/master/railties/bin/rails)
  >
  > That should lead you to the
  > [cli](https://github.com/rails/rails/blob/master/railties/lib/rails/cli.rb)
  >
  >
  > What does the `.railsrc` do for your Rails?
  > 
  > Take a look at
  > [script_rails_loader](https://github.com/rails/rails/blob/master/railties/lib/rails/script_rails_loader.rb)
  >
  > What happens in this command when you execute it within a rails application?
  > 
  > Then to the various
  > [commands](https://github.com/rails/rails/tree/master/railties/lib/rails/commands)
  > 

### Further Exercise

Within the short time allotted to the exercise it was likely that you were
barely able to prove that your system was __exandable__ or __flexible__. With
this additional time finish your initial implementation and then:

* Choose an additional configuration input source

* Change one of your additional configuration sources slightly, requiring you
  to change how you parse the input.
  
* Provide the ability to support but the origin configuration source and this
  new modified configuration source (this may be a configuration difference).
  
* Copy a configuration feature from Cucumber or RSpec