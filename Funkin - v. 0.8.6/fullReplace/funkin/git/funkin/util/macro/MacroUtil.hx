package funkin.util.macro;

/**
 * A collection of utility functions for Haxe macros.
 */

class MacroUtil
{
  /**
   * Gets the value of a Haxe compiler define.
   *
   * @param key The name of the define to get the value of.
   * @param defaultValue The value to return if the define is not set.
   * @return An expression containing the value of the define.
   */
  public static function getDefine(key:String, ?defaultValue:String):Dynamic
  {
    return null;
  }

  /**
   * Gets the current date and time (at compile time).
   * @return A `Date` object containing the current date and time.
   */
  public static function getDate():Date
  {
    return Date.now();
  }

}
