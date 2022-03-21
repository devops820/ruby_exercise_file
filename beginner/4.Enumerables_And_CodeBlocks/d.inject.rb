#!/usr/bin/env ruby
# inject/reduce
# inject method has an accumalator value

# sum-up
puts (1..5).inject {|memo,n| memo+n}

# compute multiplication
puts [*1..5].inject {|memo,n| memo*n}

# inject return values matter
# use this as a  starting value
y=(1..15).inject(0) do |memo,n|
    # the return value is computed each time
    if n%5 == 0
        memo + n
    else
        memo
    end
end
puts y

# inject is not just for math
# total length of all strings added together
fruits=['apple','banana','pear','pineapple']
size=fruits.inject(0) do |memo,fruit|
    memo + fruit.length
end
puts size

longest=fruits.inject do |memo,fruit|
    if memo.length > fruit.length
        memo
    else
        fruit
    end
end
puts longest

mash=fruits.inject('') do |memo,fruit|
    memo<<fruit[0]
end
puts mash   