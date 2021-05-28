describe BookingsController do
  describe '#create' do
    it 'successfully creates a Bookings' do
      house = create(:house)
      user = create(:user)

      sign_in user

      booking_params = {
        house_id: house.id,
        check_in: Date.today,
        check_out: Date.today + 2.days
      }

      put :create, params: { booking: booking_params }

      expect(Booking.count).to eq(1)
    end
  end
end
