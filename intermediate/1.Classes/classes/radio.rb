class Radio2
    attr_reader :volume

    # define your own method for writer as you need some custom behaviour
    def volume=(value)
        return if value < 1 || value > 10
        @volume=value
    end

    def crank_it_up
        # calls the setter writer method
        # use self to refer the current instance from the code inside the instance
        self.volume=11
    end

    def volume_status
        # now calls the attribute reader method
        "Current volume: #{volume}"
    end

end

class Radio1
    attr_reader :volume

    # define your own method for writer as you need some custom behaviour
    def volume=(value)
        return if value < 1 || value > 10
        @volume=value
    end

    # by passes validation from the setter writer method.
    def crank_it_up
        @volume=11
    end

    # calls the instance variable directly instead of calling the reader method.
    def volume_status
        "Current volume: #{@volume}"
    end

end