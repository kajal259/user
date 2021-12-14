class BooksController < ApplicationController
  # render layout: "standard"
  def index
    @books = Book.all
    
    # @products = Product.all
    # render inline: "<% @products.each do |p| %><p><%= p.name %></p><% end %>"
    # render json: @products
    # render layout: "special_layout"
    
  end

  def show 
    @book = Book.find(params[:id])
    # if @book.nil?
    #   render "index"
    #   # redirect_to action: :index
      
    # end
    # head :ok
    # head :created, location: book_path(@book)
    # if @book.show?
    #   render "special_show" 
    # end
    # render "show"
    # render status: 500
    # render variants: [:book, :product]
    # render layout: "standard"
    
    # render plain: "ok"
    # render html: helpers.tag.strong('Not Found')
    
    # render xml: @product
    # render js: "alert('hello rails');"
    # render inline: "xml.p {'Horrid coding practice!'}", type: :builder
    # render body: "product"
    # render file: "#{Rails.root}/public/404.html", layout: false
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
       redirect_to books_path, status: 301 
      # redirect_back(fallback_location: root_path)
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :content)
  end
end