package freemarker.ext.xml;

import android.support.v4.ca2;
import android.support.v4.k52;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.ext.xml.Navigator;
import freemarker.template.utility.Csuper;
import java.io.StringWriter;
import java.util.List;
import org.jaxen.Context;
import org.jaxen.NamespaceContext;
import org.jaxen.dom.DOMXPath;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* renamed from: freemarker.ext.xml.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Navigator {

    /* renamed from: freemarker.ext.xml.new$do, reason: invalid class name */
    public static final class Cdo extends DOMXPath implements Navigator.XPathEx {
        public Cdo(String str) throws Exception {
            super(str);
        }

        @Override // freemarker.ext.xml.Navigator.XPathEx
        public List selectNodes(Object obj, NamespaceContext namespaceContext) throws k52 {
            Context context = getContext(obj);
            context.getContextSupport().setNamespaceContext(namespaceContext);
            try {
                return selectNodesForContext(context);
            } catch (Exception e) {
                throw new k52(e);
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    private void m29175default(NamedNodeMap namedNodeMap, StringWriter stringWriter) {
        for (int i = 0; i < namedNodeMap.getLength(); i++) {
            m29176extends(namedNodeMap.item(i), stringWriter);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m29176extends(Node node, StringWriter stringWriter) {
        switch (node.getNodeType()) {
            case 1:
                stringWriter.append(ca2.f687new).append((CharSequence) m29152return(node));
                m29175default(node.getAttributes(), stringWriter);
                stringWriter.append(ca2.f702try);
                m29177finally(node.getChildNodes(), stringWriter);
                stringWriter.append("</").append((CharSequence) m29152return(node)).append(ca2.f702try);
                break;
            case 2:
                stringWriter.append(' ').append((CharSequence) m29152return(node)).append("=\"").append((CharSequence) Csuper.m29328super(node.getNodeValue())).append(ca2.f674do);
                break;
            case 3:
                stringWriter.append((CharSequence) Csuper.m29332throw(node.getNodeValue()));
                break;
            case 4:
                stringWriter.append("<![CDATA[").append((CharSequence) node.getNodeValue()).append("]]>");
                break;
            case 5:
                stringWriter.append(ca2.f679for).append((CharSequence) node.getNodeName()).append(';');
                break;
            case 6:
                m29177finally(node.getChildNodes(), stringWriter);
                break;
            case 7:
                stringWriter.append("<?").append((CharSequence) node.getNodeName()).append(' ').append((CharSequence) node.getNodeValue()).append("?>");
                break;
            case 8:
                stringWriter.append("<!--").append((CharSequence) node.getNodeValue()).append("-->");
                break;
            case 9:
                m29177finally(node.getChildNodes(), stringWriter);
                break;
            case 10:
                stringWriter.append("<!DOCTYPE ").append((CharSequence) node.getNodeName());
                DocumentType documentType = (DocumentType) node;
                if (documentType.getPublicId() != null) {
                    stringWriter.append(" PUBLIC \"").append((CharSequence) documentType.getPublicId()).append(ca2.f674do);
                }
                if (documentType.getSystemId() != null) {
                    stringWriter.append(ca2.f674do).append((CharSequence) documentType.getSystemId()).append(ca2.f674do);
                }
                if (documentType.getInternalSubset() != null) {
                    stringWriter.append(" [").append((CharSequence) documentType.getInternalSubset()).append(']');
                }
                stringWriter.append(ca2.f702try);
                break;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private void m29177finally(NodeList nodeList, StringWriter stringWriter) {
        for (int i = 0; i < nodeList.getLength(); i++) {
            m29176extends(nodeList.item(i), stringWriter);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private Attr m29178throws(Node node, String str, String str2) throws DOMException {
        Attr attrCreateAttribute = node.getOwnerDocument().createAttribute(str);
        attrCreateAttribute.setNodeValue(str2);
        return attrCreateAttribute;
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: break */
    public void mo29140break(Object obj, String str, String str2, List list) {
        if ("".equals(str2)) {
            str2 = null;
        }
        NodeList childNodes = ((Node) obj).getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if ((nodeItem.getNodeType() == 1 || nodeItem.getNodeType() == 3) && (str == null || (m29158try(nodeItem.getNodeName(), str) && m29158try(nodeItem.getNamespaceURI(), str2)))) {
                list.add(nodeItem);
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: class */
    public void mo29142class(Object obj, List list) {
        NodeList childNodes = ((Node) obj).getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            list.add(childNodes.item(i));
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: const */
    public void mo29143const(Object obj, List list) {
        NodeList childNodes = ((Node) obj).getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem.getNodeType() == 1) {
                list.add(nodeItem);
                mo29143const(nodeItem, list);
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: else */
    public void mo29144else(Object obj, StringWriter stringWriter) {
        m29176extends((Node) obj, stringWriter);
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: final */
    public Object mo29145final(Object obj) {
        return ((Node) obj).getOwnerDocument();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: import */
    public String mo29148import(Object obj) {
        return ((Node) obj).getNamespaceURI();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: new */
    public Navigator.XPathEx mo29150new(String str) throws k52 {
        try {
            return new Cdo(str);
        } catch (Exception e) {
            throw new k52(e);
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: public */
    public Object mo29151public(Object obj) {
        return ((Node) obj).getParentNode();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: static */
    public String mo29153static(Object obj) {
        StringBuilder sb = new StringBuilder();
        if (!(obj instanceof Element)) {
            return ((Node) obj).getNodeValue();
        }
        NodeList childNodes = ((Node) obj).getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (nodeItem instanceof Text) {
                sb.append(nodeItem.getNodeValue());
            }
        }
        return sb.toString();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: super */
    public Object mo29154super(Object obj) {
        if (obj instanceof Document) {
            return ((Document) obj).getDoctype();
        }
        return null;
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: switch */
    public String mo29155switch(Object obj) {
        switch (((Node) obj).getNodeType()) {
            case 1:
                return "element";
            case 2:
                return "attribute";
            case 3:
                return "text";
            case 4:
                return "cdata";
            case 5:
                return "entityReference";
            case 6:
                return "entity";
            case 7:
                return "processingInstruction";
            case 8:
                return "comment";
            case 9:
                return "document";
            case 10:
                return "documentType";
            default:
                return "unknown";
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: this */
    public void mo29156this(Object obj, String str, String str2, List list) throws DOMException {
        if (obj instanceof Element) {
            Element element = (Element) obj;
            if (str == null) {
                NamedNodeMap attributes = element.getAttributes();
                for (int i = 0; i < attributes.getLength(); i++) {
                    list.add(attributes.item(i));
                }
                return;
            }
            if ("".equals(str2)) {
                str2 = null;
            }
            Attr attributeNodeNS = element.getAttributeNodeNS(str2, str);
            if (attributeNodeNS != null) {
                list.add(attributeNodeNS);
                return;
            }
            return;
        }
        if (obj instanceof ProcessingInstruction) {
            ProcessingInstruction processingInstruction = (ProcessingInstruction) obj;
            if (TypedValues.Attributes.S_TARGET.equals(str)) {
                list.add(m29178throws(processingInstruction, TypedValues.Attributes.S_TARGET, processingInstruction.getTarget()));
                return;
            } else {
                if ("data".equals(str)) {
                    list.add(m29178throws(processingInstruction, "data", processingInstruction.getData()));
                    return;
                }
                return;
            }
        }
        if (obj instanceof DocumentType) {
            DocumentType documentType = (DocumentType) obj;
            if ("publicId".equals(str)) {
                list.add(m29178throws(documentType, "publicId", documentType.getPublicId()));
            } else if ("systemId".equals(str)) {
                list.add(m29178throws(documentType, "systemId", documentType.getSystemId()));
            } else if ("elementName".equals(str)) {
                list.add(m29178throws(documentType, "elementName", documentType.getNodeName()));
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: throw */
    public String mo29157throw(Object obj) {
        return ((Node) obj).getNodeName();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: while */
    public String mo29159while(Object obj) {
        return ((Node) obj).getPrefix();
    }
}
