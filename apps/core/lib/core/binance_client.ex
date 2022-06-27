defmodule Core.BinanceClient do
  @callback info() :: Binance.ExchangeInfo
  @callback get_order(symbol :: binary, timestamp :: non_neg_integer, order_id :: non_neg_integer) ::
              {:ok, %Binance.OrderResponse{}} | {:error, term}
  @callback buy(symbol :: binary, quantity :: number, price :: number) ::
              {:ok, %Binance.OrderResponse{}} | {:error, term}
  @callback sell(symbol :: binary, quantity :: number, price :: number) ::
              {:ok, %Binance.OrderResponse{}} | {:error, term}
end
