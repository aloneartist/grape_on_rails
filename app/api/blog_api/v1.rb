class BlogApi::V1 < Grape::API
  version 'v1', using: :header, vendor: 'blog'

  # helpers Api::Auth

  prefix 'api/blog'

  # rescue_from Mongoid::Errors::DocumentNotFound do |e|
  #   Rack::Response.new('Not found', 404, { "Content-type" => "text/error" }).finish
  # end

  mount Posts
  # mount Token

end