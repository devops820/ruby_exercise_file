class TodoList
    # class that mixed in (mixin) the Enumerable module. Array,Hash & Range uses the Enumerable with include.
    include Enumerable
    # To use Enumerable as a mixin, a class must define #each

    attr_reader :items

    def initialize(items=[])
        @items=items
    end

    def each
        @items.each {|item| yield(item)}
    end

    # example of operator overloading
    # https://www.geeksforgeeks.org/operator-overloading-in-ruby/
    def <<(obj)
        @items.prepend(obj)
        # @items.unshift(new_item)
    end

end