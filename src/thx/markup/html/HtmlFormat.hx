package thx.markup.html;

import thx.markup.xml.NodeFormat;
import thx.markup.xml.AttributeFormat;
import thx.markup.xml.XmlFormat;
import thx.markup.html.HtmlDocumentFormat;
using thx.core.Types;

class HtmlFormat extends XHtmlFormat
{
	public var useCloseSelf : Bool;
	public var quotesRemoval : Bool;
	public var specialElementContentFormat : SpecialElementContentFormat;
	public function new()
	{
		super();
		useCloseSelf = false;
		quotesRemoval = false;
	}

	override function createAttributeFormat() : AttributeFormat
	{
		if(quotesRemoval)
		    return new UnquotedHtmlAttributeFormat();
		else
			return new HtmlAttributeFormat();
	}

	override function createNodeFormat() : NodeFormat
	{
		if(useCloseSelf)
		    return new CloseSelfHtmlNodeFormat();
		else
			return new HtmlNodeFormat();
	}

	override function createDocumentFormat()
	{
		var doc = super.createDocumentFormat();
		if (null == specialElementContentFormat)
			return doc;
		var html : HtmlDocumentFormat = doc.as(HtmlDocumentFormat);
		if (null == html)
			return doc;
		html.specialElementContentFormat = specialElementContentFormat;
		return html;
	}
}

