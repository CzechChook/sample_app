require 'spec_helper'

describe "UserPages" do
  subject { page }
  describe "Signup page" do
	before { visit '/signup' }
    it { should have_content 'Sign Up' }
	it { should have_title(full_title('Sign Up')) }
  end
end
