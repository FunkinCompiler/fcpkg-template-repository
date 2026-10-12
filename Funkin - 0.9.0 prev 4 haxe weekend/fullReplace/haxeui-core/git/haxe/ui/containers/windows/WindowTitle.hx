package haxe.ui.containers.windows;

import haxe.ui.components.Label;
import haxe.ui.components.Image;
import haxe.ui.core.Component;

@:xml('
    <hbox width="100%">
        <image id="windowTitleIcon" hidden="true" verticalAlign="center" />
        <label id="windowTitleLabel" text="Window" verticalAlign="center" />
        <hbox id="controlsContainer" hidden="true" verticalAlign="center" style="cursor: default" />
    </hbox>
')
class WindowTitle extends HBox {
    public var windowTitleIcon:Image;
    public var windowTitleLabel:Label;
    public var controlsContainer:HBox;
    public override function addComponent(child:Component):Component {
        if (controlsContainer != null && child != windowTitleLabel && child != controlsContainer) {
            controlsContainer.show();
            return controlsContainer.addComponent(child);
        }
        return super.addComponent(child);
    }
}