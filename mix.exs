defmodule Commit.Mixfile do
  use Mix.Project

  def project do
    [app: :comet,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :cowboy, :plug, :tentacat, :timex],
     mod: {Commit.Api, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
			{:cowboy, "~> 1.0.3"},
			{:plug, "~> 1.0"},
			{:tentacat, "~> 0.2"},
			{:timex, "~> 2.1.4"},
			{:poison, "~> 1.4.0"},
			{:plug_cors, "~> 0.7.3"}
		]
  end
end
