require 'date'

LeisureLocation.destroy_all
Outpost.destroy_all

puts "🌱 Seeding leisure..."
# Seed your database here
l1= LeisureActivity.create(activity_type:"Cycling", datetime:DateTime.now, rating:2, comment:"Great", image:'./fake/url/to/image')
l2= LeisureActivity.create(activity_type:"Snowboarding", datetime:DateTime.now, rating:5, comment:"Awesome", image:'./fake/url/to/image')
l3= LeisureActivity.create(activity_type:"Running", datetime:DateTime.now, rating:6, comment:"All good", image:'./fake/url/to/image')
l4= LeisureActivity.create(activity_type:"Tennis", datetime:DateTime.now, rating:10, comment:"Best", image:'./fake/url/to/image')

ls1=LeisureLocation.create(name:"Location1", latitude: 34.93507,longitude: 7.41745, default_image:'/fake/url/to/default/image')
ls2=LeisureLocation.create(name:"Location2", latitude: -84.14441,longitude: -150.39254, default_image:'/fake/url/to/default/image')
ls3=LeisureLocation.create(name:"Location3", latitude: 34.93507,longitude: 7.41745, default_image:'/fake/url/to/default/image')
ls4=LeisureLocation.create(name:"Location4", latitude: 34.93507,longitude: 7.41745, default_image:'/fake/url/to/default/image')

puts "✅ Done seeding leisure!"

puts "🌱 Seeding outpost..."
o1= OutpostActivity.create(activity_type:"Recycling", datetime:DateTime.now, comment:"Yep", image:'/fake/to/image')
o2= OutpostActivity.create(activity_type:"Composting", datetime:DateTime.now, comment:"Yep", image:'/fake/to/image')
o3= OutpostActivity.create(activity_type:"Gardening", datetime:DateTime.now, comment:"Yep", image:'/fake/to/image')
o4= OutpostActivity.create(activity_type:"Green Shopping", datetime:DateTime.now, comment:"Yep", image:'/fake/to/image')

os1=Outpost.create(name:"Outpost1", latitude: 34.93507,longitude: 7.41745, rating:2, comment:"Not good",default_image:"/to/default/image", schedule:'8.00am-5pm', open?:true)
os2=Outpost.create(name:"Outpost2", latitude: 34.93507,longitude: 7.41745, rating:2, comment:"Not good",default_image:"/to/default/image", schedule:'8.00am-5pm', open?:true)
os3=Outpost.create(name:"Outpost3", latitude: 34.93507,longitude: 7.41745, rating:2, comment:"Not good",default_image:"/to/default/image", schedule:'8.00am-5pm', open?:true)
os4=Outpost.create(name:"Outpost4", latitude: 34.93507,longitude: 7.41745, rating:2, comment:"Not good",default_image:"/to/default/image", schedule:'8.00am-5pm', open?:true)

puts "✅ Done seeding outpost!"

puts "seeding joined tables....."

AllOutpost.create(outpost_id:os1.id,outpost_activity_id:o2.id,created_at:DateTime.now)
AllOutpost.create(outpost_id:os3.id,outpost_activity_id:o1.id,created_at:DateTime.now)
AllOutpost.create(outpost_id:os4.id,outpost_activity_id:o3.id,created_at:DateTime.now)
AllOutpost.create(outpost_id:os2.id,outpost_activity_id:o4.id,created_at:DateTime.now)

AllLeisure.create(leisure_location_id:ls2.id,leisure_activity_id:l1.id, created_at:DateTime.now)
AllLeisure.create(leisure_location_id:ls3.id,leisure_activity_id:l2.id,
created_at:DateTime.now)
AllLeisure.create(leisure_location_id:ls1.id,leisure_activity_id:l4.id,created_at:DateTime.now)
AllLeisure.create(leisure_location_id:ls4.id,leisure_activity_id:l3.id,
  created_at:DateTime.now)

puts "done"
