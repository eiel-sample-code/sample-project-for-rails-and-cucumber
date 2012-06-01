# -*- coding: utf-8 -*-
require 'spec_helper'

describe PostHelper do
  describe "#display_name" do
    subject { helper.display_name(name) }
    context "引数が '' の時" do
      let(:name) { '' }
      it { should eq("匿名") }
    end
    context "引数が '投稿者'の時" do
      let(:name) { "投稿者" }
      it { should eq("投稿者") }
    end
  end
end
