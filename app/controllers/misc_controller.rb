class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def directors
    @director_table = Director.all
    render({ :template => "misc_templates/director"})
  end

  def director_bio
  @director_id = params.fetch(:id).to_f
  @director = Director.find(params.fetch(:id).to_f)
  @movies = Movie.where({ :director_id => @director_id })
  render ({:template => "misc_templates/director_bio"})
  end

  def movie_desc
    @movie
    @movie = Movie.find(params.fetch(:movie_id).to_f)
    @director_id = @movie.director_id
    @director = Director.find(@director_id)
    render ({:template => "misc_templates/movie_description"})
  end

  def movies
    @movie_table = Movie.all
    render({ :template => "misc_templates/movie"})
  end

def actors
  @actor_table = Actor.all 
  render ({ :template => "misc_templates/actor"})
end

def actor_bio
  @actor_id = params.fetch(:actor_id).to_f
  @actor = Actor.find(@actor_id)
  @characters = Character.where({ :actor_id => @actor_id })
  @movies = []
  @characters.each do |character|
    # Assuming each character belongs to a movie (via movie_id)
    movie = Movie.find(character.movie_id)
    @movies << movie
  end
  
  render ({:template => "misc_templates/actor_bio"})
end

def youngest_director
  @list_of_directors = Director.all
  @descending_list = @list_of_directors.where.not({ :dob => nil }).order({:dob => :desc})
  @youngest_director = @descending_list.at(0).name

  render ({:template => "misc_templates/youngest_director"})
end

def eldest_director
  @list_of_directors = Director.all
  @ascending_list = @list_of_directors.where.not({ :dob => nil }).order({:dob => :asc})
  @eldest_director = @ascending_list.at(0).name

  render ({:template => "misc_templates/eldest_director"})
end
end
