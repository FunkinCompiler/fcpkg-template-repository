package haxe.ui.components;

import haxe.ui.components.Rule.RuleBuilder;

@:composite(Builder)
class VerticalRule extends Rule {
    public function new() {
        super();
    }
}

@:dox(hide) @:noCompletion
private class Builder extends RuleBuilder {
    private override function showWarning() { // do nothing
    }
}