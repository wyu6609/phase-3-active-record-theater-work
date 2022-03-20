class Role < ActiveRecord::Base
  has_many :auditions

  #returns all of the auditions associated with this role
  def auditions; end

  #returns an array of names from the actors associated with this role
  def actors
    auditions.pluck(:actor)
  end

  #returns an array of locations from the auditions associated with this role
  def locations
    auditions.plck(:location)
  end

  #returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
  def lead
    auditions.find_by(hired: true) || 'no actor has been hired for this role'

    # hired_actor = auditions.find_by(hired: true)
    # if hired_actor
    #   return hired_actor
    # else
    #   return 'no actor hired blah blah blah'
    # end

    # hired_actor ? hired_actor : "fun string"
  end

  #  returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
  def understudy
    auditions.where(hired: true)[1] || 'no actor has been hired for this role'
  end
end
