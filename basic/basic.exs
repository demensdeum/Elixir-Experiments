defmodule BasicModule do
	def helloworld() do
		IO.puts("Hello World")
	end
	
	def print(text) do
		IO.puts(text)
	end
	
	def returnText() do
		"Returned variable from elixir"
	end
end

i = 14
i = i + 1 // rebinding

IO.puts i

BasicModule.helloworld
BasicModule.print "Hello Text"
IO.puts BasicModule.returnText