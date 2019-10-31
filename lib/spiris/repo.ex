defmodule Spiris.Repo do
  use Ecto.Repo,
    otp_app: :spiris,
    adapter: Ecto.Adapters.Postgres
end
