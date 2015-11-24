# HighFive

Geolocate User location, find nearby users, High Fives for everyone! 

#Overview 

HighFive is an online platform that allow users to discover nearby users and compliment them. 

#User Narrative
A user will be able to set up a profile with their customized photo. Upon login, the user will be greeted by a map that pins their current location as well as displayed pictures of nearby users. The user can then select from a list of users to compliment them. The user will be able to access their comment page to see all the compliments received. 

#Built Using

Ruby on Rails 
PostgreSQL
Amazon S3
Google Maps
Geolocation 
Ajax
jQuery
Heroku 

#Future Development
Sockets 
Dynamic mobile platform 

@nearbylat = User.find.where(latitude: (@current_user[:latitude]- 0.0005)..@current_user[:latitude] + 0.0005)

@nearbylong = User.find.where(longitude: (@current_user[:longitude]- 0.0005)..@current_user[:longitude] + 0.0005)
