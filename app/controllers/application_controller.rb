class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # GET requests START
  get "/" do
    { message: "Home" }.to_json
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

  # GET requests END

  # POST requests START

  post "/leisure-acivities" do
    la = LeisureActivity.create(params[:activity])
    all = la.leisure_locations.create(params[:leisure_locations])
    AllLeisure.create(leisure_location_id:all.id, leisure_activity_id:la.id).to_json
  end

  post "/leisure-activities-location/:id" do
    new_leisure = LeisureActivity.create(params[:activity])
    AllLeisure.create(leisure_location_id:params[:id],leisure_activity_id:new_leisure.id).to_json
  end

  post "/outpost-activities" do
    # binding.pry
    oa = OutpostActivity.create(params[:activity])
    all = oa.outposts.create(params[:outposts])
    AllOutpost.create(outpost_id:all.id, outpost_activity_id:oa.id).to_json
  end

  post "/outpost-activities-location/:id" do
    # binding.pry
    new_oa = OutpostActivity.create(params[:activity])
    AllOutpost.create(outpost_id:params[:id], outpost_activity_id:new_oa.id).to_json
  end
  
  # POST requests END

  # DELETE requests START

  delete "/outposts/:id" do
    Outpost.destroy_all
  end

  # DELETE requests END

end
