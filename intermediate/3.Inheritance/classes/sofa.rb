class Sofa
    @@can_open=false
    attr_accessor :width, :length

    def area
        width*length
    end
end

class Sofabed < Sofa
    # overriding the class attribute
    @can_open=true
    # Extension:- extended the sofa class with attribute accessors as attribute methods exist
    # for the instances of sofabed and not for sofa.
    attr_accessor :length_opened, :is_open

    # the area method is re-defined/over-ridden
    def area
        is_open ? width*length_opened : width*length

end