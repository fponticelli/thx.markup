package thx.markup.html;

import thx.markup.xml.NodeFormat;

class HtmlNodeFormat extends NodeFormat
{
	override public function formatEmptyElement(node : Xml)
	{
		return
			  "<" 
			+ node.nodeName
			+ attributeFormat.formatAttributes(node)
			+ ">";
	}
}