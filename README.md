# LyBerry

* Ruby version - 5.0.0.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

`user@hostname /path/to/Lyberry $ sudo mysql`
`mysql > CREATE DATABASE lyberry_development;`
`mysql > GRANT ALL PRIVILEGES ON lyberry_development.* TO 'rails_user'@'localhost' IDENTIFIED BY 'pass';`
`user@hostname /path/to/Lyberry $ bundle install`
`user@hostname /path/to/Lyberry $ rails db:migrate`
`user@hostname /path/to/Lyberry $ rails server`