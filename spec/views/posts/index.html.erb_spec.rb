# -*- coding: utf-8 -*-
require 'spec_helper'

describe "posts/index" do
  subject { render }
  it { should have_css("h1", text: "一行掲示板") }
end
