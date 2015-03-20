class BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    @books = Book.all
    @user = User.find(session[:user_id])

   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
    @status = @book.status

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new
    @status =Status.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
    @status = @book.status
#    @status = Status.find(params[:book_id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(params[:book])
    @status = Status.new(params[:status])
    @status = @book.status
    respond_to do |format|
      if @book.save 
        @status = @book.create_status(:book_id => @book.id)
        @status.save
        format.html { redirect_to @book, notice: 'Book was successfully created.'}
        format.json { render json: @book, status: :created, location: @book }

      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @book = Book.find(params[:id])
    @status = @book.status
      
    respond_to do |format|
      if @book.update_attributes(params[:book]) 
         @status.book_id=@book.id
         @status.save
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    @status = @book.status
    @book.destroy
#    @status.destroy
#    @status = @book.destroy_status(:book_id => @book.id)
    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end
end
