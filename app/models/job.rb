class Job < ApplicationRecord
  validates_presence_of :name, message: "'Nome da empresa' não pode ficar em branco"
  validates_presence_of :title, message: "'Título da vaga' não pode ficar em branco"
  validates_presence_of :location, message: "'Local' não pode ficar em branco"
  validates_presence_of :description, message: "'Descrição da vaga' não pode ficar em branco"
  
  def first_letter
    return '#' unless name?

    name[0].upcase
  end
end

