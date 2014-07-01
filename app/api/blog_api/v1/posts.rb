class BlogApi::V1::Posts < Grape::API
	
	include Grape::Kaminari

  resource :posts do

    # Require authentication
    # before { authenticated? } 

    ## INDEX
    desc 'Return a list of posts', {
    	entity: Entity::Post,
      :notes => <<-NOTE
				An h1 header
				============

				Paragraphs are separated by a blank line.

				2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists
				look like:

				  * this one
				  * that one
				  * the other one

				Done.
		  NOTE
    }
    paginate :per_page => 20, :max_per_page => 30
    get do
      posts = Post.all

      Entity::Post.represent paginate(posts)
    end

    desc 'Add new Post with given params', {
    	entity: Entity::Post,
      notes: 'Newly created post'
    }
	  params do
	  	requires :title, 	type: String, desc: 'Post Title'
	  	requires :content, 	type: String, desc: 'Post Content'
	  	requires :author, type: String, desc: 'Post Author'
	  end

	  post do
	    present Post.create!({
	    	title: params[:title],
	    	content: params[:content],
	    	author: params[:author]
	    }), with: Entity::Post
	  end

    
    desc 'Return Post with given Id', {
    	entity: Entity::Post,
      notes: 'Post with given id'
    }
    params do
      requires :id, type: Integer, desc: 'Post ID'
    end

    get ':id' do
	    @post = Post.find(params[:id])
	    present @post, with: Entity::Post
	  end
	  

	  desc 'Update Post with given Id',  {
    	entity: Entity::Post,
      notes: 'Updated post'
    }
	  params do
	  	requires :id, 		type: Integer, desc: 'Post Id'
	  	optional :title, 	type: String, desc: 'Post Title'
	  	optional :content, 	type: String, desc: 'Post Content'
	  	optional :author, type: String, desc: 'Post Author'
	  end

	  put ':id' do
	    @post = Post.find(params[:id])
	    @post.title = params[:title] if params[:title]
	    @post.content = params[:content] if params[:content]
	    @post.author = params[:author] if params[:author]
	    @post.save
	    
	    present @post, with: Entity::Post
	  end


	  desc 'Delete Post with given Id'
	  params do
      requires :id, type: Integer, desc: 'Post ID'
    end

	  delete ':id' do
	    Post.destroy!(params[:id])
	  end

	  # get ':id/comments' do
	  #   @post = Post.find(params[:id])
	  #   @post.comments
	  # end
	  
	  # delete ':id/comments' do
	  #   @post = Post.find(params[:id])
	  #   @post.comments.clear
	  # end
	  
	  # post ':id/comments' do
	  #   @post = Post.find(params[:id])
	  #   @comment = Comment.new
	  #   @comment.name = params[:name] if params[:name]
	  #   @comment.name = params[:content] if params[:content]
	  #   @post.comments << @comment
	    
	  #   status 201
	  #   @comment
	  # end
	  
	end
end