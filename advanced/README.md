# working with files

## file pointer

file.pos
file.rewind resets lineno.
file.lineno
file.gets advances lineno.

irb(main):001:0> data=File.read('groceries.txt')
=> "Grocery List\n+ butter\n+ milk\n+ sugar\n"
irb(main):002:0> 

irb(main):014:0> data=lines.join
=> "Grocery List\n+ butter\n+ milk(lowfat)+ sugar\n"
irb(main):015:0> puts data
Grocery List
+ butter
+ milk(lowfat)+ sugar
=> nil
irb(main):016:0> File.write('groceries_updated.txt',data)
=> 44
irb(main):017:0> 

File.rename('oldname.txt','newname.txt')
File.delete('file.txt')

require 'fileutils'

Fileutils.copy('orig.txt','dupe.txt')


Booleans

File.exist?(filepath)
File.file?(filepath)
File.directory?(filepath)
File.directory?(File.dirname(filepath))
File.readable?(filepath)
File.writable?(filepath)
File.executable?(filepath)
File.basename(filepath)
File.size(filepath)
File.extname(filepath)

File.mtime
File.atime
File.ctime