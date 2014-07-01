
class BlogApi < Grape::API
	
	format :xml
	content_type :json, "application/json"
	content_type :xml, 'application/xml'

  # formatter :xml, proc { |object|
  #   object.to_xml root: object.class.name.underscore
  # }

  mount BlogApi::V1

  add_swagger_documentation({
  	api_version: 'v1',
  	markdown: true,
  	# hide_documentation_path: true
  })
end