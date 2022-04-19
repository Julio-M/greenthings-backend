class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # GET requests START
  get "/" do
    { message: "Home" }.to_json
  end

  get "/leisure-activities" do
    la=LeisureActivity.all
    la.to_json
  end

  get "/leisure-activities/:id" do
    la = LeisureActivity.find(params[:id])
    la.to_json(include: :leisure_location)
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
    oa.to_json(include: :outpost)
  end

  get "/outpost-activities/:id" do
    ol = OutpostActivity.find(params[:id])
    ol.to_json(include: :outpost)
  end

  # GET requests END

  # POST requests START

  post "/leisure-acivities" do
      LeisureActivity.create(params).to_json
  end

  post "/leisure-locations" do
    LeisureLocation.create(params).to_json
  end


  post "/outpost-activities" do
    OutpostActivity.create(params).to_json
  end

  post "/outposts" do
    Outpost.create(params).to_json
  end
  
  # POST requests END

  # DELETE requests START

  delete "/leisure-location/:id" do
    LeisureLocation.find(params[:id]).destroy.to_json
  end

  delete "/leisure-activity/:id" do
    LeisureActivity.find(params[:id]).destroy.to_json
  end

  delete "/outposts/:id" do
    Outpost.find(params[:id]).destroy.to_json
  end

  delete "/outposts-activity/:id" do
    OutpostActivity.find(params[:id]).destroy.to_json
  end

  # DELETE requests END

  # PATCH requests START

    patch "/leisure-activity/:id" do
      to_update=LeisureActivity.find(params[:id]).update(params)
      to_update.to_json
    end

    patch "/leisure-location/:id" do
      to_update=LeisureLocation.find(params[:id]).update(params)
      to_update.to_json
    end

    patch "/outpost-activity/:id" do
      to_update=OutpostActivity.find(params[:id]).update(params)
      to_update.to_json
    end

    patch "/outpost/:id" do
      to_update=Outpost.find(params[:id]).update(params)
      to_update.to_json
    end

  # PATCH requests END

end
