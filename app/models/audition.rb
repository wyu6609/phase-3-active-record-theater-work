class Role < ActiveRecord::Base
  has_many :auditions

  #auditions returns all of the auditions associated with this role
  def auditions
    Audition.where(role_id: self.id)
  end

  #actors returns an array of names from the actors associated with this role
  def actors
    Audition.pluck(:actor)
  end

  #locations returns an array of locations from the auditions associated with this role
  def locations
    Audition.pluck(:location)
  end

  #lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
  def lead
    Audition.find_by(hired: true).first || 'no actor has been hired for this role'
  end

  #understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
  def understudy
    Audition.where(hired: true).second || 'no actor has been hired for this role'
end
 end
end
