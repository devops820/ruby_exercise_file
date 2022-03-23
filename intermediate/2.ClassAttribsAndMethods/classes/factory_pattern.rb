class Product
    attr_accessor :name, :price

    def initialize(price=0.0)
        @price=price
    end

    # induces factory pattern !
    def self.exclusive
        Product.new(45.0)
    end

    def self.standard
        Product.new(30.0)
    end

    def self.discounted
        Product.new(15.0)
    end

    def self.categories
        ['Art','Book','Poster']
    end

    def self.soldout
        Database.query("products", "qty=0")
    end

end

ring=Product.exclusive
puts sprintf('$%.2f', ring.price)

soldout_array=Product.soldout
Product.categories do |category|
    puts category
end

