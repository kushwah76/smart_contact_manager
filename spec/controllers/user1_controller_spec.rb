require 'rails_helper'

RSpec.describe User1Controller do

  describe 'GET index' do
       before (:each) do
    @user1 = User1.create(name:"xyz", email: "xyz@gmail.com")

   end
    
#      it 'assigns @user' do
     
#      get :index
     
#     # expect(assigns(:contacts)).to eq([contact])
#   end

  it "renders the index template" do
    get :index
    # expect(response).to render_template("index")
    # expect(response).to be_successful
    expect(response.status).to eq 200
  end

  it "returns player for a user" do 

    get :show, params: { id: @user1.id }   
     byebug

    expect(response.status).to eq 200
end



    

  end
  
end
