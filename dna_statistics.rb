# A program to display the statistics related to a given DNA sequence
# Author: Elizabeth Tenorio

require 'pry'

class Dna
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end


  def count_char
    hash = {}
    sequence.each_char do | char |
      hash[char] ? hash[char] << char : hash[char] = [char]
    end

    hash.each do | key, value |
      hash[key] = value.size.to_i
    end

    hash.sort
  end


  def total_char
    sequence.length
  end


  def analyze
    statistics = []
    count_char.each do | item |
      statistics << [item[0], (item[1].to_f / total_char)]
    end

    return statistics
  end


  def display
    output = ''
    output << "DNA statistics (#{total_char} residue sequence)"

    analyze.each do | item |
      output << " #{item[0].upcase}: #{(item[1]*100).round(1)}%"
    end

    return output
  end
end

# Expected Output:
# DNA statistics (52 residue sequence) A: 13.5% C: 34.6% G: 21.2% T: 30.8%
puts Dna.new('aaggccctttacgtgcccttgccctttacgttacgtaccgggccctttacgt').display


