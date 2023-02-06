require 'rails_helper'

RSpec.describe Contact, type: :model do
  # # pending "add some examples to (or delete) #{__FILE__}"
  # subject{Contact.new(name:"kushwah",email:"kushwah@gmail.com",mobile_number:7649008047)}

  # # it "is valid with valid attributes" do
  # #   expect(subject).to be_valid
  # # end

  # it "is not valid without a name" do
  #   subject.name = nil
  #   #expect(subject).to be_valid
  #   expect(subject).to_not be_valid
  # end

  # it "is not valid without a email" do
  #   subject.email = nil
  #   expect(subject).to_not be_valid
  # end

  # it "is not valid without a mobile_number" do
  #   subject.mobile_number = nil
  #   expect(subject).to_not be_valid
  # end













    
  # before(:all) do
  #   @user1 = create(:contact)
  # end


  # it "is valid with valid attributes" do
  #   expect(@user1).to be_valid
  # end

  
 
  # it "is not valid without a mobile_number" do
  #   user2 = build(:contact, mobile_number: nil)
  #   expect(user2).to_not be_valid
  # end



  # it "is not valid without a name" do 
  #   user2 = build(:contact, name: nil)
  #   expect(user2).to_not be_valid
  # end




  context 'when create a user' do 
    let (:contact1){build :contact}

    it 'should be valid contact with all attributes' do 
        # expect(contact.valid?).to eq(false)
        expect(contact1.valid?).to eq(true)
      end

      it "is not valid without a mobile_number" do
    # user2 = build(:contact, mobile_number: nil)
    # user2 = build(:contact, mobile_number: nil)
    expect(contact1.mobile_number?).to eq(true)
end

    end
  
end
