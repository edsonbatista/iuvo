require 'rails_helper'

RSpec.describe "submissions/new", type: :view do
  before(:each) do
    assign(:submission, Submission.new(
      :job => nil,
      :user => nil,
      :description => "MyText",
      :status => false
    ))
  end

  it "renders new submission form" do
    render

    assert_select "form[action=?][method=?]", submissions_path, "post" do

      assert_select "input#submission_job_id[name=?]", "submission[job_id]"

      assert_select "input#submission_user_id[name=?]", "submission[user_id]"

      assert_select "textarea#submission_description[name=?]", "submission[description]"

      assert_select "input#submission_status[name=?]", "submission[status]"
    end
  end
end
