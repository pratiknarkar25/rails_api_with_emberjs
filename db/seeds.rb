
movie_details_array = [
	{
	title: "Deadpool",
	description: "A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool",
	thumbnail_url: "http://ia.media-imdb.com/images/M/MV5BMjQyODg5Njc4N15BMl5BanBnXkFtZTgwMzExMjE3NzE@._V1_UY98_CR0,0,67,98_AL_.jpg" , 
	image_url: "http://ia.media-imdb.com/images/M/MV5BMjQyODg5Njc4N15BMl5BanBnXkFtZTgwMzExMjE3NzE@._V1_SX640_SY720_.jpg" , 
	rating: 9
	}, 
	{
	title: "Kung Fu Panda 3",
	description: "Continuing his legendary adventures of awesomeness, Po must face two hugely epic, but different threats: one supernatural and the other a little closer to his home",
	thumbnail_url: "http://ia.media-imdb.com/images/M/MV5BMTUyNzgxNjg2M15BMl5BanBnXkFtZTgwMTY1NDI1NjE@._V1_UX67_CR0,0,67,98_AL_.jpg" , 
	image_url: "http://ia.media-imdb.com/images/M/MV5BMTUyNzgxNjg2M15BMl5BanBnXkFtZTgwMTY1NDI1NjE@._V1_SX640_SY720_.jpg", 
	rating: 8
	}, 
	{
	title: "Risen",
	description: "Follows the epic Biblical story of the Resurrection, as told through the eyes of a non-believer",
	thumbnail_url: "http://ia.media-imdb.com/images/M/MV5BMTAzNjQ1Mzk2MjNeQTJeQWpwZ15BbWU4MDU0MDk1Mjcx._V1_UX67_CR0,0,67,98_AL_.jpg" , 
	image_url: "http://ia.media-imdb.com/images/M/MV5BMTAzNjQ1Mzk2MjNeQTJeQWpwZ15BbWU4MDU0MDk1Mjcx._V1_SX640_SY720_.jpg", 
	rating: 7
	}, 
	{
	title: "The Witch",
	description: "A family in 1630s New England is torn apart by the forces of witchcraft, black magic and possession",
	thumbnail_url: "http://ia.media-imdb.com/images/M/MV5BMTY4MTU2NjMyNV5BMl5BanBnXkFtZTgwMzUwMDk4NzE@._V1_UX67_CR0,0,67,98_AL_.jpg", 
	image_url: "http://ia.media-imdb.com/images/M/MV5BMTY4MTU2NjMyNV5BMl5BanBnXkFtZTgwMzUwMDk4NzE@._V1_SX640_SY720_.jpg", 
	rating: 8
	},
	{
	title: "Race",
	description: "Jesse Owens' quest to become the greatest track and field athlete in history thrusts him onto the world stage of the 1936 Olympics, where he faces off against Adolf Hitler's vision of Aryan supremacy",
	thumbnail_url: "http://ia.media-imdb.com/images/M/MV5BMTQ3MDM1MDU2NF5BMl5BanBnXkFtZTgwMzM3OTIzNzE@._V1_UX182_CR0,0,182,268_AL_.jpg", 
	image_url: "http://ia.media-imdb.com/images/M/MV5BMTQ3MDM1MDU2NF5BMl5BanBnXkFtZTgwMzM3OTIzNzE@._V1_SX640_SY720_.jpg", 
	rating: 7
	},
	{
	title: "The Last Man on the Moon",
	description: "When Apollo astronaut Gene Cernan stepped off the moon in December 1972 he left his footprints and his daughter's initials in the lunar dust. Only now is he ready to share his epic but deeply personal story of fulfillment, love, and loss",
	thumbnail_url: "http://ia.media-imdb.com/images/M/MV5BMTg0NDg2NDAwNl5BMl5BanBnXkFtZTgwMzk1Njk0NzE@._V1_UX67_CR0,0,67,98_AL_.jpg", 
	image_url: "http://ia.media-imdb.com/images/M/MV5BMTg0NDg2NDAwNl5BMl5BanBnXkFtZTgwMzk1Njk0NzE@._V1_SX640_SY720_.jpg", 
	rating: 7
	}
]

movie_details_array.each do |movie_details|
	movie = Movie.create(movie_details)
	Comment.create(description: "#{movie.title} is a very nice movie",
		movie_id: movie.id)
	Comment.create(description: "#{movie.title} is an entertaining movie that acting, hints at themes to which we can definitely all relate.",
		movie_id: movie.id)
end
