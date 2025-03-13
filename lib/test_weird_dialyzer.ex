defmodule TestWeirdDialyzer do
  @moduledoc false

  def hello(name) do
    if name do
      hell_o(name)
    end

    {:ok, "Hello #{name}"}
  end

  def hello2(name) do
    hell_o(name)

    {:ok, "Hello #{name}"}
  end

  def hello3(name) do
    _ = hell_o(name)

    _ =
      if name do
        hell_o(name)
      end

    {:ok, "Hello #{name}"}
  end

  defp hell_o(name), do: "Hello, #{name}"
end
