module CocktailsHelper
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
