require 'spec_helper'

describe "messages/show.html.erb" do
  it "displays the text attribute of the message" do
    assign :message, double("MessageAsISpecified", :text => "Hello world!")
    render
    rendered.should have_content("Hello world!")
  end
end

