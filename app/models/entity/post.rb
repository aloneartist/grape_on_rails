module Entity
  class Post < Base
    expose :id, 			documentation: {type: "integer", desc: "Blog id"}
    expose :title, 		documentation: {type: "string", desc: "Blog title"}
    expose :content, 	documentation: {type: "string", desc: "Blog content"}
    expose :author, 	documentation: {type: "string", desc: "Blog author"}

    with_options(format_with: :iso_timestamp) do
      expose :created_at, documentation: {type: "DateTime", desc: "Blog created at "}
      expose :updated_at, documentation: {type: "DateTime", desc: "Blog updated at "}
    end
  end
end