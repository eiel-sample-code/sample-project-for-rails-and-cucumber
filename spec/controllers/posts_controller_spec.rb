require 'spec_helper'

describe PostsController do
  describe "GET index" do
    subject { response }
    before :each do
      get :index
    end
    it { should be_success }
    describe "@posts" do
      subject { assigns(:posts) }
      it { should_not be_nil }
    end
  end
end
