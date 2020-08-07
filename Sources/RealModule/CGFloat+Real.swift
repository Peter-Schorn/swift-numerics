import CoreGraphics  // required by watchOS to access CGFloat
import _NumericsShims


extension CGFloat: Real {

  @_transparent
  public static func cos(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.cos(x.native))
  }

  @_transparent
  public static func sin(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.sin(x.native))
  }
  
  @_transparent
  public static func tan(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.tan(x.native))
  }
  
  @_transparent
  public static func acos(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.acos(x.native))
  }
  
  @_transparent
  public static func asin(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.asin(x.native))
  }
  
  @_transparent
  public static func atan(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.atan(x.native))
  }
  
  @_transparent
  public static func cosh(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.cosh(x.native))
  }
  
  @_transparent
  public static func sinh(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.sinh(x.native))
  }
  
  @_transparent
  public static func tanh(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.tanh(x.native))
  }
  
  @_transparent
  public static func acosh(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.acosh(x.native))
  }
  
  @_transparent
  public static func asinh(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.asinh(x.native))
  }
  
  @_transparent
  public static func atanh(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.atanh(x.native))
  }
  
  @_transparent
  public static func exp(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.exp(x.native))
  }
  
  @_transparent
  public static func expMinusOne(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.expMinusOne(x.native))
  }
  
  @_transparent
  public static func log(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.log(x.native))
  }
  
  @_transparent
  public static func log(onePlus x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.log(onePlus: x.native))
  }
  
  @_transparent
  public static func erf(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.erf(x.native))
  }
  
  @_transparent
  public static func erfc(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.erfc(x.native))
  }
  
  @_transparent
  public static func exp2(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.exp2(x.native))
  }
  
  #if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
  @_transparent
  public static func exp10(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.exp10(x.native))
  }
  #endif
  
  @_transparent
  public static func hypot(_ x: CGFloat, _ y: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.hypot(x.native, y.native))
  }
  
  @_transparent
  public static func gamma(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.gamma(x.native))
  }
  
  @_transparent
  public static func log2(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.log2(x.native))
  }
  
  @_transparent
  public static func log10(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.log10(x.native))
  }
  
  @_transparent
  public static func pow(_ x: CGFloat, _ y: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.pow(x.native, y.native))
  }
  
  @_transparent
  public static func pow(_ x: CGFloat, _ n: Int) -> CGFloat {
    CGFloat(CGFloat.NativeType.pow(x.native, n))
  }
  
  @_transparent
  public static func root(_ x: CGFloat, _ n: Int) -> CGFloat {
    CGFloat(CGFloat.NativeType.root(x.native, n))
  }
  
  @_transparent
  public static func atan2(y: CGFloat, x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.atan2(y: y.native, x: x.native))
  }
  
  #if !os(Windows)
  @_transparent
  public static func logGamma(_ x: CGFloat) -> CGFloat {
    CGFloat(CGFloat.NativeType.logGamma(x.native))
  }
  #endif
  
}
