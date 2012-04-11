!SLIDE

# Concepts and Tools

!SLIDE

## YAML

    @@@ Ruby
    require 'YAML'
    
    file_contents = File.read "path/to/configuration.yml"

    YAML::load file_contents

!SLIDE

## Command Line Parameters

`ruby lib/command.rb 2 4 alpha 8`
    
    @@@ Ruby
    ARGV.first  # 2
    ARGV.last   # 8
    ARGV        # [ "2", "4", "alpha", "8" ]

!SLIDE

## OptionParser

    @@@ Ruby
    
    require 'optparse'

    options = {}
    OptionParser.new do |opts|
      opts.banner = "Usage: example.rb [options]"

      opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
        options[:verbose] = v
      end
    end.parse!

    p options
    p ARGV

### rubydoc.info/stdlib/optparse/1.9.2/OptionParser

!SLIDE

## Environment Variables


### Within your terminal

    export WEEK22_HOSTNAME="HOSTNAME"
    export WEEK22_TITLE="TITLE"

### Accessing them within Ruby
    
    @@@ Ruby
    puts ENV['WEEK22_HOSTNAME'] 
    puts ENV['WEEK22_TITLE']


!SLIDE

## JSON

    @@@ Ruby
    require 'json'
   
    JSON.parse file_contents


!SLIDE

## XML

    @@@ Ruby
    require 'nokogiri'

    config_data = Nokogiri::XML(file_contents)
    
    config_data.xpath('environment')

!SLIDE

## Hash#merge

    @@@ Ruby
    a = { :a => :b }
    b = { :a => :c }
    
    c = a.merge b

!SLIDE

## Hash#merge!

    @@@ Ruby
    a = { :a => :b }
    b = { :a => :c }
    
    a.merge! b

!SLIDE

## Merge Question

    @@@ Ruby
    a = { :a => :b, :c => { :d => :e } }
    b = { :c => { :f => :g }}
    
    c = a.merge b

!SLIDE

    @@@ Ruby
    c.should eq(:a => :b, :c => { :d => :e, :f => :g } )  # A
    
    c.should eq(:a => :b, :c => { :f => :g})              # B
    
    warn "Hold on, let me start IRB and type that ..."    # C


!SLIDE

## Hash#`deep_merge`

    @@@ Ruby
    require 'active_support/core_ext'
    
    c = a.deep_merge b
    
    c.should eq(:a => :b, :c => { :d => :e, :f => :g } )

!SLIDE

## Hash with string keys or symbol keys

    @@@ Ruby
    require 'active_support/core_ext'

    HashWithIndifferentAccess
    
### rubydoc.info/github/rails/rails/ActiveSupport

!SLIDE

## OpenStruct

    @@@ Ruby
    require 'ostruct'
    
    a = { :a => :b, :c => :d }
    
    object = OpenStruct.new a
    object.a
    object.c
