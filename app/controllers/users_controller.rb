class UsersController < ApplicationController
	before_filter :find_user

	def dashboard
		@articles = current_user.articles
	end

	def edit
		
	end

	def update
		if @user.update_attributes(params[:user])
			redirect_to edit_user_path(current_user), notice: "Updated successfully"
		else
			render action: "edit"
		end
	end

	def show
		@user = User.find(params[:id])
	end
    
  private

  def find_user
    @user = current_user
  end
end
