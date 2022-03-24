# Exceptions

Classes for handling exceptional events

``` (handling exceptions inside the method)
def divide(x,y)

    # code which could result in an exceptional event

    x/y

rescue

    # code for handling the exceptional event

    puts "Exception raised, but handled"

end

```

``` (handling exceptions outside the method)
def divide(x,y)
    x/y
end

begin
    # code which could result in an exceptional event

    divide(4,0)

rescue

    # code for handling the exceptional event

    puts "Exception raised, but handled"

end

```