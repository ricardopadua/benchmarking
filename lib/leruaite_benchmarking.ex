defmodule LeruaiteBenchmarking do
  def list(number), do: Enum.map(0..number, &fibonacci/1)

  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n), do: fibonacci(0, 1, n-2)

  def fibonacci(_, prv, -1), do: prv
  def fibonacci(prvprv, prv, n) do
      next = prv + prvprv
      fibonacci(prv, next, n-1)
  end
end
