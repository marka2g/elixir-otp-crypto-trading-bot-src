defmodule Core.Binance do
  @behaviour Core.BinanceClient

  def info() do
    Binance.get_exchange_info()
  end

  def get_order(symbol, timestamp, order_id) do
    Binance.get_order(symbol, timestamp, order_id)
  end

  def buy(symbol, quantity, price) do
    Binance.order_limit_buy(symbol, quantity, price, "GTC")
  end

  def sell(symbol, quantity, price) do
    Binance.order_limit_sell(symbol, quantity, price, "GTC")
  end
end
