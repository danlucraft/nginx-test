# MASTER

#\ -w -p 8085
#use Rack::Reloader, 0
#use Rack::ContentLength

SRC=<<-HTML
<html>
<body>
   Hi<br />
    <!--# include virtual="/remote/1" -->
    <!--# include virtual="/remote/2" -->
    <!--# include virtual="/remote/3" -->
  There.
</body>
</html>
HTML

app = proc do |env|
  [ 200, {'Content-Type' => 'text/html'}, SRC ]
end

run app