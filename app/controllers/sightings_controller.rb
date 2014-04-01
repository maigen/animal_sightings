class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def new
    @regions = Region.all
    @all_species = Species.all
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(:name => params[:name])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:name => params[:name])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end
end
