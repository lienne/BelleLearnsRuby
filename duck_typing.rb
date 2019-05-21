## If an object walks like a duck and talks like a duck, then the Ruby
## interpreter is happy to treat it as if it were a duck.
##
## if an object quacks like a duck (or acts like a string), just go ahead
## and treat it as a duck (or a string). Whenever possible, you should treat
## objects according to the methods they define rather than the classes from
## which they inherit or the modules they include.

class Duck
    def quack
        'Quack!'
    end

    def swim
        'Paddle paddle paddle...'
    end
end

class Goose
    def honk
        'Honk!'
    end

    def swim
        'Splash splash splash...'
    end
end

class DuckRecording
    def quack
        play
    end

    def play
        'Quack!'
    end
end

##
## In this code snippet, a method that told a Duck to quack works when given
## a DuckRecording, due to Duck Typing.
def make_it_quack(duck)
    duck.quack
end

puts make_it_quack(Duck.new)
puts make_it_quack(DuckRecording.new)
##


##
## Similarly, a method that tells a Duck to swim, when given a Goose, works.
def make_it_swim(duck)
    duck.swim
end

puts make_it_swim(Duck.new)
puts make_it_swim(Goose.new)
##
