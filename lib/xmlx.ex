defmodule Xmlx do

  alias Xmlx.Common
  alias Xmlx.Parser
  alias Xmlx.Finder

  @moduledoc """
  Xmlx simple XML parser library
  """

  @doc """
  Minify XML adding all elements inline whithout spaces or break lines.
  """
  @spec minify(String) :: String
  def minify(xml) do
    Common.minify(xml)
  end

  @doc """
  Parse XML in a structured key/values list.
  """
  @spec parse(String) :: List
  def parse(xml) do
    Parser.parse(xml)
  end

  @doc """
  Return a key/value list with namespace declarations.
  """
  @spec get_namespaces(String) :: List
  def get_namespaces(xml) do
    Common.get_namespaces(xml)
  end

  @doc """
  Simple search to return a filtered list itens based on attribute or element name.
  """
  @spec find(List, Atom) :: List
  def find(document, filter) do
    Finder.find(document, filter, []);
  end

end
