require "sinatra"

get '/' do
	render :html, "<h1>This is the root page</h1>"
end

get '/apple' do
	"Here's a juicy apple"
end
