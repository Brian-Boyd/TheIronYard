class Doctor < ActiveRecord::Base
  belongs_to :curable, polymorphic: true

  validates :name, :presence => {:message => 'Name cannot be blank, form not submitted'}
  
end