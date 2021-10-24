defmodule ListFilter do
  def call(list) do
    Enum.reduce(list, [], fn item, acc -> callback(item, acc) end)
  end

  defp callback(item, acc) do
    if is_integer(item) and rem(item, 2) > 0 do
      acc ++ [item]
    else
      acc
    end
  end
end
