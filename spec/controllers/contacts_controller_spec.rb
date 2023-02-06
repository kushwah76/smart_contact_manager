require 'rails_helper'

RSpec.describe ContactController do
       before (:each) do
    @contact = Contact.create(name:"xyz", email: "xyz@gmail.com", mobile_number:"1234567891")
   end

  describe 'GET index' do
    
     it 'assigns @contact' do
     
    byebug
     get :index
     
    #  expect(assigns(:contacts)).to eq([contact])
  end

  end
  
end
