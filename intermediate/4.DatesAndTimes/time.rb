irb(main):009:0> t=Time.now
=> 2022-03-24 15:03:38 +0530
irb(main):010:0> t+60*60*24
=> 2022-03-25 15:03:38 +0530
irb(main):011:0> Time.now == Time.now
=> false
irb(main):012:0> Time.now.nsec
=> 467113000
irb(main):013:0> t.year
=> 2022
irb(main):014:0> t.day
=> 24
irb(main):015:0> t.month
=> 3
irb(main):016:0> t.yday
=> 83
irb(main):017:0> t.wday
=> 4
irb(main):018:0> t.wednesday?
=> false
irb(main):019:0> t.thursday?
=> true
irb(main):020:0> t.dst?
=> false
irb(main):021:0> t.utc
=> 2022-03-24 09:33:38 UTC
irb(main):022:0> t.utc?
=> true
irb(main):023:0> 