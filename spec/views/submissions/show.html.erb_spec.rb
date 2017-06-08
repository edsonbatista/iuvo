require 'rails_helper'

RSpec.describe "submissions/show", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      :job => nil,
      :user => nil,
      :description => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
