class CasesController < ApplicationController

  def index
    @cases = Case.all
  end



end