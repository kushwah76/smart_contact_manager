require 'rails_helper'

RSpec.describe Contact, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject{Contact.new(name:"kushwah",email:"kushwah@gmail.com",mobile_number:7649008047)}

  # it "is valid with valid attributes" do
  #   expect(subject).to be_valid
  # end

  it "is not valid without a name" do
    subject.name = nil
    #expect(subject).to be_valid
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a mobile_number" do
    subject.mobile_number = nil
    expect(subject).to_not be_valid
  end


end
