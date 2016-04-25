defmodule ProcessesTests do
  use ExUnit.Case
  import TestHarness

  test "Processes" do
    answers = [
      true,
      :running,
      "hola!",
      :how_are_you?,
      {:waited_too_long, "I am inpatient"},
      false,
      {:multiple, [true, false]},
      {:exited, :random_reason},
      true,
      false,
      {:exited, :normal},
      {:exited, :normal},
      ]

    test_all(Processes, answers)
  end
end
