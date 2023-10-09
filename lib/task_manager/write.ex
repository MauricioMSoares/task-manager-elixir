defmodule Mix.Tasks.Write do
    @moduledoc """
    'Write' task documentation.

    Creates a file named 'file.txt' containing a random number.

    Usage: `mix write`
    """

    use Mix.Task

    @shortdoc "Creates a file named 'file.txt' containing a random number."
    def run(_) do
        TaskManager.RandomNumber.write
    end
end