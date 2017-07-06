require 'rails_helper'

describe "add new image" do

  before(:each) do
    User.destroy_all
    Image.destroy_all
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope=>:user)
  end

  it "text" do
    @image = FactoryGirl.create(:image, :user_id => @user.id)
    visit user_image_path(@user,@image)
    fill_in 'Content', :with => "Nice cat"
    click_on 'Create Comment'
    expect(page).to have_content 'Nice cat'
  end

end
