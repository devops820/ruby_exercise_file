# use ruby to convert a number into a romal numeral
number_map={
    1=>'I',
    2=>'II',
    3=>'III',
    4=>'IV',
    5=>'V',
    6=>'VI',
    7=>'VII',
    8=>'VIII',
    9=>'IX',
    10=>'X'
}
puts number_map[3]
puts number_map[5]

puts number_map[9] == 'IX'