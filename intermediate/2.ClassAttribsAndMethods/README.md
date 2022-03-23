# Class Attributes & Methods


## Methods

We learnt about a class, instance attributes and methods.

Class methods are relating to class, and they are called on class not on instances.

For example:- `Animal.new` is a class method.

`Invoice.find(1233)` => to find information from a database.

`Bicycle.all_brands` => to give some general information, all_brands method must be classified as a class method.

In ruby, you put `self.method_name` to define a class method.

```
def someClass
    # some_method is a class method.
    def self.some_method
    end
end
```

Differentiate between class methods and instance methods.
Whenever you are invoking class methods you use '.' notation. For example:- Array.new

Whenever you have an instance method, you use '#' sign:- Array#size


## Class Attributes

Shared values among all instances of the class.
Used less frequently than methods
class variables have @@ infront of them


## Class Reader/Writer Methods

class reader/writer methods are similar to instance reader/writer methods
there are no equivalent attr_* methods 
ruby on rails has cattr_* methods, but ruby does not (yet).

But nothing stops you from defining your own class reader/writer methods.