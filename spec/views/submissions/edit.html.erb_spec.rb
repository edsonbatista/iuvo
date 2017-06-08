require 'rails_helper'

RSpec.describe "submissions/edit", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      :job => nil,
      :user => nil,
      :description => "MyText",
      :status => false
    ))
  end

  it "renders the edit submission form" do
    render

    assert_select "form[action=?][method=?]", submission_path(@submission), "post" do

      assert_select "input#submission_job_id[name=?]", "submission[job_id]"

      assert_select "input#submission_user_id[name=?]", "submission[user_id]"

      assert_select "textarea#submission_description[name=?]", "submission[description]"

      assert_select "input#submission_status[name=?]", "submission[status]"
    end
  end
end
