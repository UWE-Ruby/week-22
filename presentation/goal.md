!SLIDE

# Goals

!SLIDE quote

## Two Configurations

YML Configuration

Command-Line Parameters

!SLIDE

## Run your ruby file

    ruby config_script.rb -h paramhost

!SLIDE

## YML Configuration

    @@@ Ruby
    { 'host' => 'ymlhost', 'title' => 'ymltitle' }

##  Command Line Parameters

    @@@ Ruby
    { 'host' => 'paramhost' }

!SLIDE quote

## Example Unified Configuration

    @@@ Ruby
    { 'host' => 'paramhost', 'title' => 'ymltitle' }

!SLIDE quote

## Configuration Object

    @@@ Ruby
    config.host  # => 'paramhost'
    config.title # => 'ymltitle'
