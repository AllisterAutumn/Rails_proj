class SinnersController < ApplicationController
/this route is to display all the sinners and their sins/
def index
  @sinners = Sinner.all
end
/this route is to show specific confessions. It uses the find method to retrieve the sin by id/
def show
  @sinner = Sinner.find(params[:id])
end

  /my route to the new sinners form/
  def new
    @sinner = Sinner.new
  end

  /my post route for the sinners form. It has an if else statement to ensure that if the sin input has less thn 5 characters the user will not be able to submit/
def create
  @sinner = Sinner.new(sinner_params)
  if @sinner.save
  redirect_to @sinner
else
  render 'new'
end
end

def destroy
  @sinner = Sinner.find(params[:id])
  @sinner.destroy
  redirect_to sinners_path
end

/this extra route is for security measures like 'permit' to protect my app from malicious activity/
private
  def sinner_params
    params.require(:sinner).permit(:name, :sin)
  end

end

