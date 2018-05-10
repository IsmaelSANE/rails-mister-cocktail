class CocktailsController < ApplicationController
  include CocktailsHelper
    def index         # GET /rcocktails
     @cocktails = Cocktail.all
  end

  def show          # GET /rcocktails/:id
    @cocktail = Cocktail.find(params[:id])
  end

  def new           # GET /cocktails/new
    @cocktail = Cocktail.new
  end

  def create        # POST /cocktails
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  def edit          # GET /cocktails/:id/edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update        # PATCH /cocktails/:id
  end

  def destroy       # DELETE /cocktails/:id
  end

end
