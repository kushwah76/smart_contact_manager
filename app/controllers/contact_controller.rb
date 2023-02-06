class ContactController < ApplicationController
  def index
    
    @find_id = User1.find(session[:current_user_id])
    @contact=@find_id.contacts

    #current_user = session[:current_user_id]
  
  end
  def show
    byebug
    @contact = Contact.find(params[:id])
  end

  def new 
    @contact=Contact.new

 
  end
  def create

    @contact=Contact.create(contact_params)
    puts @contact.save
    
    if @contact.save
      redirect_to action: 'index'
       else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contact=Contact.find(params[:id])
  end
  def update
    @contact=Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to action: 'index'
       else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @contact=Contact.find(params[:id])
    @contact.destroy
    redirect_to action: 'index'
    end

  private 
  def contact_params
    params.require(:contact).permit(:name,:email,:mobile_number,:address,:profile_image,:user1_id)
  end
end
