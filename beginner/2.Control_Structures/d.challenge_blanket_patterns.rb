colors="++*~~*++*"
puts colors
20.times do 
    colors_arr=colors.split('')
    first_char=colors_arr.shift
    colors_arr.push(first_char)
    colors=colors_arr.join('')
    puts colors
end