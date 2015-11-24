# HighFive-

Codes for the future :

@nearbylat = User.find.where(latitude: (@current_user[:latitude]- 0.0005)..@current_user[:latitude] + 0.0005)
		
@nearbylong = User.find.where(longitude: (@current_user[:longitude]- 0.0005)..@current_user[:longitude] + 0.0005)