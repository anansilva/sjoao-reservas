describe BookingsController do
  describe 'GET #new' do
    it 'renders a new booking page' do
      user = create(:user)
      sign_in user

      get '/bookings/new'

      expect(response).to have_http_status(200)
    end
  end
end
