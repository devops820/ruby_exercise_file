# Ruby Object Types

__Ruby has no primities__. (Fully OO)
In Ruby everything is an object. Everything that is modified/returned is also an object.
An Object is similar to Physical Object.
Objects can also represent abstract ideas. (Membership, A Website Visit - Not concrete things but they are abstract that we can track)
Objects have attributes. Objects are instances of a class.
class is a general type and object is a specific instance of that type.
Objects have behaviours. A parking lot object may refuse space to new cars if it is full.
__Variables are not Objects.__
Once a Variable is assigned an object it behaves just like an object.

__Ruby Convention__: Use lowercase names with '_' (underscores)

__Variable Scope Indicators__
Global   $variable
Class    @@variable
Instance @variable
Local     variable
Block     variable

## Numbers
- Integers
- Floats
Ruby follows PEDMAS (Paranthesis, Exponents, Divisions, Multiplications, Additions and Subtractions)
`.class` is a standard ruby method that we can call on all of our objects to tell us what class does it belongs to.
Method is the way to trigger the behaviour of an object.
`.next` returns the next number
you can call methods on variables and ruby will pass the reference to the object that the variable is referring to.
```
temp = -50
temp.abs
``` 