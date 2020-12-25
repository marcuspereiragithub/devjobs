class Job < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :website
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :location
  validates_presence_of :email
  
  def first_letter
    return '#' unless name?

    name[0].upcase
  end
end

