# -*- coding: utf-8 -*-
module PostHelper
  def display_name(name)
    if name.empty?
      "匿名"
    else
      name
    end
  end
end
