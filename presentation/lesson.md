!SLIDE

# Lesson

!SLIDE

## `deep_merge`

    @@@ Ruby
    require 'active_support/core_ext'
    
    #deep_merge
    
!SLIDE

## `HashWithIndifferentAccess`

!SLIDE

    @@@ Ruby
    
    class Configuration
    
      def host
        @config ||= (source_1['hostname'] || source_2['host])
      end
      
    end
    
!SLIDE

    @@@ Ruby

    class Configuration

      def host
        @config ||= begin
          source_1['hostname'] || source_2['host]
        end
      end
  
    end
    
!SLIDE


    @@@Ruby
    
    class Configuration
    
      def method_methods(name,args,&block)
        
        # given then name look through all the configuration
        
      end
    
    end
    
    
!SLIDE

    @@@Ruby

    class Configuration

      def method_methods(name,args,&block)
    
        # given then name look through all the configuration
        # instead of just returning the value create a method
    
      end

    end
