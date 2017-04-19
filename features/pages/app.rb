class APP < SitePrism:: Page

	def home
		Home.new
	end

	def login
		Login.new
	end
	
	def util
		Util.new
	end
end