require 'rails_helper'

describe UsersController, type: :controller do
   let(:user) {User.create!(email:"jd@dj.com", password:"123456789")}

  describe 'GET #show' do
   context 'when a user is logged in' do
     it 'loads correct user details' do
       sign_in user
       get :show, params: { id: user.id }
       expect(assigns(:user)).to eq user
       expect(response).to have_http_status(200)
     end
   end

   context 'when a user is not logged in' do
    it 'redirects to login' do
      get :show, params: {id: user.id}
      expect(response).to redirect_to("http://test.host/")
    end
   end
  end
end
