class Audition < ActiveRecord::Base
  belongs_to :role
## Audition#role returns an instance of role associated with this audition
  # def role
  #   role_id = self.role_id
  #   Role.find(role_id)
  #   Role.find_by(id: role_id)
  # end

  
  ##Audition#call_back will change the the hired attribute to true
  def call_back
    self.update(hired: true)
  end
end
