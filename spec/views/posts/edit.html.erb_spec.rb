require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :post => "MyText",
      :replies => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "textarea#post_post", :name => "post[post]"
      assert_select "input#post_replies", :name => "post[replies]"
    end
  end
end
