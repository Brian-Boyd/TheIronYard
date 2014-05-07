class Users < ActiveRecord::Base
  has_many :courses_users_join_table
  has_many :courses, through :courses_users_join_table
  has_many :assignments
  has_many :comments
end
