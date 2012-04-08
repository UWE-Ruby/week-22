# Example Command Line Parameters

The following are example command line parameters that you should support if you
choose to use configuration by command-line

## -h [HOST]

This is the hostname which could include a hostname and port.

## -n [NAME/TITLE]

This is the title or name associated with the site

# Example Usage within Ruby

When running the script file all the additional parameters are passed to the
file as arguments which you can query.

    ruby lib/command.rb 2 4 alpha 8
    
You are able to access the arguments within the Ruby script through the use of
the `ARGV` array.

    ARGV.first  # 2
    ARGV.last   # 8
    ARGV        # [ "2", "4", "alpha", "8" ]