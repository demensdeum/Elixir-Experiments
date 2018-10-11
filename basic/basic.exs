defmodule RayIntersectionModule do
	def helloworld() do
		IO.puts("Hello World")
	end
	
	def print(text) do
		IO.puts(text)
	end
	
	def printAndReturn() do
		"Returned variable from elixir"
	end
end

RayIntersectionModule.helloworld()
RayIntersectionModule.print("Hello Text")
IO.puts(RayIntersectionModule.printAndReturn())