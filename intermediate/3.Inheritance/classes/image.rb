class Image
    attr_accessor :resizable

    def geometry
        "800X600"
    end
end

class ProfileImage < Image

    def initialize
        @resizable=true
    end
    
    def geometry
        @resizable ? "100X100" : super
    end

end