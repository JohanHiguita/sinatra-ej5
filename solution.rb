require 'sinatra'

# get '/' do
# 	"<b>HOLA</b>"
# 	(1..11).each do |i|
# 		"Johan"
# 		if i.even?
# 			"<h2>#{i} Soy Par!</h2>"
# 		else
# 			"<h2>#{i} Soy Impar!</h2>"
# 		end

# 	end 
# end

get '/' do
  def pares
    #@text =""
    (1..50).each do |i|
      if i % 2 == 0
        @num = "#{i} Soy Par!"
      else
        @num = "#{i} Soy Impar!"
      end
      @text = "<h1>#{@text}#{@num}<h1>"
      
    end
    @text
  end
   erb :index
end