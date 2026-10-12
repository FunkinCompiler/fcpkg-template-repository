## Incomplete documentation ahead

# FcPkg features
Let's go over the features and types of patching available to you, as a developer of such file

### metadata.json
- `version`: Version of this file. To be honest there is not much organisation with it. Leave it as is for now.

- `funkinReferenceTag`: Git hash from the official [funkin repository](https://github.com/FunkinCrew/Funkin) to download.
If `installStage` is set to '1' or higher, this field is ignored.

- `fullReplaceableFiles`: A folder with the files to replace after the game and required libraries are downloaded. You can leave it as is to not complicate things for yourself.

- `haxelibRemoveFolders`: Folder paths to remove from the downloaded folders. Something like:
  - `"FlxPartialSound/git/example"`
  - `"funkin/git/docs"`

- `funkinPatchRules` (object of strings): Maps match patterns to replacement text for patching `funkin` source files. Patterns may use regular-expression syntax, including capture groups and backreferences. Newline escapes (`\n`) represent line breaks in replacement text. Exact behavior depends on the patching tool.
  - The first example rule matches a class declaration and replaces it with a declaration that includes a `contextmenuRemoveHold` field.
  - The second rule matches a `static function` declaration and changes it to `public static function`.

- `funkinPatchExclude`: Paths excluded from applying `funkinPatchRules`. Example:
  - `"../funkin/play/notes/notekind/NoteKind.hx"`

- `installStage`: Number defining on which installation stage is this fcpkg. For instance, setting this value to "1" implies the state from the stage "1" and any higher stage values. Possible values are:
  - `0` Game's repository has not been cloned to the `funkin` directory.
  - `1` Game's libraries defined in `hmm.json` have not been downloaded.
  - `2` Game's libraries are downloaded, but not configured 
    - This stage renames `hmm.json` to `hmm.json.bak`
    - And also removed the directories defined in `haxelibRemoveFolders` filed.
  - `3` Game's code is not configured
    - This means moving `funkin/git/source/funkin` to `funkin/git/funkin`.
    - And placing  `funkin/git/funkin/MAin.hx` file.
  - `4` Game patches defined by `funkinPatchRules` were not applied yet
  - `5` Replace files located in directory defined by `fullReplaceableFiles` were not applied
  - `6` "Installation is complete"
  - `7` This ".fcpkg" is already configured and does not require any install stages to use
    - Used by the "full" variants