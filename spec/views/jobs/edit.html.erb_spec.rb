require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :institution => nil,
      :job_type => nil,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_institution_id[name=?]", "job[institution_id]"

      assert_select "input#job_job_type_id[name=?]", "job[job_type_id]"

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "textarea#job_description[name=?]", "job[description]"
    end
  end
end
