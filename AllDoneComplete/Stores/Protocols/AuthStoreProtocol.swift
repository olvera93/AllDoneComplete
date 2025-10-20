//
//  AuthStoreProtocol.swift
//  AllDoneComplete
//
//  Created by Gonzalo Olvera on 20/10/25.
//

import Foundation
import Combine

@MainActor
protocol AuthStoreProtocol: ObservableObject {
    
    var authUpdate: Date { get set }
    var authUpdatePublisher: AnyPublisher<Date, Never> { get }
    
    func getAuthenticatedUser() -> AuthData?
    
    @discardableResult
    func signIn(email: String, password: String) async throws -> AuthData
    
    @discardableResult
    func signUp(email: String, password: String) async throws -> AuthData
    
    func resetPassword(email: String) async throws
    
    func signOut() throws
    
    
}
