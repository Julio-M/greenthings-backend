class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Get requests START
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/leisure-acivities" do
    la=LeisureActivity.all
    la.to_json(include: :leisure_locations)
  end

  get "/leisure-activities/:id" do
    la = LeisureActivity.find(params[:id])
    la.to_json(include: :leisure_locations)
  end

  get "/leisure-locations" do
    ls = LeisureLocation.all
    ls.to_json(include: :leisure_activities)
  end

  get "/leisure-locations/:id" do
    la = LeisureLocation.find(params[:id])
    la.to_json(include: :leisure_activities)
  end

  get "/outposts" do
    ol = Outpost.all
    ol.to_json(include: :outpost_activities)
  end

  get "/outposts/:id" do
    ol = Outpost.find(params[:id])
    ol.to_json(include: :outpost_activities)
  end

  get "/outpost-activities" do
    oa=OutpostActivity.all
    oa.to_json(include: :outposts)
  end

  get "/outpost-activities/:id" do
    ol = OutpostActivity.find(params[:id])
    ol.to_json(include: :outposts)
  end

  # Get requests END

  post "/leisure-acivities" do
    la = LeisureActivity.create(params[:activity])
    la.leisure_locations.create(params[:leisure_locations])
    la.to_json(include: :leisure_locations)
  end

  post "/leisure-activities/:id" do
    binding.pry
  end

end
