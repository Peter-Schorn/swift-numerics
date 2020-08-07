import Foundation

precedencegroup ExponentiativePrecedence {
  associativity: right
  higherThan: MultiplicationPrecedence
}

infix operator ** : ExponentiativePrecedence

infix operator **= : AssignmentPrecedence


/**
 Extends [Numeric][1] and add a power function,
 as well as the exponent operator `**` and the
 compound assignment exponent operator `**=`,
 both of which call through to the power function.
 
 Addition, subtraction, and multiplication are supported,
 but not division because this protocol is intended to support
 both integer and floating point types.
 
 **See Also**: [AdditiveArithmetic][2], which Numeric inherits from.
 
 [1]: https://developer.apple.com/documentation/swift/numeric
 [2]: https://developer.apple.com/documentation/swift/additivearithmetic
 */
public protocol Exponentiable: Numeric {
  
  /// Raises `base` to the `power` power.
  /// If `base` and `power` are integers, then `power` must be >= 0.
  static func pow(_ base: Self, _ power: Self) -> Self
  
}

public extension Exponentiable {
  
  /// Exponent operator.
  @inlinable @inline(__always)
  static func ** (base: Self, power: Self) -> Self {
    return Self.pow(base, power)
  }
  
  /// Exponent compound assignment operator.
  @inlinable @inline(__always)
  static func **= (base: inout Self, power: Self) {
    base = Self.pow(base, power)
  }
    
}

public extension BinaryInteger {
  
  /// Performs exponentiation where the base and power are integers.
  /// - Warning: `power` must be greater than or equal to 0.
  @inlinable @inline(__always)
  static func pow(_ base: Self, _ power: Self) -> Self {
    
    precondition(
      power >= 0,
      "Cannot raise integer \(base) to negative power \(power)"
    )
    
    var result: Self = 1
    var power = power
    var base = base
    
    while (power != 0) {
      if (power % 2 == 1) {
        result *= base
      }
      power /= 2
      base *= base
    }
    
    return result
    
  }
  
}

extension Int: Exponentiable { }
extension Int8: Exponentiable { }
extension Int16: Exponentiable { }
extension Int32: Exponentiable { }
extension Int64: Exponentiable { }

extension UInt: Exponentiable { }
extension UInt8: Exponentiable { }
extension UInt16: Exponentiable { }
extension UInt32: Exponentiable { }
extension UInt64: Exponentiable { }
