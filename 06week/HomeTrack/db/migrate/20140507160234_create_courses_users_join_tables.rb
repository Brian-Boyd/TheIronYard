class CreateCoursesUsersJoinTables < ActiveRecord::Migration
  def change
    create_table :courses_users_join_tables do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
