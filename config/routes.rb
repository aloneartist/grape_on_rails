Rails.application.routes.draw do
	
	mount BlogApi => '/'
	mount GrapeSwaggerRails::Engine => '/doc/api'

end
