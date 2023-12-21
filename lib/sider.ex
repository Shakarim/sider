defmodule Sider do
  @moduledoc """
  Documentation for `Sider`.
  """

  alias Sider.Quantity
  alias Quantity.{Angle, Frequency, SolidAngle}

  alias Sider.Unit.{Radian, Hertz, Steradian}

  alias SI.Unit
  require SI.Unit

  Module.register_attribute(__MODULE__, :units, accumulate: true)

  @basic_quantities [
    {Angle.name_atom(), Angle},
    {Frequency.name_atom(), Frequency},
    {SolidAngle.name_atom(), SolidAngle}
  ]

  # === UNITS ===
  @units {Angle.name_atom(), Unit.generate_module_variations(Radian)}
  Unit.compile_derivative_units(Radian)
  Unit.compile_variation_conversions(Radian)

  @units {Frequency.name_atom(), Unit.generate_module_variations(Hertz)}
  Unit.compile_derivative_units(Hertz)
  Unit.compile_variation_conversions(Hertz)

  @units {SolidAngle.name_atom(), Unit.generate_module_variations(Steradian)}
  Unit.compile_derivative_units(Steradian)
  Unit.compile_variation_conversions(Steradian)

  def quantities(), do: @basic_quantities
  def units(), do: @units
end
