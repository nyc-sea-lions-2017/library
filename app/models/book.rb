class Book < ActiveRecord::Base
  # Remember to create a migration!

  validates :title, :author, presence: true

  has_many :book_readers
  has_many :readers, through: :book_readers


  def read?(user)
    !(self.readers.where('reader_id = ?', user.id)).empty?

  end

end
