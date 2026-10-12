package funkin.ui.debug.cameraeditor;

import haxe.ui.backend.flixel.UIState;

using StringTools;

/**
 * The EYES OF GOD......
 */
// Build file: haxe.ui.ComponentBuilder.build('assets/exclude/ui/editors/camera-editor/main-view.xml')
class CameraEditorState extends UIState 
{
 public function new(?params:CameraEditorParams)
  {
    super();
  }
}

/**
 * Parameters to initialize the Camera Editor with.
 * Most of these are optional.
 */
typedef CameraEditorParams =
{
  // CHART LOADING

  /**
   * If non-null, load an existing song directly from a file path.
   */
  public var ?loadFromPath:String;

  /**
   * If non-null, load an existing song directly from the game's assets.
   */
  public var ?loadFromTemplate:String;

  // STARTING POSITION

  /**
   * If non-null, load this difficulty immediately instead of the default difficulty.
   */
  public var ?targetSongDifficulty:String;

  /**
   * If non-null, load this variation immediately instead of the default variation.
   */
  public var ?targetSongVariation:String;

  /**
   * If non-null, load into the editor with the cursor directly at the given song position,
   * instead of at the start of the song.
   */
  public var ?targetSongPosition:Float;
};


/**
 * Available themes for the camera editor state.
 */
enum abstract CameraEditorTheme(String)
{
  /**
   * The default theme for the camera editor.
   */
  public var Light;

  /**
   * A theme which introduces camera editor colors.
   */
  public var Dark;
}
