/* <copyright>
This file contains proprietary software owned by Motorola Mobility, Inc.<br/>
No rights, expressed or implied, whatsoever to this software are provided by Motorola Mobility, Inc. hereunder.<br/>
(c) Copyright 2011 Motorola Mobility, Inc.  All Rights Reserved.
</copyright> */

var Montage = require("montage/core/core").Montage;
var Component = require("montage/ui/component").Component;

exports.SubToolButton = Montage.create(Component, {

    button:     { value: null },

    data: { value: null },

    _selected: { value: null },

    selected: {
        get: function() { return this._selected; },
        set: function(value) {
            this._selected = value;
            this.needsDraw = true;
        }
    },

    prepareForDraw: {
        enumerable: false,
        value: function() {
            this.element.addEventListener("click", this, false);

            this.element.title = this.data.toolTip;

            Object.defineBinding(this, "selected", {
              boundObject: this.data,
              boundObjectPropertyPath: "selected",
              oneway: false
            });

        }
    },

    draw: {
        enumerable: false,
        value: function() {
            if(this._selected) {
                this.element.classList.add( "buttonSelected" );
                this.button.classList.remove( this.data.id + "Unpressed" );
                this.button.classList.add( this.data.id + "Pressed" );
            } else {
                this.element.classList.remove( "buttonSelected" );
                this.button.classList.remove( this.data.id + "Pressed" );
                this.button.classList.add( this.data.id + "Unpressed" );
            }
        }
    },

    handleClick: {
        value: function(event) {
            if(!this._selected) {
                NJevent("selectSubTool", this.data);
            }
        }
    }

});