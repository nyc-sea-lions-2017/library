before '/books/:id' do
  require_user
  # binding.pry
  @book=  Book.find_by(id: params[:id])
end

get '/books' do
  @books = Book.all
  erb :'/books/index'
end


post '/books/:id/reserve' do
  @book = Book.find_by(id: params[:id])
  @read_book = current_user.book_readers.new(book_id: @book.id)
  if @read_book.save
    if request.xhr?
      content_type :json
      {message: "You alreader read this book"}.to_json
    else
      redirect '/'
    end
  end

end


get '/books/:id' do

  # @book=  Book.find_by(id: params[:id])
  @readers = @book.readers
  erb :'/books/show'
end
