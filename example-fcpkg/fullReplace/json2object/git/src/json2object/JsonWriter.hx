/*
Copyright (c) 2017-2018 Guillaume Desquesnes, Valentin Lemière

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
package json2object;

import json2object.writer.StringUtils;

class JsonWriter<T> {

	public function new(?params:Dynamic)
	{
		this.shouldQuote = true;
		var tmp:Dynamic = params != null ? params.ignoreNullOptionals : null;
		this.ignoreNullOptionals = tmp != null && tmp;
		var tmp1:Dynamic = params != null ? params.ignoreDefaults : null;
		this.ignoreDefaults = tmp1 != null && tmp1;
	}

	var ignoreNullOptionals:Bool;

	var ignoreDefaults:Bool;

	var shouldQuote:Bool;

	function getParams():Dynamic
	{
		return { ignoreNullOptionals : this.ignoreNullOptionals, ignoreDefaults : this.ignoreDefaults };
	}

	function quote(str:String):String
	{
		return "";
	}

	function dontQuote():JsonWriter<T>
	{
		this.shouldQuote = false;
		return this;
	}

	function buildIndent(space:String, level:Int):String
	{
		return "";
	}

	public function write(o:T, space:String = ""):String
	{
		return "";
	}
}
