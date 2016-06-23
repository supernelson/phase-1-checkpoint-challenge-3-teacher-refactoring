require_relative 'high_five'
require_relative 'entire_school'

class Student < EntireSchool

  def initialize(options = {})
    super
    @phase = 1
  end

  include HighFive

  def set_phase(num)
    response = ""
    if num == @phase
      response = "I'm doing phase #{@phase} again because I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = "WHOA! I've never thought of it quite like that before. Now I feel like a genius!"
  end
end
