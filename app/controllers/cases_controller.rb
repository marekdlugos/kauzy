class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def show
    @case = Case.friendly.find(params[:id])
    @associated_persons = @case.people
    @associated_links = @case.links
  end

end