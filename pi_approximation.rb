# In 1910, the mathematician Srinivasa Ramanujan found several rapidly
# converging infinite series that can be used to generate a numerical
# approximation of pi. His series are now the basis for the fastest
# algorithms currently used to calculate π.

# Below is an implementation in Ruby of a function called estimate_pi
# that uses his formula to compute and return an estimate of pi
# (an exercise from Chapter 7 of Think Python by Allen Downey).
# Author: Elizabeth Tenorio

def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end

def  factor
  2 * Math.sqrt(2) / 9801
end

def numerator(k)
  (factorial(4 * k).to_f * (1103 + 26390 * k).to_f)
end

def denominator(k)
  (factorial(k).to_f ** 4) * 396 ** (4 * k).to_f
end

def estimate_pi
  total = 0
  k = 0
  term = 1

  while term > 1E-15
    term = factor.to_f * (numerator(k).to_f/denominator(k).to_f)
    total += term
    k += 1
  end
  display_pi( k, 1 / total )
end

def display_pi(k, answer)
  puts "Finished at iteration number #{k}"
  puts "The estimated value of pi according to Ramanujan is #{answer}"
end

puts estimate_pi
# Expected output:
# Finished at iteration number 3
# The estimated value of pi according to Ramanujan is 3.141592653589793