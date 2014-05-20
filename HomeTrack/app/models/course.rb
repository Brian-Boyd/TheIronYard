class Course < ActiveRecord::Base
  belongs_to :location
  has_many :assignments
  has_many :courses_users_join_table
  has_many :users, through: :courses_users_join_table
end
