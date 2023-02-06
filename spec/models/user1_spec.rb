require 'rails_helper'

RSpec.describe User1, type: :model do
  context 'when create a user' do 
    let (:user1){build :user1}

    it 'should be valid user with all attributes' do 
        expect(user1.valid?).to eq(true)
      end



    end
end
