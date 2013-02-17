
background_mode :simultaneous

simultaneous_connection "/tmp/simultaneous.julie_com.sock"

# ensures that schema classes are reloaded with every request
reload_classes true

host 'localhost'

# This sets the port that the editing interface runs under
back do
  port 2011
end

# This sets the port that the published/live version of the development
# site runs under.
front do
  port 2012
end
