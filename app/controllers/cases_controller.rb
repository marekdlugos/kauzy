class CasesController < ApplicationController

  def index
    @cases = Case.all
  end

  def show
    @case = Case.friendly.find(params[:id])
  end

end