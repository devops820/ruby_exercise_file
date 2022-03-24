module ContactInfo
    attr_accessor :city, :state, :zip

    def city_state_zip
        "#{city} #{state} #{zip}"
    end
end