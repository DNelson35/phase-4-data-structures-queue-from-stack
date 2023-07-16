require_relative './stack'

class MyQueue 
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end
    
    def add(value)
        @s2.push(@s1.pop) until @s1.empty?
        
        @s1.push(value)

        @s1.push(@s2.pop) until @s2.empty?
    end

    def remove 
        @s1.pop
    end

    def peek
        @s1.peek
    end
end
