# encoding: UTF-8

class Page < Content::Page
  # pages must respond to the title method
  # so if you remove this 'title' field, then you must replace it with
  # a #title method
  field :title, :string, :default => "New Page"
  def include_in_nav?
    true
  end
  box :sections, :write_level => :root do
    allow_subclasses :Page
  end
end

class HomePage < Page
  layout :home
  field :image do
    size :feature do
      fit 640, 360
      optimize!
    end
  end
end

class AboutPage < Page
  layout :standard
end
class ClientsPage < Page
  layout :standard
end
class ContactPage < Page
  layout :standard
end

class CaseStudy < Page
  field :welcome
  
  field :feature_image, :feature_image
  field :thumb_image, :thumb_image
  field :home_image, :home_image
  
  #logotype
  #client
  #collaborators
  #description
  #hasFrontPageImage
  
  def image_data
    image = self.feature_image
    unless image.empty?
      if self.thumb_image.empty?
        small = image.thumb.src
      else
        small = self.thumb_image.thumb.src
      end
      return { :large => image.large.src, :small => small,
              :home => self.home_image.raw.src}
    end
    {}
  end
end

class Project < CaseStudy
  layout :project
end

class Typeface < CaseStudy
  layout :typeface
end
