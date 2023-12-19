defmodule Sider do
  @moduledoc """
  Documentation for `Sider`.
  """

  alias Sider.Quantity
  alias Quantity.{Angle, Frequency}

  alias Sider.Unit.{Radian, Hertz}

  alias SI.Unit
  require SI.Unit

  Module.register_attribute(__MODULE__, :units, accumulate: true)

  @basic_quantities [
    {Angle.symbol(), Angle},
    {Frequency.symbol(), Frequency}
  ]

  # === UNITS ===
  @units {Angle.symbol(), Unit.generate_module_variations(Radian)}
  Unit.compile_derivative_units(Radian)
  Unit.compile_variation_conversions(Radian)

  @units {Frequency.symbol(), Unit.generate_module_variations(Hertz)}
  Unit.compile_derivative_units(Hertz)
  Unit.compile_variation_conversions(Hertz)

  def quantities(), do: @basic_quantities
  def units(), do: @units
end
