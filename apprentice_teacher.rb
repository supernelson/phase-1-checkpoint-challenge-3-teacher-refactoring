require_relative 'faculty'
require_relative 'high_five'

class ApprenticeTeacher < Faculty
  RATING = 80
  TARGET_RAISE = 800

  include HighFive

  def teach_stuff
    super
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response  += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
