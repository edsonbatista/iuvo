require 'rails_helper'

RSpec.describe "submissions/index", type: :view do
  before(:each) do
    assign(:submissions, [
      Submission.create!(
        :job => nil,
        :user => nil,
        :description => "MyText",
        :status => false
      ),
      Submission.create!(
        :job => nil,
        :user => nil,
        :description => "MyText",
        :status => false
      )
    ])
  end

  it "renders a list of submissions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
