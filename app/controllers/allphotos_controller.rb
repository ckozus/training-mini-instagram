class AllphotosController < ApplicationController
def index
	@photos=Photo.order('created_at DESC').limit(20)
end

end
