require 'rails_helper'

RSpec.describe "institutions/show", type: :view do
  before(:each) do
    @institution = assign(:institution, Institution.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
