require 'active_record'
require 'yaml'
require 'logger'

database_configuration_file = File.join(File.dirname(__FILE__),'..','database.yml')

#
# Loads up the database connection information in a Hash. 
#
database_configuration = YAML::load(File.open(database_configuration_file))
  
ActiveRecord::Base.establish_connection database_configuration

#
# Log the database operations to a file to make it easier to troublehsoot what is taking place.
#
ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'a'))


#
# All ActiveRecord 'Model' classes extend from ActiveRecord::Base.
#
# This is so they can inherit all the connection information that is established
# in ActiveRecord::Base.
#
class Configuration < ActiveRecord::Base

end

# Configuration.create!(:environment => 'development', :hostname => 'http://localhost:9999', :title => 'Local Sqlite Config')
# Configuration.create!(:environment => 'production', :hostname => 'http://database-config.heroku.com', :title => 'Database Powered Configuration')

Configuration.all.each do |config|
  puts config.environment
  puts config.title
  puts config.hostname
end