class Medication < ActiveRecord::Base
  belongs_to :patient

  validates :name, :presence => {:message => 'Name cannot be blank, form not submitted'}
  validates :description, :presence => {:message => 'Description cannot be blank, form not submitted'}
end
