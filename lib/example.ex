defmodule Example do
  use Application

  # @x 5
  # alias UUID
  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    # name = "test";
    # status = Enum.random([:gold, :silver, :bronze])

    # case status do
    #   :gold -> IO.puts("Welcome to the lounge, #{name}")
    #   :bronze -> IO.puts("not part of team")
    #   _-> IO.puts("Out of bounds")
    # IO.puts(?a)
    a = 10
    b = 3
    IO.puts("Hello world!")
    IO.puts(Integer.mod(b, a))
    :io.format("~.20f\n", [0.1])
    memberships = {:bronze, :silver}
    memberships = Tuple.append(memberships, :gold)
    IO.inspect(memberships)
    end
end
