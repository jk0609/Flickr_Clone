require 'rails_helper'

describe "add new image" do

  before(:each) do
    User.destroy_all
    Image.destroy_all
    @user = FactoryGirl.create(:user)
    login_as(@user, :scope=>:user)
    visit new_user_image_path(@user)
    attach_file "Image path", "spec/asset_specs/photos/cat.jpg"
    click_on 'Create Image'
  end

  # after(:each) do
  #   logout(:user)
  # end

  it "adds a new image" do
    expect(page).to have_content 'Your Photos'
  end

  it "navigates to image display" do
    click_on 'Cat'
    expect(page).to have_content 'Add Comment'
  end
end
