# A program to display the statistics related to a given DNA sequence
# Author: Elizabeth Tenorio

require 'rspec'

require_relative 'dna_statistics'

describe 'Dna statistics' do
  it 'counts the total nucleotides in the string nggaatncc' do
    expect(Dna.new('agccttaa').total_char).to eql(8)
  end

  it 'counts the frequency of nucleotides in the string agccttaa' do
    expect(Dna.new('agccttaa').count_char).to eql([["a", 3], ["c", 2], ["g", 1], ["t", 2]])
  end

  it 'counts the frequency of nucleotides in the string nggaatncc' do
    expect(Dna.new('nggaatncc').count_char).to eql([["a", 2], ["c", 2], ["g", 2], ["n", 2], ["t", 1]])
  end

  it 'analyzes the dna composition' do
    expect(Dna.new('aaggcccttt').analyze).to eql([["a", 0.2], ["c", 0.3], ["g", 0.2], ["t", 0.3]])
  end

  it 'displays the percentage of nucleotides in the dna sequence' do
    expect(Dna.new('aaggcccttt').display).to eql("DNA statistics (10 residue sequence) A: 20.0% C: 30.0% G: 20.0% T: 30.0%")
  end
end