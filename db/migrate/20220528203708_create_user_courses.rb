class CreateUserCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_courses, :primary_key => :id do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
