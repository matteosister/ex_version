defmodule ExVersion.Task do
  @moduledoc """
  ex version base task module
  """

  @doc """
  returns the mix project module
  """
  def mix_project do
    Mix.Project.get
  end

  @doc """
  returns the mix project app name
  """
  def app_name do
    mix_project.project[:app]
  end

  @doc """
  returns the actual version
  """
  def actual_version do
    mix_project.project[:version]
  end

  @doc """
  returns the path to the mix file
  """
  def mix_file do
    "#{File.cwd!}/mix.exs"
  end
end
