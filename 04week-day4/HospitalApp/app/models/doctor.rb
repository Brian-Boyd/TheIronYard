class Doctor < ActiveRecord::Base
  belongs_to :curable, polymorphic: true

  validates :name, presence: true, length: {minimum: 1}
end