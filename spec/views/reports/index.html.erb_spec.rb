require 'spec_helper'

describe "reports/index" do
  before(:each) do
    assign(:reports, [
      stub_model(Report,
        :person => "Person",
        :details => "Details"
      ),
      stub_model(Report,
        :person => "Person",
        :details => "Details"
      )
    ])
  end

  it "renders a list of reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
