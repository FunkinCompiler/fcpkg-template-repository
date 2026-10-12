package haxe.ui.components;

import haxe.ui.containers.HBox;
import haxe.ui.util.Variant;

@:xml('
<hbox>
    <image id="linkIcon" verticalAlign="center" hidden="true" />
    <link id="link" verticalAlign="center" hidden="true" />
</hbox>
')
class IconLink extends HBox {
    public var link:Link; 
    public var linkIcon:Image; 
    public function get_text():String {
        return link.text;
    }

    public function set_text(value:String):String {
        link.text = value;
        link.show();
        return value;
    }

    public function get_icon():Variant {
        return linkIcon.resource;
    }

    public function set_icon(value:Variant):Variant {
        linkIcon.resource = value;
        linkIcon.show();
        return value;
    }
}