defmodule ElixirReportsGenerator do
  alias ElixirReportsGenerator.Parser

  @available_foods [ "sushi", "prato_feito", "pizza", "pastel", "hambúrguer", "esfirra", "churrasco", "açaí"]
  @options [ "foods", "users" ]

  def build(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(report_acc(), fn line, report -> sum_values(line, report) end)
  end

  def fetch_higher_cost(report, option) when option in @options do
    {:ok, Enum.max_by(report[option], fn {_key, value} -> value end)}
  end

  def fetch_higher_cost(_report, _option), do: {:error, "Invalid option"}

  defp sum_values([id, food_name, price], %{"foods" => foods, "users" => users} = report) do
    users = Map.update(users, id, 0, &(&1 + price))
    foods = Map.update(foods, food_name, 0, &(&1 + 1))

    %{report | "foods" => foods, "users" => users}
  end

  defp report_acc do
    foods = Enum.into(@available_foods, %{}, &{&1, 0})
    users = Enum.into(1..30, %{}, &{Integer.to_string(&1), 0})

    %{
      "foods" => foods,
      "users" => users
    }
  end
end
