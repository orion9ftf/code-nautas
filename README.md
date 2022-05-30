# CodesNautas


$ rails new codes-nautas -d postgresql

$ cd codes-nautas/

$ code .
$ bundle install

$ rails db:drop db:create

$ rails s

$ rails g scaffold User username

$ cat db/migrate/20220528133029_create_users.rb

$ rails db:migrate

$ rails g scaffold Course title

$ cat db/migrate/20220528133556_create_courses.rb

$ rails db:migrate

$ rails g model UserCourse user:references course:references

add PK => id

```rb
class CreateUserCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_courses, :primary_key => :id do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
```

$ rails db:migrate


Relationship:

```shell
3.0.0 :001 > User.new.courses
 => [] 
3.0.0 :002 > Course.new.users
 => [] 
```

```shell
user = User.find(1)
javas = Course.find(2)
user.courses << javas
```

```shell
3.0.0 :017 > javas.users
  User Load (0.9ms)  SELECT "users".* FROM "users" INNER JOIN "courses_users" ON "users"."id" = "courses_users"."user_id" WHERE "courses_users"."course_id" = $1  [["course_id", 2]]                            
 =>

[#<User:0x00007f84a0a3c650           
  id: 1,     
  username: "Uriel",       
  created_at: Sat, 28 May 2022 13:35:17.204999000 UTC +00:00,    
  updated_at: Sat, 28 May 2022 13:35:17.204999000 UTC +00:00>]   
3.0.0 :018 > 
```


