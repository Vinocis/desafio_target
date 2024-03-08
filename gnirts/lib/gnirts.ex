defmodule Gnirts do
  def reverse(word) when is_bitstring(word) do
    word
    |> String.graphemes()
    |> reverse([])
  end

  defp reverse([], acc), do: to_string(acc)
  defp reverse([head | tail], acc) do
    reverse(tail, [head | acc])
  end
end
