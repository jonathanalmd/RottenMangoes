
class MoviesController < ApplicationController
  include MoviesHelper

  def index
    if params[:title_or_director]
      # v1
      # @movies = Movie.where(
      #   "title LIKE ? AND director LIKE ? AND runtime_in_minutes BETWEEN ? AND ?",
      #   query_title(params[:title]), 
      #   query_director(params[:director]), 
      #   query_range_runtime(params[:runtime_in_minutes])[0],
      #   query_range_runtime(params[:runtime_in_minutes])[1]
      # )
      # v2
      # @movies = Movie.movies_filter(
      #   query_title(params[:title]), 
      #   query_director(params[:director]), 
      #   query_range_runtime(params[:runtime_in_minutes])[0],
      #   query_range_runtime(params[:runtime_in_minutes])[1]
      # )
      # v3
      # @movies = Movie.title_filter(query_title(params[:title])).
      #                 director_filter(query_director(params[:director])).
      #                 runtime_filter(query_range_runtime(params[:runtime_in_minutes])[0],query_range_runtime(params[:runtime_in_minutes])[1])
      # v4
      @movies = Movie.title_or_director_filter(params[:title_or_director].strip).
                      runtime_filter(query_range_runtime(params[:runtime_in_minutes])[0],query_range_runtime(params[:runtime_in_minutes])[1])
    end
    @movies ||= Movie.all
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















