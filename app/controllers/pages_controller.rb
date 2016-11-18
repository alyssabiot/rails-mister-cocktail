class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.first(3)
  end
end
