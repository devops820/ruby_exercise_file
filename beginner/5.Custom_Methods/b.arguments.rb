#!/usr/bin/env ruby
# required arguments always come first, optional arguments come later.
def out_of_stock(items=[])
    items.find_all {|item| item.qty==0}
end

def fight!(weapon=nil)
    if weapon
        fight_using_weapon(weapon)
    else
        fight_using_hands
    end
end

def welcome(greeting, options={})
    name=options[:name] || 'friend'
    punct=options[:punct] || '!'
    greeting + ' ' + name + punct
end

puts welcome('Ola',{:punct => '!!!'})

def subtract(n1,n2)
    result=n1-n2
    result=0 if result < 0 # returns nil if result > 0
    result # be explicit here as you ruby will return the value of the last executed statement.
end

# don't use puts/print in most methods
# methods that return only values are more flexible
# Exception: methods designed strictly for output
def longest_word(words=[])
    longest=words.inject do |memo,word|
        memo.length > word.length ? memo : word
    end
end

puts longest_word(['apple','banana','pear'])

# return multiple values
# method can return only one value
# use a array or a hash to return multiple values