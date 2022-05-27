# require 'rails_helper'

# RSpec.describe User, type: :model do
#   # before(:each) do
#   #     User.destroy_all
#   user = User.create(name: 'anny', email: 'example@gmail.com', password: '3344455')
#   it 'create a user' do
#     expect(user).to be_valid
#   end
# # end
# end


# require 'rails_helper'

# RSpec.describe User, type: :model do
#   subject { User.create(name: 'Blessing', surname: 'John', email: 'testtest@gmail.com', password: '444444444') }

#   it 'Name must not be blank' do
#     subject.name = nil
#     expect(subject).to_not be_valid
#   end

#   it 'Surame must not be blank' do
#     subject.surname = nil
#     expect(subject).to_not be_valid
#   end

#   it 'Name must not be blank' do
#     subject.name = 'Blessing'
#     expect(subject).to be_valid
#   end

#   it 'Name must not be blank' do
#     subject.surname = 'John'
#     expect(subject).to be_valid
#   end

#   it 'email must not be blank' do
#     subject.email = 'testtest@gmail.com'
#     expect(subject).to be_valid
#   end

#   it 'password must not be blank' do
#     subject.password = '444444444'
#     expect(subject).to be_valid
#   end
# end
