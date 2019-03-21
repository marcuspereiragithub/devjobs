class Job < ApplicationRecord
  def first_letter
    return '#' unless name?

    name[0].upcase
  end
end

