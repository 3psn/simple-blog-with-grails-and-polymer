package akash.demo.simpleblog

class PostController {

    def index() { 
		render( view:'index', model:[posts:Post.list( sort:'lastUpdated', order:'desc')])
	}
	
	def edit(){
		def post = Post.get(params.id)
		
		if(!post){
			post = new Post()
		}
		render(view:'edit', model:[post:post])
	}
	
	def save () {
		def post = loadPost(params.id)
		post.properties = params
		if(post.save()) {
			redirect(action:'index')
		} else {
		render(view:'edit', model:[post:post])
		}
	}
	private loadPost(id) {
		def post = new Post();
		if(id) {
			post = Post.get(id)
			
		}
		return post
	}
	def view () {
		 render(view:'view', model:[post:Post.get(params.id)])
    }
}
