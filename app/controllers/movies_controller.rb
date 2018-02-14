

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      # Flash notice/alert: app/views/layouts/application.html.erb
      redirect_to movies_path, notice: "#{@movie.title} was submitted successfully!"
    else
      render :new
    end

  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update_attributes(movie_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end

  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  protected
  # Strong params
  # Whitelist attributes within the context in which they will be used, rather than requiring a global whitelisting within the model.
  def movie_params
    # Required parameter movie
    # Permit indentifies the list of allowed parameter keys
    
    params.require(:movie).permit(:title, :release_date, :director, :runtime_in_minutes, :description, :poster_image_url, :image)
  end

end















