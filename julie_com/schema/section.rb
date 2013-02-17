# encoding: UTF-8

class ProjectsSection < Page
  layout :showcase
  
  box :case_studies do
    allow :Project
  end
  
end

class TypefacesSection < Page
  layout :showcase
  
  box :case_studies do
    allow :Typeface
  end
  
end
