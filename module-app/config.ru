# MODULE

#\ -w -p 8095
use Rack::Reloader, 0
use Rack::ContentLength

SRC=<<-HTML
  <div>
    <h3>Module 1</h3>
  </div>
HTML

app = proc do |env|
  [ 200, {'Content-Type' => 'text/html'}, SRC ]
end

run app