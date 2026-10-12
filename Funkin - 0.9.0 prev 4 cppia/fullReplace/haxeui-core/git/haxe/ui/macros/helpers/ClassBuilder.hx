package haxe.ui.macros.helpers;

/**
 * Stub version of ClassBuilder - macro functionality removed
 */
class ClassBuilder {
    public var fields:Array<Dynamic>;
    public var type:Dynamic;
    public var classType:Dynamic;
    public var pos:Dynamic;

    public function new(?fields:Array<Dynamic>, ?type:Dynamic, ?pos:Dynamic) {
        this.fields = fields != null ? fields : [];
        this.type = type;
        this.classType = null;
        this.pos = pos;
    }

    public var vars(get, null):Array<FieldBuilder>;
    private function get_vars():Array<FieldBuilder> {
        return [];
    }

    public function addField(name:String, type:Dynamic = null, ?access:Array<String>):FieldBuilder {
        return new FieldBuilder(null, this);
    }

    public function addVar(name:String, ?type:Dynamic, ?defaultValue:Dynamic):FieldBuilder {
        return new FieldBuilder(null, this);
    }

    public var fullPath(get, null):String;
    private function get_fullPath():String {
        return "Unknown";
    }
}
