class MoviesController < ApplicationController
  def index #for views/movies/index.html.haml
    @movies = Movie.all(:order => :title) #set @movie variable to be enumeration of all movies in db
    #@movies.sort! { |x,y| x[:rating] <=> y[:rating] }
  end

  def show
    id = params[:id] #get ID from URI route
    @movie = Movie.find_by_id(id)
    redirect_to movies_path if @movie == nil

    #will render app/views/movies/show.html/haml
  end
#step one of create
  def new
    @movie = Movie.new
  end
#step two of create
  def create
    @movie = Movie.new(params[:movie])  #create new movie from user input :movie
    if @movie.save
      flash[:notice] = "#{@movie.title} was successfully created."
      redirect_to movies_path
    else
      render 'new'
    end
  end

#step one of edit
  def edit
    @movie = Movie.find(params[:id])
  end
#step two of edit
  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "#{@movie.title} deleted successfully."
    redirect_to movies_path
  end

  def search_tmdb
    #hardwired to always simulate failure (no results)
    flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
    redirect_to movies_path
  end
end
