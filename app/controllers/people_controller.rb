class PeopleController < ApplicationController
  def index

  end
  def new
    render :new
  end
 def create
  @person = Person.new(params[:person])

  @person.save
  redirect_to @person
end
  def show
  @person = Person.find(params[:id])
end
  def edit

  end
  def update

  end
  def destroy

  end
end
