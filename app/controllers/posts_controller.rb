class PostsController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "ibivob47", except: [:index, :show]

    def index
@post = Post.all
    end

    def new
        @post = Post.new
    end

    def show
@post = Post.find(params[:id])
    end

    def edit
@post = Post.find(params[:id])

    end

    def create
        #render plain: params[:post].inspect
        @post = Post.new(post_params)

        if (@post.save)
            redirect_to @post
        else
            render 'new' #в случае отказа перезагрузка страницы
        end
    end

    def update
        @post = Post.find(params[:id])

        if (@post.update(post_params))
            redirect_to @post
        else
            render 'edit' #в случае отказа перезагрузка страницы
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    private def post_params
params.require(:post).permit(:title, :body)
    end


end
