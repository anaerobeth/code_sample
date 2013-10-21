class WordProblemAnswerer

  attr_accessor :phrase, :first_number, :second_number, :operation

  def initialize(phrase)
    @phrase = phrase
  end

  def answer
    phrase.slice!("What is ").slice!("?")

    if phrase.include?('divided')
      first_number, operation, filler, second_number = phrase.split(' ')
    else
      first_number, operation, second_number = phrase.split(' ')
    end
    compute(first_number, operation, second_number)
  end

  def compute(first_number, operation, second_number)
    case
    when operation == 'minus'
      return first_number.to_i - second_number.to_i
    when operation == 'plus'
      return first_number.to_i + second_number.to_i
    when operation == 'times'
      return first_number.to_i * second_number.to_i
    when operation == 'divided'
      if second_number != 0
        return first_number.to_f / second_number.to_f
      else
        puts "Undefined"
      end
    end
  end
end

problem = WordProblemAnswerer.new("What is 7 minus 5?")
puts problem.phrase
puts problem.answer

problem = WordProblemAnswerer.new("What is 15 divided by 5?")
puts problem.phrase
puts problem.answer