require 'spec_helper'
describe "Static pages" do
	#let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	#define the subject 'page' should have.....
	subject { page }

	describe "Home page" do
		before{ visit '/' }
		it { should have_content 'Sample App' }
		it { should_not have_title '| Home' }
		#Here full_title() invoke /spec/support/utilities.rb 
		it { should have_title(full_title('')) }
	end
	describe "Help page" do
		before{ visit '/help' }
		it { should have_content 'Help' }
		#Here full_title() invoke /spec/support/utilities.rb 
		it { should have_title(full_title('Help')) }
	end
	describe "About page" do
		before { visit '/about' }
		it { should have_content 'About Us' }
		#Here full_title() invoke /spec/support/utilities.rb 
		it { should have_title(full_title('About Us')) }
	end
	describe "Contact page" do
	 	before { visit '/contact' }
		it { should have_content 'Contact Us' }
		#Here full_title() invoke /spec/support/utilities.rb 
		it { should have_title(full_title('Contact Us')) }
	end
end
