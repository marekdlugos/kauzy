class PersonsController < ApplicationController

  def index
    @persons = Person.all
  end

end