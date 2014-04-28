class Doctor < ActiveRecord::Base
  # has_many :patients, as: :curable
  belongs_to :curable, polymorphic: true
end