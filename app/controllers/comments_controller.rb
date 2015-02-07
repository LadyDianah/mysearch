class CommentsController < ApplicationController
	
	def create
                @article = Article.find(params[:article_id])
                @comment = @article.comments.create(params[:id])
                redirect_to articles_path(@article)
                

    
        end
end
