require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :institution => nil,
      :job_type => nil,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_institution_id[name=?]", "job[institution_id]"

      assert_select "input#job_job_type_id[name=?]", "job[job_type_id]"

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "textarea#job_description[name=?]", "job[description]"
    end
  end
end
