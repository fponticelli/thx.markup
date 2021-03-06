/**
 * ...
 * @author Franco Ponticelli
 */

package thx.markup.html;

import thx.core.Set;

class Attribute
{
	// Attributes that have their values filled in disabled="disabled"
	public static inline function isFill(el : String) return _fill.exists(el);
	// TODO what about multiple?
	static var _fill = Set.ofArray("checked,compact,declare,defer,disabled,formnovalidate,novalidate,ismap,nohref,noresize,noshade,nowrap,readonly,required,selected".split(","));
}