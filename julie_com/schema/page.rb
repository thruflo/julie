# encoding: UTF-8

class Page < Content::Page
  # pages must respond to the title method
  # so if you remove this 'title' field, then you must replace it with
  # a #title method
  field :title, :string, :default => "New Page"
  def include_in_sections_nav?
    false
  end
  def include_in_static_nav?
    false
  end
end

class HomePage < Page
  layout :home
  box :sections, :write_level => :root do
    allow_subclasses :Section
    allow_subclasses :StaticPage
  end
end
