class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.json.jb'
    
  end

  def create
    @recipe = Recipe.new(
                          title: params[:title],
                          chef: params[:chef],
                          ingredients: params[:ingredients],
                          directions: params[:directions],
                          prep_time: params[:prepch_time],
                          image_url: params[:image_url]
                          )
    @recipe.save
    render 'show.json.jb'           
  end

  def show
    @recipe = Recipe.find(params[:id])
    render 'show.json.jb'
    
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.title = params[:title] || @recipe.title
    @recipe.chef = params[:chef] || @recipe.chef
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.image_url = params[:image_url] || @recipe.image_url

    @recipe.save 
    render 'show.json.jb'

  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render json: {message: "Successfully destroyed recipe."}

    
  end
  
end
