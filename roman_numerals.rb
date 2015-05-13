def roman_numerals(number)
  numeral = ""
  numerals = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  numerals.each do |amount, letter|
    while number % amount != number
      numeral += letter
      number -= amount
    end
  end

  puts numeral
end

roman_numerals(1)
roman_numerals(4)
roman_numerals(9)
roman_numerals(49)
roman_numerals(2490)
