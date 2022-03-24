class Chef
    def make_dinner
        puts "Cook food."
    end
end

class AmateurChef < Chef
    def make_dinner
        puts "Read recipe."
        super
        puts "Clean up mess."
    end
end