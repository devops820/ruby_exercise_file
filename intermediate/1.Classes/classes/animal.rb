class Animal6

    attr_accessor :noise

    def initialize(options={})
        @noise=options[:sound] || 'Gurrrr!'
        puts "New animal instantiated"
    end

end

class Animal5

    attr_accessor :noise

    def initialize
        @noise='Gurrrr!!'
        puts "New animal instantiated"
    end

end

class Animal4
    attr_accessor :noise, :color
end

class Animal3
    # demonstrating ruby's syntatic-sugar
    
    # writer methods
    def noise=(value)
        @noise=value
    end
    # same as attr_writer :noise

    # reader methods
    def noise
        @noise
    end
    # same as attr_reader :noise

    # attr_accessor: noise (when you want to use reader/writer methods together)

end


class Animal2
    # traditional ways of doing things
    def set_noise(value)
        @noise=value
    end

    def get_noise
        @noise
    end

end

class Animal1

    def make_noise
        @noise
    end 

    def set_noise
        @noise='Oink1!'
    end

end