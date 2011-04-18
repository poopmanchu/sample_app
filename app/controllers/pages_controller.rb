class PagesController < ApplicationController

	def home
		@title = "Home"
		@fart = "farts are important"
	end
	
	def contact
		@title = "Contact"
	end
	
	def about
		@title = "About"
	end
	
	def help
		@title = "Help!"
	end

end
