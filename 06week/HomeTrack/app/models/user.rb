class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :course_user_join_table
  has_many :courses, through: :course_user_join_table
  has_many :assignments, through: :submissions
  has_many :comments, as: :commentable
  has_many :submissions

  ROLES = ["Admin", "Student"]
end
