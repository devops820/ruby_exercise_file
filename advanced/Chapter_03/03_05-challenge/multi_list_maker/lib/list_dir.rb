module ListMaker
  class ListDir
    
    @@dirname = 'lm_lists'

    def self.dirname
      @@dirname
    end
    
    attr_reader :files
    
    def initialize
      # Find directory or create if it doesn't exist
      # locate list directory in APP_ROOT
      #   confirm that it is readable and writable
      # or create a new directory in APP_ROOT
      #   Use Dir.mkdir
      # Refresh cached files
      # if success, return self, otherwise exit program
      if Dir.empty?(File.join(APP_ROOT,@@dirname)) 
        Dir.mkdir(File.join(APP_ROOT,@@dirname))
        refresh_cached_files
      end
      self
    end
    
    def choose_list
      # Display list of files with numbers
      # Ask user to choose a number
      # User can also type 'add' to add a new list
      # Default to first file if user data is invalid
      # Return filename so it can be loaded by ListFile
      refresh_cached_files
      list
      puts "Choose a file"
      response=gets.chomp
      if response == 'add'
        puts "please provide a new file name"
        file_name=add
        return file_name
      else
        return @files[response.to_i-1]
      end
    end
    
    def list
      puts "-" * 60
      @files.each_with_index do |filename, i|
        puts "#{i+1}: #{filename}"
      end
      puts "-" * 60
    end
    
    def add
      # Ask user to provide a new file name and create it
      puts "Enter the filename you would like to use."
      puts "Names should be lowercase with underscores."
      puts "Example: grocery_list.txt"
      print "> "
      file_name=gets.chomp
      until File.extname(file_name) == ".txt" do
        puts File.extname(file_name)
        puts "File name must end with .txt"
        print "> "
        file_name=gets.chomp
      end
      puts File.join(APP_ROOT,@@dirname,file_name)
      File.open(File.join(APP_ROOT,@@dirname,file_name), 'w')
      refresh_cached_files
      return @files.last
      # Ensure file name ends in '.txt'
      # Create new file
      # Refresh cached files (or add filename to @files)
      # Return filename so it can be loaded by ListFile
    end
    
    def refresh_cached_files
      # Store the list of the files in this directory in @files
      # Use Dir.entries or Dir.glob
      # Be sure not to include "." files or directories
      # Only return filenames, not absolute or relative paths
      Dir.chdir(File.join(APP_ROOT,@@dirname))
      @files=Dir.glob('*')
    end
    
  end
end
