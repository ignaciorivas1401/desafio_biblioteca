require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { author: @book.author, given_date: @book.given_date, returned_date: @book.returned_date, title: @book.title } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, given_date: @book.given_date, returned_date: @book.returned_date, title: @book.title } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end

  test "shouldn't save without status" do
    book = Book.new
    assert_not book.save
  end

  test "shouldn't save without title" do
    book = Book.new
    assert_not book.save
  end

  # setup do
  #   @book_params = {
  #       id: "5",
  #       title: "las dos torres",
  #       author:"tolkien",
  #       given_date: DateTime.now,
  #       returned_date:  DateTime.now,
  #       status: "given",
  #       created_at: DateTime.now,
  #       updated_at: DateTime.now
  #   }
  # end
  # test "should create book" do
  #   post book_url, params:{ book:@book_params}
  # end

end
