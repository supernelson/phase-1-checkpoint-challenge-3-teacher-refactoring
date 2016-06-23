require_relative 'faculty'
require_relative 'high_five'

class ApprenticeTeacher < Faculty
  RATING = 80
  TARGET_RAISE = 800

  include HighFive

  def teach_stuff
    response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
