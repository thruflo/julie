# encoding: UTF-8

class StaticPage < Page
  def include_in_static_nav?
    true
  end
end

class AboutPage < StaticPage
  layout :standard  
end

class ClientsPage < StaticPage
  layout :standard
end

class ContactPage < StaticPage
  layout :standard
end

