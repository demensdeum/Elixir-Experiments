defmodule TestProcess do
	def tell(receiver, message) do
		send receiver, message
	end
	
	def listen do
		receive do
			message ->
			IO.puts message
		end
		listen()
	end
end

listener = spawn TestProcess, :listen, []

# async calls, sync calls, different syntax

spawn TestProcess, :tell, [listener, "Received Message 1"]
spawn TestProcess, :tell, [listener, "Received Message 2"]
spawn TestProcess, :tell, [listener, "Received Message 3"]
TestProcess.tell listener, "Received Message 4"
TestProcess.tell(listener, "Received Message 5")