class ParamsController < ApplicationController
  # def query_params
  #   name = params["name"]
  #   if params["name"][1] == "a"
  #     render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
  #   else
  #     render json: {message: "cool!"}
     
  #  end
  #   end
  def upcase_params
    name = params["name"].upcase
    if name.starts_with?("A") 
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else
      render json: {message: "your name is #{name}"}
    end
  end

  def guess_number
    num_choice = params["user_number"].to_i
    winning_num = 42
    if num_choice < winning_num
      render json: {message: "Too Low!"}
    elsif num_choice > winning_num
      render json: {message: "Too High!"}
    else
      render json: {message: "hooray!"}
    end
  end

  def url_segment
    input_value = params["variable"].to_i
    winning_num = 42
    if input_value < winning_num
      render json: {message: "Too Low!"}
    elsif input_value > winning_num
      render json: {message: "Too High!"}
    else
      render json: {message: "hooray!"}
    end

  end

  def url_segment2
    input_value = params["variable"].upcase
    if input_value.starts_with?("A") 
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else
      render json: {message: "your name is #{input_value}"}
    end
  end
end

#   def a_params
#     name = params["name"]
#        if name.starts_with?("A") 
#          render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
#        else
#          render json: {message: "cool!"}
#        end
       
#   end
# end
