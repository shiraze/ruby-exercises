def caesar_cipher(string, shift)
    shift %= 26
    string.codepoints.map do |char|
             
          #65 - 90 A-Z
          #97 - 122 a-z
          if char.between?(65,90) 
            new_char = char + shift
            new_char-=26 if new_char > 90
            new_char+=26 if new_char < 65
            new_char.chr 
         elsif char.between?(97,122)
            new_char = char + shift
            new_char-=26 if new_char > 122
            new_char+=26 if new_char < 97
            new_char.chr 
          else
            char.chr
          end

       end.join
  end
  
  puts caesar_cipher("What a string!", 1000)