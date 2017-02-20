class SinnersController < ApplicationController
/this route is to display all the sinners and their sins/
def index
  @sinners = Sinner.all
end
/this route is to show specific confessions. It uses the find method to retrieve the sin by id/
def show
  @sinner = Sinner.find(params[:id])
end

  /my route to to the new sinners form/
  def new
  end

  /my post route for the sinners form. It takes the params and redirects back to the main page/
def create
  @sinner = Sinner.new(sinner_params)
  @sinner.save
  redirect_to @sinner
end

/this extra route is for security measures like 'permit' to protect my app from malicious activity/
private
  def sinner_params
    params.require(:sinner).permit(:name, :sin)
  end
end

