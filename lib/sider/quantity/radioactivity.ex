defmodule Sider.Quantity.Radioactivity do
  @moduledoc false

  use SI.Quantity,
      name: "radioactivity",
      symbol: "λ",
      unit: Sider.Unit.Becquerel
end
