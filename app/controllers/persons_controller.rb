class PersonsController < ApplicationController

  def index
    @persons = Person.all.page params[:page]
  end

end