require 'rails_helper'

RSpec.describe "text_components/show", type: :view do
  before(:each) do
    @text_component = assign(:text_component, create(
      :text_component,
      :heading => "Heading",
      :introduction => "MyIntroduction",
      :main_part => "MyMainPart",
      :closing => "MyClosing",
      :from_day => 1,
      :to_day => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Heading/)
    expect(rendered).to match(/MyIntroduction/)
    expect(rendered).to match(/MyMainPart/)
    expect(rendered).to match(/MyClosing/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
