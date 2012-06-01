# -*- coding: utf-8 -*-
前提 /^"(.*?)"の"(.*?)"という投稿がある$/ do |name, comment|
  FactoryGirl.create :post, name: name, comment: comment
end

もし /^"トップ"ページにアクセス$/ do
  visit("/")
end

ならば /^"(.*?)"と表示されている$/ do |str|
  should have_content(str)
end

もし /^"(.*?)"に"(.*?)"と入力$/ do |label, value|
  pending # express the regexp above with the code you wish you had
end

もし /^"(.*?)"をクリック$/ do |str|
  pending # express the regexp above with the code you wish you had
end
