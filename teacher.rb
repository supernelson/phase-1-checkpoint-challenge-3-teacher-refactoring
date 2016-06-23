require_relative 'faculty'
require_relative 'high_five'

class Teacher < Faculty
  RATING = 90
  TARGET_RAISE = 1000
  # SEBA why doesn't this need super?
  attr_reader :performance_rating

  include HighFive

  def teach_stuff
    # SEBA how to do this in even more detail?
    super + ", fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  end
end
