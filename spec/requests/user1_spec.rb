require 'rails_helper'

RSpec.describe User1, type: :controller do
  
  #  before (:each) do
  #   @contact = Contact.create(name:"xyz", email: "xyz@gmail.com", mobile_number:"1234567891")
  #  end

  describe "GET user1#index" do
      it "should render contact#show template" do
        byebug
        get "/user1/index"
        #page.should have_content(@contact.name)
      end
  end
end
