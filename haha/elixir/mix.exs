defmodule HaHa.Mixfile do
  use Mix.Project

  def project do
    [
      app: :haha,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {HaHa.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.4.11"},
      {:phoenix_pubsub, "~> 1.1.2"},
      {:phoenix_html, "~> 2.13.3"},
      {:gettext, "~> 0.11"},
      {:phoenix_live_reload, "~> 1.2.1", only: :dev},
      {:jason, "~> 1.1.2"},
      {:plug_cowboy, "~> 2.1.0"},
      {:x509, "~> 0.8.0", only: :dev}
    ]
  end
end
