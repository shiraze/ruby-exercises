# frozen_string_literal: true

def caesar_cipher(string, shift)
  string.codepoints.map do |char|
    if char.between?(65, 90) # 65 - 90 A-Z
      ((char + shift - 65) % 26 + 65).chr
    elsif char.between?(97, 122) # 97 - 122 a-z
      ((char + shift - 97) % 26 + 97).chr
    else
      char.chr
    end
  end.join
end
