require "bigdecimal"


#only accura up to a few digits.
def pi
  three = BigDecimal.new("3")
  big_num = BigDecimal.new("640320")

  n = (0..200).reduce(0) do |num, k|
    num += numerator(k) / denominator(k)
  end

  n *= 12
  n /= (big_num ** (three / 2))
  n = n / n / n
end

def numerator(num)
  new = BigDecimal.new("1")
  new *= (1..(6 * num)).reduce(:*) if num != 0
  new *= 13591409 + (545140134 * num)
end

def denominator(num)
  div = BigDecimal.new("1")

  if num != 0
    div *= (1..(3 * num)).reduce(:*)
    div *= ((1..num).reduce(:*) ** 3)
  end
  div *= (-640320) ** (3 * num)
end

def other_pi
  pi = 3
  four = BigDecimal("4")

  (10**9).times do |n|
    n *= 4
    pi += four / ((2 + n) * (3 + n) * (4 + n))
    pi -= four / ((4 + n) * (5 + n) * (6 + n))
  end

  pi
end

time = Time.now
puts moo = other_pi
puts moo.to_s.length
puts "#{(Time.now - time).round(1)} seconds"
