require 'pry'

class Dna

  attr_reader :sequence, :sorted_array, :statistics, :string

  def initialize(sequence)
    @sequence = sequence
    @sorted_array = []
    @statistics = []
    @string = ''
  end


  def count
    hash = {}
    sequence.each_char do | char |
      hash[char] ? hash[char] << char : hash[char] = [char]
    end

    hash.each do | key, value |
      hash[key] = value.size.to_i
    end

    @sorted_array = hash.sort
    return @sorted_array

  end

  def analyze
    @total_bases = 0
    count
    @sorted_array.each do | item |
      @total_bases += item[1]
    end

    string << "DNA statistics (#{@total_bases} residue sequence)"
    @sorted_array.each do | item |
      @statistics << [item[0], (item[1].to_f / @total_bases)]
    end
    return @statistics
  end

  def display
    analyze
    @statistics.each do | item |
      string << " #{item[0].upcase}: #{(item[1]*100).round(1)}%"
    end
    return string
  end
end


puts Dna.new('aaggccctttacgtgcccttgccctttacgttacgtaccgggccctttacgt').display


