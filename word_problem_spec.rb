# A program that interprets a simple word problem and calculates the answer
# An exercise in Test-Driven Development
# Author: Elizabeth Tenorio

require 'rspec'

require_relative 'word_problem'

describe WordProblemAnswerer do
  it 'subtracts two numbers when the phrase contains the word minus' do
    expect(WordProblemAnswerer.new('What is 7 minus 2?').answer).to eql(5)
  end

  it 'adds two numbers when the phrase contains the word plus' do
    expect(WordProblemAnswerer.new('What is 4 plus 3?').answer).to eql(7)
  end

  it 'adds two negative numbers when the phrase contains the word plus' do
    expect(WordProblemAnswerer.new('What is -4 plus -3?').answer).to eql(-7)
  end

  it 'multiplies two numbers when the phrase contains the word times' do
    expect(WordProblemAnswerer.new('What is 4 times 3?').answer).to eql(12)
  end

  it 'divides two numbers when the phrase contains the words divided by' do
    expect(WordProblemAnswerer.new('What is 15 divided by 3?').answer).to eql(5.0)
  end
end