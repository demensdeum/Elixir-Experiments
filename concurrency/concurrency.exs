defmodule Printer do
	def print(text) do
		IO.puts text
	end
end

# synchronized

Printer.print "sync 1"
Printer.print "sync 2"

# asynchronized

spawn(Printer, :print, ["async 1"])
spawn(Printer, :print, ["async 2"])