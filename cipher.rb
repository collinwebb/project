def caesar_cipher(text, amount = 0)
  deciphered = ""
  
  text.each_char do |char|
    num = char.ord
    num += amount
    num -= 26 if num > 122
    new_char = num.chr

    deciphered << new_char
  end

  deciphered
end

def skull_cipher(text, word = "skull", deciphered = "", count = 0, idx = 0)
  return deciphered if idx >= text.length
  count = 0 if count > word.length - 1
  num = word[count].ord - 97
  char = text[idx]

  deciphered << caesar_cipher(char, num)

  skull_cipher(text, word, deciphered, count += 1, idx += 1)
end

puts caesar_cipher("vbyjpwoly", 19)
puts skull_cipher("aaaaa")

moo = skull_cipher("klkbnqlcytfysryucocphg")

puts moo
puts caesar_cipher(moo, 24)
#26.times {|num| puts caesar_cipher(skull_cipher("klkbnqlcytfysryucocphg"), num + 1) }
