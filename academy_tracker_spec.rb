# A program to track and display student enrolment
# An exercise in Test-Driven Development
# Author: Elizabeth Tenorio
require 'rspec'

require_relative 'academy_tracker'

describe AcademyTracker do
  it 'lists students by name and session' do
    expect(AcademyTracker.new.accept!('John Daly', 'Winter Session')).to eql({'Winter Session' => ['John Daly']})
  end

  it 'moves students from one session to another' do
    academy = AcademyTracker.new
    academy.accept!('John Daly', 'Winter Session')
    academy.accept!('Meg Whitman', 'Winter Session')
    academy.accept!('Jill Ackman', 'Spring Session')
    expect(academy.move!('John Daly', 'Spring Session')).to eql({"Winter Session"=>["Meg Whitman"], "Spring Session"=>["Jill Ackman", "John Daly"]})
  end
end