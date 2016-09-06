require 'spec_helper'
describe "Static pages" do
	#let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	#define the subject 'page' should have.....
	subject { page }

	shared_examples_for "all static pages" do
		it { should have_content(heading) }
		#Here full_title() invoke /spec/support/utilities.rb 
		it { should have_title(full_title(page_title))}
	end	

	describe "Home page" do
		before{ visit '/' }
		#Here 'let' is a local variable it will appear when need it
		#not like instance variable
		let(:heading)   { 'Sample App' }
		let(:page_title){ '' }
		it_should_behave_like "all static pages"
		it { should_not have_title('| Home') }
	end
	describe "Help page" do
		before{ visit '/help' }
		let(:heading)   { 'Help' }
		let(:page_title){ 'Help' }
		it_should_behave_like "all static pages"
	end
	describe "About page" do
		before { visit '/about' }
		let(:heading)   { 'About Us' }
		let(:page_title){ 'About Us' }
		it_should_behave_like "all static pages"
	end
	describe "Contact page" do
	 	before { visit '/contact' }
		let(:heading)   { 'Contact Us' }
		let(:page_title){ 'Contact Us' }
		it_should_behave_like "all static pages"
	end


	# Test right_links
	it "should have the right links on the layout" do
		visit '/'
		click_link "About"
		expect(page).to have_title(full_title('About Us'))
		click_link "Help"
		expect(page).to have_title(full_title('Help'))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact Us'))
		click_link "Home"
		expect(page).to have_title(full_title(''))
		click_link "Sign up now!"
		expect(page).to have_title(full_title('Sign Up'))
		click_link "sample app"
		expect(page).to have_title(full_title(''))
	end
end





