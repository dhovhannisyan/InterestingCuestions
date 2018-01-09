class UsersController < ApplicationController
	
  before_action :authorize

  def edit

  	if current_user.update(user_params)
  		  # if params[:password] != '' 
      #     current_user.update_password(params[:password])
  		  # end
        redirect_to user_page_path
    else
      @errs = {}
      current_user.errors.full_messages.each do |err| 
        @errs[err.split[0].downcase] = err
      end
        list = QuestionGroup.all
		@length = list.length
	  @questions = split_in_cols(list)
        render 'page'
    end

  end
  	
  def page
		list = QuestionGroup.all
		@length = list.length
	  @questions = split_in_cols(list)
  end

  def questions_list
  	group = QuestionGroup.find_by_id(params[:group_id])
  	@questions = group.questions
  	@rigths = []
  	@questions.each_with_index do |q, i|
      q.answers.each_with_index do |a, j| 
        if a.subject == q.rigth_answer 
          @rigths[i] = j
        end
      end
  	end
  end

	private

	def user_params
    params.require(:user).permit(:fname, :lname, :email)
  end
  
	def split_in_cols(arr)
		num = arr.length / 3
		num = 1 if num <= 0 
		result, buffer = [], []
		arr.each do |a|
      buffer << a 
      if(buffer.length == num)
        result << buffer
        buffer = []
      end
		end
		result << buffer unless buffer.empty?
		result
	end

end
