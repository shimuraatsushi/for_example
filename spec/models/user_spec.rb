require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe '.get_email' do
    subject { user.get_email }
    let(:user) { create(:user, email: 'shimura.atsushi@example.com') }
    context 'emailが一致する' do
      it 'emailが一致する' do
        expect(subject).to eq(user.email)
      end
    end
  end
end
