# -*- coding: utf-8 -*-
require 'spec_helper'

describe "posts/index" do
  subject { render }

  context "投稿があるとき" do
    before :each do
      assign :posts, FactoryGirl.create_list(:post,1)
    end
    it { should have_css("#posts .name", text: "とうこうしゃ") }
    it { should have_css("#posts .comment", text: "こめんと") }
    it { should have_css("h1", text: "一行掲示板") }
  end

  context "投稿がないとき" do
    before :each do
      assign :posts, []
    end
    it { should_not have_css(".post") }
    it { should have_css("h1", text: "一行掲示板") }
  end
end
