class Api::CatsController < ApplicationController
  def index
    if current_user
      @cats = current_user.cats
      render 'index.json.jb'
    end
  end 

  def create
    @cat = Cat.new(
      name: params[:name],
      happy: params[:happy],
      hangry: params[:hangry],
      thirsty: params[:thirsty],
      sleepy: params[:sleepy])
    @cat.save
    render 'show.json.jb'
  end

  def show
    the_id = params[:id]
    @cat = cat.find_by(id: the_id)
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @cat = Cat.find_by(id: the_id)
    @cat.name = params[:name] || @cat.name
    @cat.happy = params[:happy] || @cat.happy
    @cat.hangry = params[:hangry] || @cat.hangry
    @cat.thirsty = params[:thirsty] || @cat.thirsty
    @cat.sleepy = params[:sleepy] || 

    @cat.save
    render 'show.json.jb'
  end

  def destroy
    @cat = Cat.find_by(id:params[:id])
    @cat.destroy
    render 'destroy.json.jb'
  end
end
    

















