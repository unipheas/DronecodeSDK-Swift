// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: info.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Mavsdk_Rpc_Info_Version {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var flightSwMajor: Int32 = 0

  var flightSwMinor: Int32 = 0

  var flightSwPatch: Int32 = 0

  var flightSwVendorMajor: Int32 = 0

  var flightSwVendorMinor: Int32 = 0

  var flightSwVendorPatch: Int32 = 0

  var osSwMajor: Int32 = 0

  var osSwMinor: Int32 = 0

  var osSwPatch: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_Info_GetVersionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_Info_GetVersionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var infoResult: Mavsdk_Rpc_Info_InfoResult {
    get {return _storage._infoResult ?? Mavsdk_Rpc_Info_InfoResult()}
    set {_uniqueStorage()._infoResult = newValue}
  }
  /// Returns true if `infoResult` has been explicitly set.
  var hasInfoResult: Bool {return _storage._infoResult != nil}
  /// Clears the value of `infoResult`. Subsequent reads from it will return its default value.
  mutating func clearInfoResult() {_uniqueStorage()._infoResult = nil}

  var version: Mavsdk_Rpc_Info_Version {
    get {return _storage._version ?? Mavsdk_Rpc_Info_Version()}
    set {_uniqueStorage()._version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  var hasVersion: Bool {return _storage._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  mutating func clearVersion() {_uniqueStorage()._version = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Mavsdk_Rpc_Info_InfoResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: Mavsdk_Rpc_Info_InfoResult.Result = .unknown

  var resultStr: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unknown // = 0
    case success // = 1
    case informationNotReceivedYet // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .unknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .success
      case 2: self = .informationNotReceivedYet
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .success: return 1
      case .informationNotReceivedYet: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Mavsdk_Rpc_Info_InfoResult.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Mavsdk_Rpc_Info_InfoResult.Result] = [
    .unknown,
    .success,
    .informationNotReceivedYet,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "mavsdk.rpc.info"

extension Mavsdk_Rpc_Info_Version: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Version"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "flight_sw_major"),
    2: .standard(proto: "flight_sw_minor"),
    3: .standard(proto: "flight_sw_patch"),
    4: .standard(proto: "flight_sw_vendor_major"),
    5: .standard(proto: "flight_sw_vendor_minor"),
    6: .standard(proto: "flight_sw_vendor_patch"),
    7: .standard(proto: "os_sw_major"),
    8: .standard(proto: "os_sw_minor"),
    9: .standard(proto: "os_sw_patch"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.flightSwMajor)
      case 2: try decoder.decodeSingularInt32Field(value: &self.flightSwMinor)
      case 3: try decoder.decodeSingularInt32Field(value: &self.flightSwPatch)
      case 4: try decoder.decodeSingularInt32Field(value: &self.flightSwVendorMajor)
      case 5: try decoder.decodeSingularInt32Field(value: &self.flightSwVendorMinor)
      case 6: try decoder.decodeSingularInt32Field(value: &self.flightSwVendorPatch)
      case 7: try decoder.decodeSingularInt32Field(value: &self.osSwMajor)
      case 8: try decoder.decodeSingularInt32Field(value: &self.osSwMinor)
      case 9: try decoder.decodeSingularInt32Field(value: &self.osSwPatch)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.flightSwMajor != 0 {
      try visitor.visitSingularInt32Field(value: self.flightSwMajor, fieldNumber: 1)
    }
    if self.flightSwMinor != 0 {
      try visitor.visitSingularInt32Field(value: self.flightSwMinor, fieldNumber: 2)
    }
    if self.flightSwPatch != 0 {
      try visitor.visitSingularInt32Field(value: self.flightSwPatch, fieldNumber: 3)
    }
    if self.flightSwVendorMajor != 0 {
      try visitor.visitSingularInt32Field(value: self.flightSwVendorMajor, fieldNumber: 4)
    }
    if self.flightSwVendorMinor != 0 {
      try visitor.visitSingularInt32Field(value: self.flightSwVendorMinor, fieldNumber: 5)
    }
    if self.flightSwVendorPatch != 0 {
      try visitor.visitSingularInt32Field(value: self.flightSwVendorPatch, fieldNumber: 6)
    }
    if self.osSwMajor != 0 {
      try visitor.visitSingularInt32Field(value: self.osSwMajor, fieldNumber: 7)
    }
    if self.osSwMinor != 0 {
      try visitor.visitSingularInt32Field(value: self.osSwMinor, fieldNumber: 8)
    }
    if self.osSwPatch != 0 {
      try visitor.visitSingularInt32Field(value: self.osSwPatch, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Info_Version, rhs: Mavsdk_Rpc_Info_Version) -> Bool {
    if lhs.flightSwMajor != rhs.flightSwMajor {return false}
    if lhs.flightSwMinor != rhs.flightSwMinor {return false}
    if lhs.flightSwPatch != rhs.flightSwPatch {return false}
    if lhs.flightSwVendorMajor != rhs.flightSwVendorMajor {return false}
    if lhs.flightSwVendorMinor != rhs.flightSwVendorMinor {return false}
    if lhs.flightSwVendorPatch != rhs.flightSwVendorPatch {return false}
    if lhs.osSwMajor != rhs.osSwMajor {return false}
    if lhs.osSwMinor != rhs.osSwMinor {return false}
    if lhs.osSwPatch != rhs.osSwPatch {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Info_GetVersionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetVersionRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Info_GetVersionRequest, rhs: Mavsdk_Rpc_Info_GetVersionRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Info_GetVersionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetVersionResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "info_result"),
    2: .same(proto: "version"),
  ]

  fileprivate class _StorageClass {
    var _infoResult: Mavsdk_Rpc_Info_InfoResult? = nil
    var _version: Mavsdk_Rpc_Info_Version? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _infoResult = source._infoResult
      _version = source._version
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._infoResult)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._version)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._infoResult {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._version {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Info_GetVersionResponse, rhs: Mavsdk_Rpc_Info_GetVersionResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._infoResult != rhs_storage._infoResult {return false}
        if _storage._version != rhs_storage._version {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Info_InfoResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InfoResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
    2: .standard(proto: "result_str"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.result)
      case 2: try decoder.decodeSingularStringField(value: &self.resultStr)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.result != .unknown {
      try visitor.visitSingularEnumField(value: self.result, fieldNumber: 1)
    }
    if !self.resultStr.isEmpty {
      try visitor.visitSingularStringField(value: self.resultStr, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Info_InfoResult, rhs: Mavsdk_Rpc_Info_InfoResult) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.resultStr != rhs.resultStr {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Info_InfoResult.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "SUCCESS"),
    2: .same(proto: "INFORMATION_NOT_RECEIVED_YET"),
  ]
}