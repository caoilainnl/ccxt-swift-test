//
//  ContentView.swift
//  test-ccxt-cocoapod
//
//  Created by Caoilainn on 2025-06-12.
//

import SwiftUI
import CCXTSwift

struct ContentView: View {
    @State private var marketsText: String = "Loading..."
    private var configJson = [
        "apiKey": "your api key",
        "secret": "your secret",
        "password": "passphrase"
    ]

    private var orderId = "1"
    private var cancelOrderId = "1"
    private var spotSymbol: String = "XRP/USDT"
    private var futuresSymbol: String = "XRP/USDT:USDT"
    private var exchange: CCXTExchange
    private var xrpPrice = 2.0591
    
    init () {
        self.exchange = Bitget(config: configJson)!
    }
    
    var body: some View {
        VStack {
            ScrollView {
            
                Button("Fetch Markets") {
                    fetchMarkets()
                }
                Button("Fetch Tickers") {
                    fetchTickers()
                }
                Button("Fetch Balance") {
                    fetchBalance()
                }
                Button("Create Order") {
                    createOrder()
                }
                Button("Fetch Positions History") {
                    fetchPositionsHistory()
                }
                Button("addMargin"){
                    addMargin()
                }
                Button("borrowCrossMargin"){
                    borrowCrossMargin()
                }
                Button("borrowIsolatedMargin"){
                    borrowIsolatedMargin()
                }
                Button("borrowMargin"){
                    borrowMargin()
                }
                Button("cancelAllOrders"){
                    cancelAllOrders()
                }
//                Button("cancelAllOrdersWs"){
//                        cancelAllOrdersWs()
//                }
                Button("cancelOrder"){
                    cancelOrder()
                }
//                Button("cancelOrderWs"){
//                        cancelOrderWs()
//                }
                Button("cancelOrders"){
                    cancelOrders()
                }
//                Button("cancelOrdersWs"){
//                        cancelOrdersWs()
//                }
                Button("closeAllPositions"){
                    closeAllPositions()
                }
                Button("closePosition"){
                    closePosition()
                }
                Button("createLimitOrder"){
                    createLimitOrder()
                }
                Button("createMarketBuyOrderWithCost"){
                    createMarketBuyOrderWithCost()
                }
                Button("createMarketOrder"){
                    createMarketOrder()
                }
//                Button("createMarketOrderWs"){
//                        createMarketOrderWs()
//                }
                Button("createOrder"){
                    createOrder()
                }
                Button("createOrders"){
                    createOrders()
                }
                Button("createOrderWithTakeProfitAndStopLoss"){
                    createOrderWithTakeProfitAndStopLoss()
                }
                Button("createPostOnlyOrder"){
                    createPostOnlyOrder()
                }
                Button("createStopLimitOrder"){
                    createStopLimitOrder()
                }
                Button("createStopLossOrder"){
                    createStopLossOrder()
                }
                Button("createStopMarketOrder"){
                    createStopMarketOrder()
                }
                Button("createStopOrder"){
                    createStopOrder()
                }
                Button("createTakeProfitOrder"){
                    createTakeProfitOrder()
                }
                Button("createTrailingPercentOrder"){
                    createTrailingPercentOrder()
                }
                Button("createTriggerOrder"){
                    createTriggerOrder()
                }
                Button("editOrder"){
                    editOrder()
                }
                Button("fetchBalance"){
                    fetchBalance()
                }
                Button("fetchBorrowInterest"){
                    fetchBorrowInterest()
                }
                Button("fetchCanceledAndClosedOrders"){
                    fetchCanceledAndClosedOrders()
                }
                Button("fetchCanceledOrders"){
                    fetchCanceledOrders()
                }
                Button("fetchClosedOrders"){
                    fetchClosedOrders()
                }
                Button("fetchConvertCurrencies"){
                    fetchConvertCurrencies()
                }
                Button("fetchConvertQuote"){
                    fetchConvertQuote()
                }
                Button("fetchConvertTradeHistory"){
                    fetchConvertTradeHistory()
                }
                Button("fetchCrossBorrowRate"){
                    fetchCrossBorrowRate()
                }
                Button("fetchCurrencies"){
                    fetchCurrencies()
                }
                Button("fetchCurrenciesWs"){
                    fetchCurrenciesWs()
                }
                Button("fetchDepositAddress"){
                    fetchDepositAddress()
                }
                Button("fetchDeposits"){
                    fetchDeposits()
                }
                Button("fetchDepositWithdrawFee"){
                    fetchDepositWithdrawFee()
                }
                Button("fetchDepositWithdrawFees"){
                    fetchDepositWithdrawFees()
                }
                Button("fetchFundingHistory"){
                    fetchFundingHistory()
                }
                Button("fetchFundingRate"){
                    fetchFundingRate()
                }
                Button("fetchFundingRateHistory"){
                    fetchFundingRateHistory()
                }
                Button("fetchFundingInterval"){
                    fetchFundingInterval()
                }
                Button("fetchFundingRates"){
                    fetchFundingRates()
                }
                Button("fetchIndexOHLCV"){
                    fetchIndexOHLCV()
                }
                Button("fetchIsolatedBorrowRate"){
                    fetchIsolatedBorrowRate()
                }
                Button("fetchL2OrderBook"){
                    fetchL2OrderBook()
                }
                Button("fetchLedger"){
                    fetchLedger()
                }
                Button("fetchLeverage"){
                    fetchLeverage()
                }
                Button("fetchLongShortRatioHistory"){
                    fetchLongShortRatioHistory()
                }
                Button("fetchMarginMode"){
                    fetchMarginMode()
                }
                Button("fetchMarketLeverageTiers"){
                    fetchMarketLeverageTiers()
                }
                Button("fetchMarkets"){
                    fetchMarkets()
                }
                Button("fetchMarkOHLCV"){
                    fetchMarkOHLCV()
                }
                Button("fetchMyLiquidations"){
                    fetchMyLiquidations()
                }
                Button("fetchMyTrades"){
                    fetchMyTrades()
                }
                Button("fetchOHLCV"){
                    fetchOHLCV()
                }
                Button("fetchOpenInterest"){
                    fetchOpenInterest()
                }
                Button("fetchOpenOrders"){
                    fetchOpenOrders()
                }
                Button("fetchOrder"){
                    fetchOrder()
                }
                Button("fetchOrderBook"){
                    fetchOrderBook()
                }
                Button("fetchPosition"){
                    fetchPosition()
                }
                Button("fetchPositionHistory"){
                    fetchPositionHistory()
                }
                Button("fetchPositionsHistory"){
                    fetchPositionsHistory()
                }
                Button("fetchPositions"){
                    fetchPositions()
                }
                Button("fetchTicker"){
                    fetchTicker()
                }
                Button("fetchTickers"){
                    fetchTickers()
                }
                Button("fetchTime"){
                    fetchTime()
                }
                Button("fetchTrades"){
                    fetchTrades()
                }
                Button("fetchTradingFee"){
                    fetchTradingFee()
                }
                Button("fetchTradingFees"){
                    fetchTradingFees()
                }
                Button("fetchTransfers"){
                    fetchTransfers()
                }
                Button("fetchWithdrawals"){
                    fetchWithdrawals()
                }
                Button("reduceMargin"){
                    reduceMargin()
                }
                Button("repayCrossMargin"){
                    repayCrossMargin()
                }
                Button("repayIsolatedMargin"){
                    repayIsolatedMargin()
                }
                Button("setLeverage"){
                    setLeverage()
                }
                Button("setMarginMode"){
                    setMarginMode()
                }
                Button("setPositionMode"){
                    setPositionMode()
                }
                Button("transfer"){
                    transfer()
                }
//                Button("watchBalance"){
//                        watchBalance()
//                }
//                Button("watchMyTrades"){
//                        watchMyTrades()
//                }
//                Button("watchOHLCV"){
//                        watchOHLCV()
//                }
//                Button("watchOrderBook"){
//                        watchOrderBook()
//                }
//                Button("watchBidsAsks"){
//                        watchBidsAsks()
//                }
//                Button("watchOrderBookForSymbols"){
//                        watchOrderBookForSymbols()
//                }
//                Button("watchOrders"){
//                        watchOrders()
//                }
//                Button("watchPositions"){
//                        watchPositions()
//                }
//                Button("watchTicker"){
//                        watchTicker()
//                }
//                Button("watchTickers"){
//                        watchTickers()
//                }
//                Button("watchTrades"){
//                        watchTrades()
//                }
//                Button("watchTradesForSymbols"){
//                        watchTradesForSymbols()
//                }
//                Button("withdraw"){
//                        withdraw()
//                }
//                Button("createConvertTrade"){
//                        createConvertTrade()
//                }
//                Button("fetchMarkPrice"){
//                        fetchMarkPrice()
//                }
            }.frame(maxHeight: UIScreen.main.bounds.height)
            .padding()
        }
        .padding()
    }
    
    func fetchMarkets() {
        // Call fetchMarkets() → returns JSON string
        do {
            let markets = try self.exchange.fetchMarkets() as! [Any];
            print(markets[0])
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchTickers() {
        do {
            let tickers = try self.exchange.fetchTickers(symbols: ["XRP/USDT", "BTC/USDT"])
            print(tickers)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchBalance() {
        do {
            let balance = try self.exchange.fetchBalance()
            print(balance)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func setLeverage() {
        do {
            let request = try self.exchange.setLeverage(
                leverage: 10,
                symbol: "XRP/USDT:USDT",
            )
            print(request)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func createOrder() {
        do {
            let order = try self.exchange.createOrder(
                symbol: "XRP/USDT:USDT",
                type: "limit",
                side: "buy",
                amount: 5,
                price: xrpPrice * 0.9,
                params: ["postOnly": true, "tradeSide": "open"]
            )
            print(order)
        } catch {
            print(error.localizedDescription)
        }
    }

    func addMargin() {
         do {
             let response = try self.exchange.addMargin(symbol: "XRP/USDT:USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func borrowCrossMargin() {
         do {
             let response = try self.exchange.borrowCrossMargin(code: "USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func borrowIsolatedMargin() {
         do {
             let response = try self.exchange.borrowIsolatedMargin(symbol: "XRP/USDT", code: "USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func borrowMargin() {
         do {
             let response = try self.exchange.borrowMargin(code: "USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func cancelAllOrders() {
         do {
             let response = try self.exchange.cancelAllOrders()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func cancelAllOrdersWs() {
        // do {
        //     let response = try self.exchange.cancelAllOrdersWs()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func cancelOrder() {
         do {
             let response = try self.exchange.cancelOrder(id: cancelOrderId)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func cancelOrderWs() {
        // do {
        //     let response = try self.exchange.cancelOrderWs()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func cancelOrders() {
        // TODO
//         do {
//             let response = try self.exchange.cancelOrders()
//             print(response)
//         } catch {
//             print(error.localizedDescription)
//         }
    }
    func cancelOrdersWs() {
        // do {
        //     let response = try self.exchange.cancelOrdersWs()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func closeAllPositions() {
         do {
             let response = try self.exchange.closeAllPositions()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func closePosition() {
         do {
             let response = try self.exchange.closePosition(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createLimitOrder() {
         do {
             let response = try self.exchange.createLimitOrder(symbol: "XRP/USDT:USDT", side: "buy", amount: 1, price: xrpPrice)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createMarketBuyOrderWithCost() {
         do {
             let response = try self.exchange.createMarketBuyOrderWithCost(symbol: "XRP/USDT:USDT", cost: 2)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createMarketOrder() {
         do {
             let response = try self.exchange.createMarketOrder(symbol: "XRP/USDT:USDT", side: "buy", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createMarketOrderWs() {
        // do {
        //     let response = try self.exchange.createMarketOrderWs()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func createOrders() {
        // do {
        //     let response = try self.exchange.createOrders()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func createOrderWithTakeProfitAndStopLoss() {
         do {
             let response = try self.exchange.createOrderWithTakeProfitAndStopLoss(symbol: futuresSymbol, type: "limit", side: "buy", amount: 1, price: xrpPrice, takeProfit: xrpPrice * 1.1, stopLoss: xrpPrice * 0.9)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createPostOnlyOrder() {
         do {
             let response = try self.exchange.createPostOnlyOrder(symbol: self.futuresSymbol, type: "limit", side: "buy", amount: 3, price: xrpPrice * 0.9)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createStopLimitOrder() {
         do {
             let response = try self.exchange.createStopLimitOrder(symbol: futuresSymbol, side: "buy", amount: 5, price: xrpPrice * 0.85, triggerPrice: xrpPrice * 0.85, params: ["tradeSide": "open"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createStopLossOrder() {
         do {
             let response = try self.exchange.createStopLossOrder(symbol: futuresSymbol, type: "limit", side: "buy", amount: 3)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createStopMarketOrder() {
         do {
             let response = try self.exchange.createStopMarketOrder(symbol: futuresSymbol, side: "buy", amount: 5, triggerPrice: xrpPrice * 0.85, params: ["tradeSide": "open"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createStopOrder() {
         do {
             let response = try self.exchange.createStopOrder(symbol: futuresSymbol, type: "String", side: "buy", amount: 5, price: xrpPrice * 0.85, triggerPrice: xrpPrice * 0.85, params: ["tradeSide": "open"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createTakeProfitOrder() {
         do {
             let response = try self.exchange.createTakeProfitOrder(symbol: futuresSymbol, type: "buy", side: "buy", amount: 5)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createTrailingPercentOrder() {
         do {
             let response = try self.exchange.createTrailingPercentOrder(symbol: futuresSymbol, type: "buy", side: "buy", amount: 5)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func createTriggerOrder() {
         do {
             let response = try self.exchange.createTriggerOrder(symbol: futuresSymbol, type: "limit", side: "buy", amount: 5, price: xrpPrice * 0.85, triggerPrice: 0.85, params: ["tradeSide": "open"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func editOrder() {
         do {
             let response = try self.exchange.editOrder(id: orderId, symbol: futuresSymbol, type: "limit", side: "buy", amount: 2, price: xrpPrice - 0.1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchBorrowInterest() {
         do {
             let response = try self.exchange.fetchBorrowInterest(code: "XRP")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchCanceledAndClosedOrders() {
        // do {
        //     let response = try self.exchange.fetchCanceledAndClosedOrders()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func fetchCanceledOrders() {
//         do {
//             let response = try self.exchange.fetchCanceledOrders()
//             print(response)
//         } catch {
//             print(error.localizedDescription)
//         }
    }
    func fetchClosedOrders() {
         do {
             let response = try self.exchange.fetchClosedOrders(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchConvertCurrencies() {
         do {
             let response = try self.exchange.fetchConvertCurrencies()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchConvertQuote() {
         do {
             let response = try self.exchange.fetchConvertQuote(fromCode: "USDC", toCode: "USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchConvertTradeHistory() {
         do {
             let response = try self.exchange.fetchConvertTradeHistory(code: "XRP")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchCrossBorrowRate() {
         do {
             let response = try self.exchange.fetchCrossBorrowRate(code: "XRP")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchCurrencies() {
         do {
             let response = try self.exchange.fetchCurrencies()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchCurrenciesWs() {
        // do {
        //     let response = try self.exchange.fetchCurrenciesWs()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func fetchDepositAddress() {
         do {
             let response = try self.exchange.fetchDepositAddress(code: "USDT", params: ["network": "BSC"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchDeposits() {
         do {
             let response = try self.exchange.fetchDeposits()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchDepositWithdrawFee() {
         do {
             let response = try self.exchange.fetchDepositWithdrawFee(code: "XRP")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchDepositWithdrawFees() {
         do {
             let response = try self.exchange.fetchDepositWithdrawFees(codes: ["XRP"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchFundingHistory() {
         do {
             let response = try self.exchange.fetchFundingHistory(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchFundingRate() {
         do {
             let response = try self.exchange.fetchFundingRate(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchFundingRateHistory() {
         do {
             let response = try self.exchange.fetchFundingRateHistory(symbol: "XRP/USDT:USDT", limit: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchFundingInterval() {
         do {
             let response = try self.exchange.fetchFundingInterval(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchFundingRates() {
         do {
             let response = try self.exchange.fetchFundingRates()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchIndexOHLCV() {
         do {
             let response = try self.exchange.fetchIndexOHLCV(symbol: futuresSymbol)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchIsolatedBorrowRate() {
         do {
             let response = try self.exchange.fetchIsolatedBorrowRate(symbol: "XRP/USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchL2OrderBook() {
         do {
             let response = try self.exchange.fetchL2OrderBook(symbol: "XRP/USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchLedger() {
         do {
             let response = try self.exchange.fetchLedger(code: "USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchLeverage() {
         do {
             let response = try self.exchange.fetchLeverage(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchLongShortRatioHistory() {
         do {
             let response = try self.exchange.fetchLongShortRatioHistory(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchMarginMode() {
         do {
             let response = try self.exchange.fetchMarginMode(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchMarketLeverageTiers() {
         do {
             let response = try self.exchange.fetchMarketLeverageTiers(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchMarkOHLCV() {
         do {
             let response = try self.exchange.fetchMarkOHLCV(symbol: futuresSymbol)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchMyLiquidations() {
         do {
             let response = try self.exchange.fetchMyLiquidations()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchMyTrades() {
         do {
             let response = try self.exchange.fetchMyTrades(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchOHLCV() {
         do {
             let response = try self.exchange.fetchOHLCV(symbol: "XRP/USDT", timeframe: "1h", since: 1748736000000, limit: 1)
             let markResponse = try self.exchange.fetchOHLCV(symbol: "XRP/USDT", timeframe: "1h", since: 1748736000000, limit: 1, params: ["price": "mark"])
             print(response)
             print(markResponse)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchOpenInterest() {
         do {
             let response = try self.exchange.fetchOpenInterest(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchOpenOrders() {
         do {
             let response = try self.exchange.fetchOpenOrders(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchOrder() {
         do {
             let response = try self.exchange.fetchOrder(id: orderId)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchOrderBook() {
         do {
             let response = try self.exchange.fetchOrderBook(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchPosition() {
         do {
             let response = try self.exchange.fetchPosition(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchPositionHistory() {
         do {
             let response = try self.exchange.fetchPositionHistory(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchPositionsHistory() {
         do {
             let response = try self.exchange.fetchPositionsHistory(symbols: ["XRP/USDT:USDT"])
             print(response)
             _ = try self.exchange.fetchPositionsHistory()
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchPositions() {
         do {
             let response = try self.exchange.fetchPositions(symbols: ["XRP/USDT:USDT"])
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchTicker() {
         do {
             let response = try self.exchange.fetchTicker(symbol: "XRP/USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchTime() {
         do {
             let response = try self.exchange.fetchTime()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchTrades() {
         do {
             let response = try self.exchange.fetchTrades(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchTradingFee() {
         do {
             let response = try self.exchange.fetchTradingFee(symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchTradingFees() {
         do {
             let response = try self.exchange.fetchTradingFees()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchTransfers() {
         do {
             let response = try self.exchange.fetchTransfers(code: "USDC")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func fetchWithdrawals() {
         do {
             let response = try self.exchange.fetchWithdrawals()
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func reduceMargin() {
         do {
             let response = try self.exchange.reduceMargin(symbol: "XRP/USDT:USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func repayCrossMargin() {
         do {
             let response = try self.exchange.repayCrossMargin(code: "USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func repayIsolatedMargin() {
         do {
             let response = try self.exchange.repayIsolatedMargin(symbol: "XRP/USDT:USDT", code: "USDT", amount: 1)
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func setMarginMode() {
         do {
             let response = try self.exchange.setMarginMode(marginMode: "isolated", symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func setPositionMode() {
         do {
             let response = try self.exchange.setPositionMode(hedged: true, symbol: "XRP/USDT:USDT")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func transfer() {
         do {
             let response = try self.exchange.transfer(code: "USDC", amount: 1, fromAccount: "spot", toAccount: "swap")
             print(response)
         } catch {
             print(error.localizedDescription)
         }
    }
    func watchBalance() {
        // do {
        //     let response = try self.exchange.watchBalance()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchMyTrades() {
        // do {
        //     let response = try self.exchange.watchMyTrades()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchOHLCV() {
        // do {
        //     let response = try self.exchange.watchOHLCV()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchOrderBook() {
        // do {
        //     let response = try self.exchange.watchOrderBook()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchBidsAsks() {
        // do {
        //     let response = try self.exchange.watchBidsAsks()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchOrderBookForSymbols() {
        // do {
        //     let response = try self.exchange.watchOrderBookForSymbols()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchOrders() {
        // do {
        //     let response = try self.exchange.watchOrders()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchPositions() {
        // do {
        //     let response = try self.exchange.watchPositions()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchTicker() {
        // do {
        //     let response = try self.exchange.watchTicker()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchTickers() {
        // do {
        //     let response = try self.exchange.watchTickers()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchTrades() {
        // do {
        //     let response = try self.exchange.watchTrades()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func watchTradesForSymbols() {
        // do {
        //     let response = try self.exchange.watchTradesForSymbols()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func withdraw() {
        // do {
        //     let response = try self.exchange.withdraw()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func createConvertTrade() {
        // do {
        //     let response = try self.exchange.createConvertTrade()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    func fetchMarkPrice() {
        // do {
        //     let response = try self.exchange.fetchMarkPrice()
        //     print(response)
        // } catch {
        //     print(error.localizedDescription)
        // }
    }
    
    
    func appendToFile(_ text: String, at path: String) {
        let url = URL(fileURLWithPath: path)
        let data = (text + "\n").data(using: .utf8)!

        if FileManager.default.fileExists(atPath: path) {
            if let handle = try? FileHandle(forWritingTo: url) {
                handle.seekToEndOfFile()
                handle.write(data)
                handle.closeFile()
            }
        } else {
            try? data.write(to: url)
        }
    }

}

#Preview {
    ContentView()
}
