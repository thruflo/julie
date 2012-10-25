# encoding: UTF-8

class Page < Spontaneous::Page
  # pages must respond to the title method
  # so if you remove this 'title' field, then you must replace it with
  # a #title method
  field :title, :string, :default => "New Page"
  def include_in_nav?
    true
  end
end

class HomePage < Page
  field :welcome
end

