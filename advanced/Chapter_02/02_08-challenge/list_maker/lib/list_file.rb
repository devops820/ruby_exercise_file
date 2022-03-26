module ListMaker
  class ListFile
    
    @@filename = 'lm_list.txt'
    
    def initialize
      # locate list file in APP_ROOT
      #   confirm that it is readable and writable
      # or create a new file in APP_ROOT
      #   Use File.new/open in write mode
      # if success, return self, otherwise exit program
      if File.exist?(File.join(APP_ROOT,@@filename))
        if ! File.readable?(File.join(APP_ROOT,@@filename)) && ! File.writable?(File.join(APP_ROOT,@@filename))
          abort("File exists but it is not readable and executable!")
        end
      else
          File.open(File.join(APP_ROOT,@@filename),'w') do |file|
          end
      end
    end
    
    def view
      puts "\nView List\n\n".upcase
      # Read from list file
      # Use File.new/open in read mode
      # add numbers next to list items
      File.open(File.join(APP_ROOT,@@filename),'r') do |file|
        while line=file.gets 
          puts "#{file.lineno}. #{line.chomp}"
        end
      end
    end
    
    def add(args=[])
      puts "\nAdd a List Item\n\n".upcase
      # Add item to the end of the list.
      # Use File.new/open in append mode
      puts "Enter the new list item and hit return."
      print "> "
      item=gets.chomp
      File.open(File.join(APP_ROOT,@@filename),'a') do |file|
          file.puts(item)
      end
    end
    
    def edit(args=[])
      puts "\nEdit a List Item\n\n".upcase
      if args.length==0
        puts "Include the number of the item to edit"
        puts "Example: edit 3"
        return
      else 
        position = args.first.to_i
      end
      # get the item position from the args ("edit 3", "edit 7")
      # read list file and make sure that item exists
      #   Use File.readlines
      # return not found message if item does not exist
      # output text of current list item again
      # ask user to type new text
      # write list file with the new updated list
      #   Use File.write
      items=File.readlines(File.join(APP_ROOT,@@filename))
      if position > items.length
        puts "Item Not Found"
        view
      else
        puts "Enter the new text and hit return."
        puts "#{position}. #{items[position-1]}"
        print "> "
        new_item=gets.chomp
        items[position-1]=new_item+"\n"
        data=items.join
        File.write(File.join(APP_ROOT,@@filename),data)
      end
    end
  end
end
