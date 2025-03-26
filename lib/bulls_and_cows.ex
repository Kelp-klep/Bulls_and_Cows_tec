defmodule BullsAndCows do
  def score_guess(secret, guess) do
    bulls = Enum.zip(String.graphemes(secret), String.graphemes(guess))
            |> Enum.count(fn {s, g} -> s == g end)
    "#{bulls} Bulls, 0 Cows"
  end
end
