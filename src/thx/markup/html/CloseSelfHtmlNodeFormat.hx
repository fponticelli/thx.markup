package thx.markup.html;

import thx.markup.xml.NodeFormat;

class CloseSelfHtmlNodeFormat extends HtmlNodeFormat
{
	override public function formatCloseElement(node : Xml)
	{
		if(Element.isCloseSelf(node.nodeName))
			return "";
		else   
			return "</" + node.nodeName + ">";
	}
}