require 'pry'
class AcademyTracker

  attr_accessor :name, :session, :roster_hash

  def initialize
    @roster_hash = {}
  end

  def accept!(name, session)
    roster_hash[session] ? roster_hash[session] << name : roster_hash[session] = [name]
    roster_hash
  end

  def roster
    roster_hash
  end

  def move!(name, session)
    roster_hash.each do | key, value |
      if value.include?(name)
        value.delete(name)
      end
    end
    roster_hash[session] ? roster_hash[session] << name : roster_hash[session] = [name]
    roster_hash
  end
end

academy = AcademyTracker.new
academy.accept!('John Daly', 'Winter Session')
academy.accept!('Meg Whitman', 'Winter Session')
academy.accept!('Jill Ackman', 'Spring Session')

puts academy.roster

academy.move!('John Daly', 'Spring Session')

puts academy.roster