defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return only odd integers" do
      list = [
        1,
        2,
        3,
        4,
        "teste",
        5,
        false,
        7,
        true,
        2.5,
        %{a: 4},
        fn i, j -> i + j end,
        10,
        11,
        [3, 5, 7],
        13
      ]

      assert ListFilter.call(list) == [1, 3, 5, 7, 11, 13]
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == []
    end
  end
end
