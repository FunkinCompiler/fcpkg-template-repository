package funkin.assets;


/**
 * We alias this class over the `Paths` class, then implement macro functions which redirect the originals.
 * This provides identical behavior while providing additional compile-time functionality via macros.
 *
 * Note this can't be combined with Paths.hx because the macro functions can't be accessed from HScript,
 * and scripted classes need to be able to access the Paths functions too.
 */

typedef ValidatedPaths = funkin.assets.Assets;
