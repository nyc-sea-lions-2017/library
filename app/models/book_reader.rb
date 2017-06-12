class BookReader < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :reader, class_name: 'User'
  belongs_to :book
end
