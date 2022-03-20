class Audition < ActiveRecord::Base
  belongs_to :role

  #returns an instance of role associated with this audition
  def role
    role_id = self.role_id
    Role.find(role_id)
    Role.find_by(role_id)
  end
  #change the the hired attribute to true
  def call_back
    self.update(hired: true)
  end
end
