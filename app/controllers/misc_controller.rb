class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def directors
    @director_table = Director.all
    render({ :template => "misc_templates/director"})
  end
end
