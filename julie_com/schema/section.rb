# encoding: UTF-8

class Section < Page
  def include_in_sections_nav?
    true
  end
end
class ProjectsSection < Section
  layout :showcase
  box :casestudies do
    allow :Project
  end
end
class TypefacesSection < Section
  layout :showcase
  box :casestudies do
    allow :Typeface
  end
end

