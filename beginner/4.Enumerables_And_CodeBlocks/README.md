# Enumerables

Enumerables are Countable items. In Ruby programming language there is a module called Enumerable.
The methods of enumerable are included into Hash/Array/Ranges classes.

## Code Blocks

Whenever there is a single line of code. Use cruly brackets.
```
5.times {puts "Hello"}
```
When there is a need to write multiple lines of code(multiline blocks), then you can use the de-limiters `do` and `end`
```
5.times do
 # do something here
 # these blocks performs actions or make changes
end
```

### Code Blocks: Block Variables

```
5.downto(1) do |i|
    puts "Countdown: #{i}"
end

5.downto(1) {|i| puts "Countdown: #{i}"}
```

We are not limited to single block variables. The no of block variables depend on the method.
```
scores={low: 2, medium: 5, high:10}
scores.each do |k,v|
    puts "#{k.capitalize}: #{v}"
end
```

code blocks are not limited to iterators.  find/map/inject/sort/merge are some of the powerful methods.
Many ruby methods accept an optional code block. The code block usually modifies the default behaviour.
we can write custom methods that accept code blocks.

