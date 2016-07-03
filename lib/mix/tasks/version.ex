defmodule Mix.Tasks.ExVersion.Version do
  @shortdoc "Outputs the project version"

  use Mix.Task
  import ExVersion.Task

  def run(_) do
    IO.puts actual_version
  end
end
