## --> This code doesn't use the name Parent, since there is not a
## parent-child is-a relationship.
## This is a has-a relationship, where Child has-a Other that it uses
## to get its work done.

class Other
    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class Child
    def initialize()
        @other = Other.new() ## Create new instance of Other class
    end

    def implicit()
        @other.implicit() ## Call implicit method with instance of Other
    end

    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "CHILD, BEFORE OTHER altered()"
        @other.altered()
        puts "CHILD, AFTER OTHER altered()"
    end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
