class Audition < ActiveRecord::Base
  belongs_to :role

  #role returns an instance of role associated with this audition
  def role
    role_id = self.role_id
    Role.find(role_id)
  end

  #call_back will change the the hired attribute to true
  def call_back
    Audition.update(hired: true)
  end
end
