# encoding: UTF-8

class Section < Page
  def include_in_sections_nav?
    true
  end
end

class ProjectsSection < Section
  layout :showcase
  
  box :case_studies do
    allow :Project
  end
  
end

class TypefacesSection < Section
  layout :showcase
  
  box :case_studies do
    allow :Typeface
  end
  
end
