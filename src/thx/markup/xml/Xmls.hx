package thx.markup.xml;

class Xmls
{
  public static function clone(xml : Xml) : Xml
  {
    return switch(xml.nodeType) {
      case Xml.CData:
        Xml.createCData(xml.nodeValue);
      case Xml.Comment:
        Xml.createComment(xml.nodeValue);
      case Xml.DocType:
        Xml.createDocType(xml.nodeValue);
      case Xml.Document:
        Xml.createDocument();
      case Xml.Element:
        var el = Xml.createElement(xml.nodeName);
        for(attr in xml.attributes())
          el.set(attr, xml.get(attr));
        for(child in xml.iterator())
          el.addChild(clone(child));
        el;
      case Xml.PCData:
        Xml.createPCData(xml.nodeValue);
    };
  }
}