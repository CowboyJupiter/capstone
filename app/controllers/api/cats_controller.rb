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
      happy: 1,
      hangry: 50,
      thirsty: 50,
      litter: 1
    )
    @cat.save
    render 'show.json.jb'
  end

  def show
    the_id = params[:id]
    @cat = Cat.find_by(id: the_id)
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @cat = Cat.find_by(id: the_id)
    @cat.name = params[:name] || @cat.name
    @cat.happy = params[:happy] || @cat.happy
    @cat.hangry = params[:hangry] || @cat.hangry
    @cat.thirsty = params[:thirsty] || @cat.thirsty
    @cat.save
    render 'show.json.jb'
  end

  def destroy
    @cat = Cat.find_by(id:params[:id])
    @cat.destroy
    render 'destroy.json.jb'
  end

  def feed
    @cat = current_user.cats[0]
    @cat.feed
    render 'show.json.jb'
  end

  def water
    @cat = current_user.cats[0]
    @cat.water
    render 'show.json.jb'
  end

  def niptime
    @cat = current_user.cats[0]
    @cat.niptime
    render 'show.json.jb'
  end

  def play
    @cat = current_user.cats[0]
    @cat.play
    render 'show.json.jb'
  end

  def pet_sitter
    @cat = current_user.cats[0]
    @cat.pet_sitter
    render 'show.json.jb'
  end
end
    

















