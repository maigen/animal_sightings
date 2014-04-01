class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def show
    @sighting = Sighting.find(params[:id])
    @species_name = Species.find(@sighting.species_id).name
    @region_name = Region.find(@sighting.regions_id).name
    render('sightings/show.html.erb')
  end

  def new
    @regions = Region.all
    @all_species = Species.all
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new({:species_id => params[:species_id],
      :regions_id => params[:regions_id], :date => params[:date], :time => params[:time] })
    @species = Species.find(params[:species_id])
    @region = Region.find(params[:regions_id])

    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    @species_name = Species.find(@sighting.species_id).name
    @region_name = Region.find(@sighting.regions_id).name
    @all_species = Species.all
    @regions = Region.all
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update({:species_id => params[:species_id],
      :regions_id => params[:regions_id], :date => params[:date], :time => params[:time] })
      @species = Species.find(params[:species_id])
      @region = Region.find(params[:regions_id])
      render('sightings/success.html.erb')
    else
      render('sightings/edit.html.erb')
    end
  end

  def search
    @regions = Region.all
    @all_species = Species.all
    render('sightings/search.html.erb')
  end

  def results
    @sightings_results = Sighting.all.where({:date => params[:start_date]..params[:end_date], :species_id => params[:species_id], :regions_id => params[:regions_id]})
    render('sightings/results.html.erb')
  end
end
