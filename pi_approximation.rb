# In 1910, the mathematician Srinivasa Ramanujan found several rapidly
# converging infinite series that can be used to generate a numerical
# approximation of pi. His series are now the basis for the fastest
# algorithms currently used to calculate π.

# Below is an implementation in Ruby of a function called estimate_pi
# that uses his formula to compute and return an estimate of pi
# (an exercise from Chapter 7 of Think Python by Allen Downey).

def factorial(n)
  if n == 0
    1
  else
    result = n * factorial(n-1)
  end
end

def estimate_pi
  total = 0
  k = 0
  factor = 2 * Math.sqrt(2) / 9801
  term = 1

  while term > 1E-15
    numerator = (factorial(4*k).to_f * (1103 + 26390 * k).to_f)
    denominator = (factorial(k).to_f**4) * 396**(4*k).to_f
    term = factor.to_f * (numerator.to_f/denominator.to_f)
    total += term
    k += 1

    if term < 1E-15
      puts "Finished at iteration number #{k}"
      break
    end

  end
  print "The estimated value of pi according to Ramanujan is "
  return 1 / total
end

puts estimate_pi()
