// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

import FlatBuffers

public struct Swift_Tests_Vectors: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_24_12_23() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case none_ = 4
    case empty = 6
    case array = 8
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var hasNone: Bool { let o = _accessor.offset(VTOFFSET.none_.v); return o == 0 ? false : true }
  public var none_Count: Int32 { let o = _accessor.offset(VTOFFSET.none_.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func none_(at index: Int32) -> UInt64 { let o = _accessor.offset(VTOFFSET.none_.v); return o == 0 ? 0 : _accessor.directRead(of: UInt64.self, offset: _accessor.vector(at: o) + index * 8) }
  public var none_: [UInt64] { return _accessor.getVector(at: VTOFFSET.none_.v) ?? [] }
  public var hasEmpty: Bool { let o = _accessor.offset(VTOFFSET.empty.v); return o == 0 ? false : true }
  public var emptyCount: Int32 { let o = _accessor.offset(VTOFFSET.empty.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func empty(at index: Int32) -> UInt64 { let o = _accessor.offset(VTOFFSET.empty.v); return o == 0 ? 0 : _accessor.directRead(of: UInt64.self, offset: _accessor.vector(at: o) + index * 8) }
  public var empty: [UInt64] { return _accessor.getVector(at: VTOFFSET.empty.v) ?? [] }
  public var hasArray: Bool { let o = _accessor.offset(VTOFFSET.array.v); return o == 0 ? false : true }
  public var arrayCount: Int32 { let o = _accessor.offset(VTOFFSET.array.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func array(at index: Int32) -> UInt64 { let o = _accessor.offset(VTOFFSET.array.v); return o == 0 ? 0 : _accessor.directRead(of: UInt64.self, offset: _accessor.vector(at: o) + index * 8) }
  public var array: [UInt64] { return _accessor.getVector(at: VTOFFSET.array.v) ?? [] }
  public static func startVectors(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 3) }
  public static func addVectorOf(none_: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: none_, at: VTOFFSET.none_.p) }
  public static func addVectorOf(empty: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: empty, at: VTOFFSET.empty.p) }
  public static func addVectorOf(array: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: array, at: VTOFFSET.array.p) }
  public static func endVectors(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createVectors(
    _ fbb: inout FlatBufferBuilder,
    none_VectorOffset none_: Offset = Offset(),
    emptyVectorOffset empty: Offset = Offset(),
    arrayVectorOffset array: Offset = Offset()
  ) -> Offset {
    let __start = Swift_Tests_Vectors.startVectors(&fbb)
    Swift_Tests_Vectors.addVectorOf(none_: none_, &fbb)
    Swift_Tests_Vectors.addVectorOf(empty: empty, &fbb)
    Swift_Tests_Vectors.addVectorOf(array: array, &fbb)
    return Swift_Tests_Vectors.endVectors(&fbb, start: __start)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.none_.p, fieldName: "none_", required: false, type: ForwardOffset<Vector<UInt64, UInt64>>.self)
    try _v.visit(field: VTOFFSET.empty.p, fieldName: "empty", required: false, type: ForwardOffset<Vector<UInt64, UInt64>>.self)
    try _v.visit(field: VTOFFSET.array.p, fieldName: "array", required: false, type: ForwardOffset<Vector<UInt64, UInt64>>.self)
    _v.finish()
  }
}

extension Swift_Tests_Vectors: Encodable {

  enum CodingKeys: String, CodingKey {
    case none_ = "none"
    case empty = "empty"
    case array = "array"
  }
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if none_Count > 0 {
      try container.encodeIfPresent(none_, forKey: .none_)
    }
    if emptyCount > 0 {
      try container.encodeIfPresent(empty, forKey: .empty)
    }
    if arrayCount > 0 {
      try container.encodeIfPresent(array, forKey: .array)
    }
  }
}

