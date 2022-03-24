class Animal
    attr_accessor :noise
end

class Pig < Animal
    def initialize
        @noise='Oink!'
    end
end

class Pig < Animal
    def initialize
        @noise='Moo!'
    end

    # extending the animal class
    def eat
        puts "Nom Nom Nom!!"
    end
end