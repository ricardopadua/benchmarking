defmodule Leruaite.MixProject do
  use Mix.Project

  def project do
    [
      app: :leruaite,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Leruaite.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:scrivener_list, "~> 2.0"},
      {:phoenix, "~> 1.5"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_ecto, "~> 4.0"},
      {:phoenix_html, "~> 2.14"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:ecto_sql, "~> 3.2"},
      {:ecto, "~> 3.2"},
      {:floki, "~> 0.26"},
      {:cloak_ecto, "~> 1.1.1"},
      {:postgrex, ">= 0.0.0"},
      {:gettext, "~> 0.11"},
      {:ja_serializer, "~> 0.16.0"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:tesla, "~> 1.2"},
      {:hackney, "~> 1.15"},
      {:libvault, "~> 0.1"},
      {:scrivener_ecto, "~> 2.0"},
      {:scrivener_html, "~> 1.6"},
      {:timex, "~> 3.7.5"},
      {:oban, "~> 2.0"},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:phoenix_live_view, "~> 0.15.0"},
      {:ecto_enum, "~> 1.4"},
      {:ex_machina, "~> 2.7", only: [:test, :dev]},
      {:mox, "~> 1.0.0", only: :test},
      {:oauth2, "~> 2.0"},
      {:csv, "~> 2.3"},
      {:goth, "~> 1.2.0"},
      {:telemetry_metrics, "~> 0.4"},
      {:telemetry_poller, "~> 0.4"},
      {:opentelemetry, "~> 0.4"},
      {:opentelemetry_exporter, "~> 0.3.0"},
      {:logger_json, "~> 4.0"},
      {:joken, "~> 2.3.0"},
      {:phoenix_live_dashboard, "~> 0.4"},
      {:excoveralls, "~> 0.10", only: :test},
      {:brcpfcnpj, "~> 0.2.1"},
      {:ecto_immigrant, "~> 0.3.0"},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:ex_aws, "~> 2.1"},
      {:ex_aws_s3, "~> 2.0"},
      {:sweet_xml, "~> 0.6"},
      {:nimble_csv, "~> 1.1"},
      {:soap, "~> 1.0"},
      {:xml_builder, "~> 2.1"},
      {:bamboo, "~> 2.0"},
      {:bamboo_phoenix, "~> 1.0.0"},
      {:sentry, "8.0.0"},
      {:elixlsx, "~> 0.4.2"},
      {:xlsxir, "~> 1.6.4", only: :test},
      {:temporary_env, "~> 2.0", only: :test, runtime: false},
      {:brod, "~> 3.14.0"},
      {:crc32cer, "~> 0.1.4", override: true},
      {:fuse, "~> 2.4"},
      {:decorator, "~> 1.4"},
      {:junit_formatter, "~> 3.1", only: [:test]},
      {:tarams, "~> 1.0.0"}
    ]
  end
end
