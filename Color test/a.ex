# Define a module
defmodule a do
  # Define a function with pattern matching
  def greet(:world), do: IO.puts("Hello, World!")
  def greet(name), do: IO.puts("Hello, #{name}!")

  # Define a recursive function
  def factorial(0), do: 1
  def factorial(n), do: n * factorial(n - 1)



  # Define a process
  defmodule MyProcess do
    def start_link do
      Task.start_link(fn -> loop(0) end)
    end

    defp loop(count) do
      IO.puts("Count: #{count}")
      Process.sleep(1000)
      loop(count + 1)
    end
  end
end

# Spawn a new process
MyApp.MyProcess.start_link()

# Call functions from the module
MyApp.greet(:world)
MyApp.greet(:World)
MyApp.greet("Alice")

# Use pattern matching in function calls
result = MyApp.factorial(5)
IO.puts("Factorial of 5: #{result}")

