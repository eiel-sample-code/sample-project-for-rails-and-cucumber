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
      it { should be_a(Array) }
    end
  end
end
