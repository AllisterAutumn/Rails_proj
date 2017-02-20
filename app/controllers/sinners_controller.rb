class SinnersController < ApplicationController
  /my route to to the new sinners form/
  def new
  end
  /my post route for the sinners form/
  def create
    render plain: params[:sinner].inspect
  end
end
