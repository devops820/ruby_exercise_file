class Radio
    # instance attributes
    attr_reader :volume, :freq, :band
    # class attributes
    @@fm_frequencies=88.0..108.0
    @@am_frequencies=540.0..1600.0
    @@default_fm_frequency=95.5
    @@default_am_frequency=1010.0

    def initialize(options={})
        @band=options[:band]||'FM'
        # setting a default frequency
        @freq=default_freq
        # setting a default volume
        @volume=5
    end

    # class method
    def self.am
        Radio.new(band: 'AM')
    end

    # class method
    def self.fm
        Radio.new(band: 'FM')
    end

    # instance attribute setter methods
    # user input sanitization
    def freq=(value)
        value = value.to_f
        value = default_freq unless allowed_frequencies.include?(value)
        @freq= value.to_f
    end

    # instance attribute setter methods
    def volume=(value)
        return if value<1 || value>50
        @volume=value
    end

    # instance method
    def status
        "station: #{@freq} #{@band}, volume: #{@volume}"
    end

    def switch_band
        
    end

private

    def default_freq
        @band=='FM' ? @@default_fm_frequency : @@default_am_frequency
    end

    def allowed_frequencies
        @band=='FM' ? @@fm_frequencies : @@am_frequencies
    end

end