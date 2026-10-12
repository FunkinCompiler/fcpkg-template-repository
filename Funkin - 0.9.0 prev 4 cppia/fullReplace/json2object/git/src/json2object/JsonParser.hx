/*
Copyright (c) 2017 Guillaume Desquesnes, Valentin Lemière
*/
package json2object;

import json2object.reader.BaseParser;

class JsonParser<T> extends BaseParser<T> {
    // ?errors:Array<Dynamic>, ?putils:PositionUtils, errorType:Dynamic = 0,
    public function new(?params:Dynamic)
	{
		super(null, null, NONE, params);
	}
}
