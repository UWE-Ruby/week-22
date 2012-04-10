!SLIDE

# Additional Concepts

!SLIDE

## NilGuard

    @@@ Ruby
    a ||= []

    a || (a = [])

!SLIDE

## Memoization

    @@@ Ruby
    class Configuration
    
      def host
        @config ||= (source_1['hostname'] || source_2['host'])
      end
      
    end
    
!SLIDE

## Multi-line Memoization

    @@@ Ruby
    class Configuration

      def host
        @config ||= begin
        
          # Do some stuff ...
          source_1['hostname'] || source_2['host']
          
        end
      end
  
    end

!SLIDE

## DRY, I don't think so!

    @@@ Ruby
    class Configuration
      
      def host
        @config ||= (source_1['host'] || source_2['host'])
      end
      
      def port
        @config ||= (source_1['port'] || source_2['port'])
      end
      
    end

!SLIDE

## When method calls go missing!

    @@@ Ruby
    class Configuration

      def method_methods(name,args,&block)
        
        source_1[name] || source_2[name]
       
      end

    end
    
!SLIDE

## Lots of possibilities

    @@@ Ruby
    class Configuration

      def method_methods(name,args,&block)
        
        # Becareful, this could be dangerous...
        
        define_method name do
          source_1[name] || source_2[name]
        end
   
      end

    end
