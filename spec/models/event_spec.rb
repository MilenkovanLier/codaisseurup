require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe "association with booking" do
    let(:guest_user) {create :user, email: "guest@user.com"}
    let (:host_user) {create :user, email: "host@user.com"}

    let!(:event) {create :event, user: host_user}
    let!(:registration) {create :registration, event: event, user: guest_user}

    it "has guest" do
      expect(event.guest).to include(guest_user)
    end
  end
