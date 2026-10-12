package;

class PolymodScripts {
      /**
   * Initializes a scripted class instance using the given scripted class name and constructor arguments.
   * @param className Name of the target class extending $1 type
   * @param args List of argument of a scripted constructor. only the first one seems to work?
   * @return $1
   */
  public static function init<T>(base:T,className:String,...args:Any):Null<T> {
    return null;
  }  
  /**
   * Initializes a scripted class instance using the given scripted class name and constructor arguments.
   * @param className Name of the target class extending $1 type
   * @param args List of argument of a scripted constructor. only the first one seems to work?
   * @return $1
   */
  public static function scriptInit<T>(base:T,className:String,...args:Any):Dynamic {
    return null;
  }
  /**
   * Polymod function: Calls a requested function from this scripted class using given arguments
   *
   * You must enable `mockPolymodCalls` to use this function
   * @param funcName Name of the target function
   * @param args Arguments for that function
   */
  public function polymodExecFunc<T>(base:T,funcName:String, args:Array<Dynamic> = null):Dynamic {
    //* mock call. Once build it should be replaced with
    //* 'scriptCall'
    return null;
  }
	/**
	 * Returns the value of a custom field of the scripted class, by the given name.
	 *
	 * @param fieldName The name of the field to return.
	 * @return The value of the field, if any.
	 */
	 public function scriptGet<T>(base:T,fieldName:String):Dynamic{return null;};
	/**
	 * Sets the value of a custom field of the scripted class, by the given name.
	 *
	 * @param fieldName The name of the field to set.
	 * @param value The value to set.
	 * @return The newly set value.
	 */
	 public function scriptSet<T>(base:T,fieldName:String, value:Dynamic):Dynamic{return null; }
   /**
    * Returns a list of all the scripted classes which extend $1.
    * @return Array<String> THE list
    */
   public static function listScriptClasses<T>(base:T):Array<String> {return null; }
}
