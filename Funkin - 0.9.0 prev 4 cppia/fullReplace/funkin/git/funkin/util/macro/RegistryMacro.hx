package funkin.util.macro;

using Lambda;
using StringTools;

/**
 * A set of build macros to be applied to `Registry` classes in the `funkin.data` package.
 *
 * @see `funkin.data.BaseRegistry`
 */
class RegistryMacro
{

  /**
   * Builds the registry class.
   *
   * @return The modified list of fields for the target class.
   */
  public static function buildRegistry():Array<Any>
  {
    
    return [];
  }

  /**
   * Builds the registry entry class.
   *
   * @return The modified list of fields for the target class.
   */
  public static function buildEntry():Array<Any>
  {
    return [];
  }
}
