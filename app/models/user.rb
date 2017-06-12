class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :username, :email, presence: true
  validates :password, length: {minimum: 6}

  has_secure_password

  has_many :book_readers, foreign_key: "reader_id"
  has_many :read_books, through: :book_readers, source: :book
end
