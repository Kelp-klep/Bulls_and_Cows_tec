defmodule BullsAndCows do
  def score_guess(secret, guess) do

    secret_graphemes = String.graphemes(secret)
    guess_graphemes = String.graphemes(guess)

    bulls = Enum.zip(secret_graphemes, guess_graphemes)
            |> Enum.count(fn {s, g} -> s == g end)

    secret_remains = Enum.zip(secret_graphemes, guess_graphemes)
            |> Enum.filter(fn {s,g} -> s != g end)
            |> Enum.map (fn {s, _g} -> s end)

    cows = Enum.count(guess_graphemes, fn g -> g in secret_remains end)
    "#{bulls} Bulls, #{cows} Cows"
  end
end
