require "sinatra"

def page_contents(title)
	arr = Array.new
	begin
		File.open("pages/#{title}.txt", 'r') do |file|				
			arr = file.readlines								
		end
	rescue Errno::ENOENT 
		arr[0] = "<h1>File not found</h1>"
	end
	arr
end	

get '/' do
	erb :welcome
end

get "/test" do
	File.open("pages/test.txt", "w") do |file|
		file.puts "This is crazy"
	end
end

get "/page_content/:title" do			
	text_lines = page_contents(params[:title]) 
	text_lines = text_lines.join
	text_lines.gsub!(/\n/, "<br>")

	render :html, "<p>#{text_lines}</p>"
end

get '/page_content' do
		text_lines = page_contents("Ryan")			
		text_lines = text_lines.join
		text_lines.gsub!(/\n/, "<br>")
		render :html, "<h1>#{text_lines}</h1>"
end
