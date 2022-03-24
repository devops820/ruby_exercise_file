# Modules

- Modules are wrappers around ruby code
- Cannot be instantiated

## Namespaces and Mixins

- Namespaces prevents conflicts when code has similarly named classes and methods
- Prevents conflicts with your own code
- Frequently used to namespace classes in open-source plugins

An example:-
```
# MakeSparks: online dating website
module MakeSparks
    class Date
    # ..
    end
end

dinner=MakeSparks::Date.new
dinner.date=Date.new
```

## Mixins

- Ruby only allows subclasses to inherit from one superclass
- Modules allow us to package up shared functionality
- Modules can then be mixed into (mixins) the class without having to inherit.

```
class Person

    attr_accessor :first_name, :last_name
    attr_accessor :city, :state, :zip

  def full_name
    "#{first_name} #{last_name}"
  end

  def city_state_zip
    "#{city} #{state} #{zip}"
  end
end


class Supplier
end

class Customer
end
```

Now, convert it like this by extracting the shared functionality, which is full_name

```
module Nameable
    attr_accessor :first_name, :last_name
    
    def full_name
        "#{first_name} #{last_name}"
    end

end

module ContactInfo
    attr_accessor :city, :state, :zip

    def city_state_zip
        "#{city} #{state} #{zip}"
    end


class Person
    include Nameable
    include ContactInfo
end

class Supplier
    include Nameable
end

class Customer
    include Nameable
end

```

Class Inheritance vs Mixins ?

A class needs to modify or extend the behaviour of another class.

Mixins

If there are several classes that need to utilize a single set of behaviours.

## Load, Require and Include

- loads a sourcefile every time it is called. returns true if the file is loaded successfully.
- require loads a sourcefile only once.
- include is very different as it includes modules into classes.

examples

```
require 'date' # from the std lib of ruby (expects name of a file in $LOAD_PATH or full path to a file)

irb(main):002:0> require 'date'
=> true
irb(main):003:0> require 'date'
=> false (didn't load the second time, hence when using require_relative, you will have to re-instate irb)
irb(main):004:0> 

require '/Users/bsmith/project/classes/customer' # full path to a file, load only once.

require_relative 'modules/addressable' # relative path, and not the abs path

# include 
class Customer
    include Addressable
end

```

## Operator Overloading

Ruby permits operator overloading, allowing one to define how an operator shall be used in a particular program. For example a ‘+’ operator can be define in such a way to perform subtraction instead addition and vice versa. The operators that can be overloaded are +, -, /, *, **, %, etc and some operators that can not be overloaded are &, &&, |, ||, (), {}, ~, etc.

Operator functions are same as normal functions. The only differences are, name of an operator function is always symbol of operator followed operator object. Operator functions are called when the corresponding operator is used. Operator overloading is not commutative that means that 3 + a is not same as a + 3. When someone tries to run 3 + a, it will fail.
Below is the example of Ruby Operator overloading.