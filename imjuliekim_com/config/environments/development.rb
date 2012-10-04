
publishing_method :simultaneous

simultaneous_connection "/tmp/simultaneous.imjuliekim_com.sock"

# ensures that schema classes are reloaded with every request
reload_classes true

host 'localhost'

back do
	port 2011
end

front do
	port 2012
end
