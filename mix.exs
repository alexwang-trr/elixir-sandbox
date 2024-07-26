defmodule Example.MixProject do
  use Mix.Project

  def project do
    [
      app: :example,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Example, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:uuid, "~> 1.1.8"},
      {:starkbank_ecdsa, "1.0.0"},

      # HTTP clients
      {:httpoison, "~> 2.1"},
      {:hackney, "~> 1.9"},
      {:paginator, "0.6.0"},
      {:sobelow, "~> 0.13", only: [:dev, :test], runtime: false}
    ]
  end
end
