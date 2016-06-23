require_relative 'entire_school'

class Faculty < EntireSchool
  attr_reader :salary, :target_raise
  # attr_accessor :name

  def initialize(options={})
    super
    @phase = 3
    # SEBA self vs. self.class
    @target_raise = self.class::TARGET_RAISE
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.class::RATING
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

end
