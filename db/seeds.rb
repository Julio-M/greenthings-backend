require 'date'

puts "🌱 Seeding leisure..."

l1 = LeisureLocation.create!(name: "Location1", latitude: 27, longitude:23, default_image:"/fake/image")
l2 = LeisureLocation.create!(name: "Location2", latitude: 27, longitude:23, default_image:"/fake/image")
l3 = LeisureLocation.create!(name: "Location3", latitude: 27, longitude:23, default_image:"/fake/image")

LeisureActivity.create!(avatar:"a1",activity_type:"biking",description:"blah blah", datetime:DateTime.now,rating:2,comment:'Hello',image:"/fake/image", leisure_location_id:l1.id)
LeisureActivity.create!(avatar:"a1",activity_type:"swimming",description:"blah blah", datetime:DateTime.now,rating:2,comment:'Hello',image:"/fake/image", leisure_location_id:l2.id)
LeisureActivity.create!(avatar:"a1",activity_type:"snowboarding",description:"blah blah", datetime:DateTime.now,rating:2,comment:'Hello',image:"/fake/image", leisure_location_id:l3.id)

puts "✅ Done seeding leisure!"

puts "🌱 Seeding outpost..."

o1 = Outpost.create!(name:"O1",latitude:24,longitude:35,rating:3,default_image:"/fake/image",schedule:"8am-5pm", open_months:"k",notes:"notes",location:"location")
o2 = Outpost.create!(name:"O2",latitude:24,longitude:35,rating:3,default_image:"/fake/image",schedule:"8am-5pm", open_months:"k",notes:"notes",location:"location")
o3 = Outpost.create!(name:"O4",latitude:24,longitude:35,rating:3,default_image:"/fake/image",schedule:"8am-5pm", open_months:"k",notes:"notes",location:"location")

OutpostActivity.create!(avatar:"a1",activity_type:"recycling",datetime:DateTime.now,description:"biri", comment:"mycom", image:"/fake/image", outpost_id:o1.id)
OutpostActivity.create!(avatar:"a1",activity_type:"composting",datetime:DateTime.now,description:"biri", comment:"mycom", image:"/fake/image", outpost_id:o2.id)
OutpostActivity.create!(avatar:"a1",activity_type:"cleaning",datetime:DateTime.now,description:"biri", comment:"mycom", image:"/fake/image", outpost_id:o3.id)

# o1= OutpostActivity.create!(avatar:"o1",activity_type:"Recycling", datetime:DateTime.now, comment:"Yep", image:'/fake/to/image', outpost:os1.id)

# puts "✅ Done seeding outpost!"

