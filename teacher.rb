require_relative 'faculty'
require_relative 'high_five'

class Teacher < Faculty
  RATING = 90
  TARGET_RAISE = 1000
  # SEBA why doesn't this need super?
  attr_reader :performance_rating

  include HighFive

  def teach_stuff
    response = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
    super + ", fo SHO! " +
  end

end
