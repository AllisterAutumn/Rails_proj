class WelcomeController < ApplicationController
  def index

  end
  def about
    render text: "You can tell from the scars on my arms and the stains on my skirt and the dents in my car and the bruises on my hips"
  end

end
