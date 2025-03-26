defmodule BullsAndCows do
  def score_guess(secret, guess) do
    bulls = Enum.zip(String.graphemes(secret), String.graphemes(guess))
            |> Enum.count(fn {s, g} -> s == g end)

    secret_remains = Enum.zip(String.graphemes(secret), String.graphemes(guess))
            |> Enum.filter(fn {s,g} -> s != g end)
            |> Enum.map (fn {s, _g} -> s end)

    cows = Enum.count(String.graphemes(guess), fn g -> g in secret_remains end)
    "#{bulls} Bulls, #{cows} Cows"
  end
end
