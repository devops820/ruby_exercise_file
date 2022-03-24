

class ShiftCipher
    @@upcase=[*'a'..'z']
    @@downcase=[*'A'..'Z']

    def self.encode(plain_text,key)
        plain_text.split('').inject('') do |memo,char|
            case
            when @@upcase.include?(char)
                memo << @@upcase[(@@upcase.find_index(char)+key)%26]
            when @@downcase.include?(char)
                memo << @@downcase[(@@downcase.find_index(char)+key)%26]
            else
                memo << char
            end
        end
    end

    # alternate solution with map.
    # plain_text.chars.map do |char|
    #     case
    #     when @@upcase.include?(char)
    #         @@upcase[(@@upcase.find_index(char)+key)%26]
    #     when @@downcase.include?(char)
    #         @@downcase[(@@downcase.find_index(char)+key)%26]
    #     else
    #         char
    #     end.join('')
    # end

    def self.decode(cipher_text,key)
        cipher_text.split('').inject('') do |memo,char|
            case
            when @@upcase.include?(char)
                memo << @@upcase[(@@upcase.find_index(char)-key)%26]
            when @@downcase.include?(char)
                memo << @@downcase[(@@downcase.find_index(char)-key)%26]
            else
                memo << char
            end
        end
    end

end