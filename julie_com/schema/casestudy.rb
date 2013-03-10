# encoding: UTF-8

class CaseStudy < Page
  field :client
  field :collaborators
  field :description, :richtext
  field :home_page_image, :image do
    size :medium do
      fit 320, 320
      optimize!
    end
  end
  field :logo_image, :image do
    size :medium do
      fit 270, 135
      optimize!
    end
  end
  box :media do
    allow :CaseStudyImage
    #allow :Video
  end
end

class Project < CaseStudy
  layout :project
end

class Typeface < CaseStudy
  layout :typeface
end
