# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Student
rails generate resource Student name:string email:string phone:string address:text postcode:integer ref_type:string ref_person:integer

Instructor
rails generate resource Instructor name:string email:string phone:string transmission:string gender:string address_text

Appointment
rails generate resource Appointment student_id:integer instructor_id:integer appointment_date:date appointment_time:time

Location
rails generate resource Location postcode:integer

Instructor / Location
rails generate model instructor_location instructor_id:integer location_id:integer

Emails
rails generate resource Email subject:text body:text

SMS
rails generate resource SMS body:text
