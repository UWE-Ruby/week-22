# Example Environment Parameters

The following are example environment parameters you should implement if you
choose to use configuration by environment

## WEEK22_HOSTNAME

This is the hostname which could include a hostname and port.

## WEEK22_TITLE

This is the title or name associated with the site# Example Environment Parameters

# Example Usage within Ruby

Setting environment variables for the current terminal session:
    
    export WEEK22_HOSTNAME="HOSTNAME"
    export WEEK22_TITLE="TITLE"

Example of how to access environment variables within a Ruby application

    puts ENV['WEEK22_HOSTNAME'] 
    puts ENV['WEEK22_TITLE']