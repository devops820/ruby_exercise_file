# Classes   
A template for a state & behaviour of objects created from it. [ Attributes=>State, Behaviour=>Methods ]
Capitalize and CamelCase
Each class in a seperate file
Group class files in a directory
Classes can be redefined and modified (not true in all programming languages)

# Instances
.new will create an instance of the class. You can implement the same when defining custom classes.
Instance of a class has always access to instance variables (@variable)

# Attribute Methods
Attribute methods are called attr_* methods.
- attr_reader
- attr_writer
- attr_accessor

# Method Access Controls
Methods are primary interface to a class.
Only expose interfaces when necessary.
Access control restricts access to methods from outside an instance
- public
- protected: can only be called by the instance of the class and its subclasses
- private: can only be called by instances of a class
Allow access to methods only when it is absolutely necessary

# Challenge Question
Model a set of dice
A Diceset instance contains 2 Dice (or Die) instances.
Diceset#roll should roll both Dice.
Diceset#display should display the values of both Dice.