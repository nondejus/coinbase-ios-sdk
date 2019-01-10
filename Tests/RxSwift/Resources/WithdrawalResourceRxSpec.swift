//
//  WithdrawalResourceRxSpec.swift
//  CoinbaseRxTests
//  
//  Copyright © 2018 Coinbase, Inc. All rights reserved.
// 

import CoinbaseSDK
@testable import RxCoinbaseSDK
import Quick
import Nimble

class WithdrawalResourceRxSpec: QuickSpec, TradeResourceRxSpecProtocol {
    
    override func spec() {
        let mockedSessionManager = specVar { MockedSessionManager() }
        
        let type = TradeResourceType.withdrawals
        let resource = specVar { Coinbase(sessionManager: mockedSessionManager()).withdrawalResource }
        let parameters = DepositWithdrawalParameters(amount: "1", currency: "BTC", paymentMethod: "payment_method_id")
        
        tradeSpec(type: type, parameters: parameters, resource: resource, mockedSessionManager: mockedSessionManager)
    }
    
}
