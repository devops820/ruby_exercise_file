class Animal

    attr_accessor :noise, :color
    @@species=['cat','cow','pig','duck','horse']
    @@total_animals=0
    @@current_animals=[]

    def initialize(options={})
        @noise=options[:sound] || 'Gurrrr!'
        @color=options[:color]
        puts "New animal instantiated"
        @@total_animals+=1
        # class attribute current animals keep track of all instances of animal which is created
        @@current_animals<<self
    end

    # example of a class attributes reader methods
    def self.species
        @@species
    end

    # example of a class attributes writer methods
    def self.species=(array)
        return unless array.is_a?(Array)
        @@species=array
    end

    def self.class_attribs
        [@@total_animals,@@current_animals]
    end

    # example of a factory pattern
    def self.create_a_pig
        Animal.new({sound: 'Oink',color:'Pink'})
    end

end