//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: geofence.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

internal protocol Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall: ClientCallUnary {}

fileprivate final class Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCallBase: ClientCallUnaryBase<Mavsdk_Rpc_Geofence_UploadGeofenceRequest, Mavsdk_Rpc_Geofence_UploadGeofenceResponse>, Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall {
  override class var method: String { return "/mavsdk.rpc.geofence.GeofenceService/UploadGeofence" }
}


/// Instantiate Mavsdk_Rpc_Geofence_GeofenceServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Geofence_GeofenceServiceService: ServiceClient {
  /// Synchronous. Unary.
  func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, metadata customMetadata: Metadata) throws -> Mavsdk_Rpc_Geofence_UploadGeofenceResponse
  /// Asynchronous. Unary.
  @discardableResult
  func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, metadata customMetadata: Metadata, completion: @escaping (Mavsdk_Rpc_Geofence_UploadGeofenceResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall

}

internal extension Mavsdk_Rpc_Geofence_GeofenceServiceService {
  /// Synchronous. Unary.
  func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest) throws -> Mavsdk_Rpc_Geofence_UploadGeofenceResponse {
    return try self.uploadGeofence(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, completion: @escaping (Mavsdk_Rpc_Geofence_UploadGeofenceResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall {
    return try self.uploadGeofence(request, metadata: self.metadata, completion: completion)
  }

}

internal final class Mavsdk_Rpc_Geofence_GeofenceServiceServiceClient: ServiceClientBase, Mavsdk_Rpc_Geofence_GeofenceServiceService {
  /// Synchronous. Unary.
  internal func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, metadata customMetadata: Metadata) throws -> Mavsdk_Rpc_Geofence_UploadGeofenceResponse {
    return try Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, metadata customMetadata: Metadata, completion: @escaping (Mavsdk_Rpc_Geofence_UploadGeofenceResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall {
    return try Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

class Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCallTestStub: ClientCallUnaryTestStub, Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall {
  override class var method: String { return "/mavsdk.rpc.geofence.GeofenceService/UploadGeofence" }
}

class Mavsdk_Rpc_Geofence_GeofenceServiceServiceTestStub: ServiceClientTestStubBase, Mavsdk_Rpc_Geofence_GeofenceServiceService {
  var uploadGeofenceRequests: [Mavsdk_Rpc_Geofence_UploadGeofenceRequest] = []
  var uploadGeofenceResponses: [Mavsdk_Rpc_Geofence_UploadGeofenceResponse] = []
  func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, metadata customMetadata: Metadata) throws -> Mavsdk_Rpc_Geofence_UploadGeofenceResponse {
    uploadGeofenceRequests.append(request)
    defer { uploadGeofenceResponses.removeFirst() }
    return uploadGeofenceResponses.first!
  }
  @discardableResult
  func uploadGeofence(_ request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, metadata customMetadata: Metadata, completion: @escaping (Mavsdk_Rpc_Geofence_UploadGeofenceResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCall {
    let response = try self.uploadGeofence(request)
    let callResult = CallResult(success: true, statusCode: .ok, statusMessage: "OK", resultData: nil, initialMetadata: nil, trailingMetadata: nil)
    completion(response, callResult)
    return Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceCallTestStub()
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol Mavsdk_Rpc_Geofence_GeofenceServiceProvider: ServiceProvider {
  func uploadGeofence(request: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, session: Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSession) throws -> Mavsdk_Rpc_Geofence_UploadGeofenceResponse
}

extension Mavsdk_Rpc_Geofence_GeofenceServiceProvider {
  internal var serviceName: String { return "mavsdk.rpc.geofence.GeofenceService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/mavsdk.rpc.geofence.GeofenceService/UploadGeofence":
      return try Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSessionBase(
        handler: handler,
        providerBlock: { try self.uploadGeofence(request: $0, session: $1 as! Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSession: ServerSessionUnary {}

fileprivate final class Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSessionBase: ServerSessionUnaryBase<Mavsdk_Rpc_Geofence_UploadGeofenceRequest, Mavsdk_Rpc_Geofence_UploadGeofenceResponse>, Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSession {}

class Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSessionTestStub: ServerSessionUnaryTestStub, Mavsdk_Rpc_Geofence_GeofenceServiceUploadGeofenceSession {}

