defmodule LeruaiteBenchmarkingTest do
  use ExUnit.Case
  alias Application.TestHelper

  @tag :benchmark
  test "benchmark fibonacci list generation" do
    # capture benchee output to run assertions
    output = Benchee.run(%{
      "case_10_numbers" => fn() ->
        FibonacciBenchmarking.list(10)
      end,
      "case_1000_numbers" => fn() ->
        FibonacciBenchmarking.list(1000)
      end
    })

    results = Enum.at(output.scenarios, 0)
    assert results.run_time_data.statistics.average <= 50_000_000
  end
end
