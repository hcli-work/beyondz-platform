class AssignmentDefinition < ActiveRecord::Base
  has_many :resources
  has_many :todo_definitions
  has_many :submission_definitions

  def self.next_due
    return AssignmentDefinition.where("assignment_definitions.end_date > ?", Time.now).
      order("end_date ASC").first
  end

end
