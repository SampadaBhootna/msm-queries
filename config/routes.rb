Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  #Director Table
  get("/directors", { :controller => "misc", :action => "directors" })

  #Youngest_director_page
  get("/directors/youngest", { :controller => "misc", :action => "youngest_director" })

  #Youngest_director_page
  get("/directors/eldest", { :controller => "misc", :action => "eldest_director" })

  #Director_Individual_Biopage
  get("/directors/:id", { :controller => "misc", :action => "director_bio"})

  #Movie_Descripton_Page
  get("movies/:movie_id", { :controller => "misc", :action => "movie_desc" })

  #All_movies_table
  get("/movies", { :controller => "misc", :action => "movies" })

  #All_actors_table
  get("/actors", { :controller => "misc", :action => "actors" })

  #Actor_Bio_Page 
  get("/actors/:actor_id", { :controller => "misc", :action => "actor_bio"})

  

end
