require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) { build :user }

  context "when created" do
    it { is_expected.to have_attributes(
      name: "Example Valid User",
      email: "example@example.com",
      password: "password",
      password_confirmation: "password",
      admin: false
    ) }
    it { is_expected.to be_valid }
    it { is_expected.to_not be_admin }
  end

  describe "validations" do

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_length_of(:email).is_at_least(3) }
    it { is_expected.to validate_length_of(:email).is_at_most(255) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

    it { is_expected.to have_secure_password }
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
    it { is_expected.to validate_confirmation_of(:password) }

  end

  describe "associations" do
    it { is_expected.to have_many(:biodiversity_reports) }
  end

end
