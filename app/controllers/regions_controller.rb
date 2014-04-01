class RegionsController < ApplicationController

  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end

  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

  def create
    @region = Region.new(:name => params[:name])
    if @region.save
      render('regions/success.html.erb')
    else
      render('regions/new.html.erb')
    end
  end

  def edit
    @region = Region.find(params[:id])
    render('regions/edit.html.erb')
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(:name => params[:name])
      render('regions/success.html.erb')
    else
      render('regions/edit.html.erb')
    end
  end
end
