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

$ rails g migration CreateJoinTable  user course

$ rails db:migrate


