class User1Controller < ApplicationController
  def index
  end

  # def show 
  #   # byebug

  #   @user = User1.find(params[:id])

  # end
 
  def login
    puts "email #{ params[:signup][:email]}"
    puts "passsword----#{params[:signup][:passsword]}"
   @us=User1.find_by(email: params[:signup][:email] , password: params[:signup][:password])
  if  @us.present?
    session[:current_user_id] = @us.id
    redirect_to(:controller=> "contact",:action =>"index")
  else
    puts "sorry"
  end
  end

  def new 
    @user1=User1.new
  end
  def create
    @user1=User1.new(user_params)
    if @user1.save
      #render template: "signup/login"
      redirect_to(:action =>"index")

    else
      render :new, status: :unprocessable_entity
    end
  end
  private 
  def user_params
    params.require(:user1).permit(:name,:email,:password)
  end
end
