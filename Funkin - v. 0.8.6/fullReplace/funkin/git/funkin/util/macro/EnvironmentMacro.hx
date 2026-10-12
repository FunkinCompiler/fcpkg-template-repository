package funkin.util.macro;

using StringTools;
using funkin.util.AnsiUtil;

/**
 * A macro class that loads environment variables from a .env file for compile-time injection.
 */
class EnvironmentMacro
{
  /**
   * Initializes static Null<String> fields annotated with  from the .env file.
   *
   * @return Array<Field> The modified array of fields with injected environment values.
   */
  public static function build():Array<Any>
  {
    return [];
  }

}
