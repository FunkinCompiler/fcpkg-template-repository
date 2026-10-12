package funkin.util.macro;


/**
 * Macros to generate lists of classes at compile time.
 *
 * This code is a bitch glad Jason figured it out.
 * Based on code from CompileTime: https://github.com/jasononeil/compiletime
 */

class ClassMacro
{
  /**
   * Gets a list of `Class<T>` for all classes in a specified package.
   *
   * Example: `var list:Array<Class<Dynamic>> = listClassesInPackage("funkin", true);`
   *
   * @param targetPackage A String containing the package name to query.
   * @param includeSubPackages Whether to include classes located in sub-packages of the target package.
   * @return A list of classes matching the specified criteria.
   */
  public static function listClassesInPackage(targetPackage:String, includeSubPackages:Bool = true):Iterable<Class<Dynamic>>
  {
    return null;
  }

  /**
   * Get a list of `Class<T>` for all classes extending a specified class.
   *
   * Example: `var list:Array<Class<FlxSprite>> = listSubclassesOf(FlxSprite);`
   *
   * @param targetClass The class to query for subclasses.
   * @return A list of classes matching the specified criteria.
   */
  public static function listSubclassesOf<T>(targetClassExpr:Class<T>):List<Class<T>>
  {
   return null;
  }

}
