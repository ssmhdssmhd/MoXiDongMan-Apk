package freemarker.ext.dom;

import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.core.d0;
import freemarker.template.Cstatic;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.util.Collections;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* renamed from: freemarker.ext.dom.else, reason: invalid class name */
/* loaded from: classes.dex */
class Celse extends Cbreak implements TemplateScalarModel {
    public Celse(Element element) {
        super(element);
    }

    /* renamed from: abstract, reason: not valid java name */
    private boolean m28782abstract(Node node) throws k52 {
        if (node.getNodeType() == 3 || node.getNodeType() == 4) {
            if (!m28785private(node.getTextContent())) {
                return true;
            }
        } else if (node.getNodeType() != 7 && node.getNodeType() != 8) {
            return true;
        }
        return false;
    }

    /* renamed from: continue, reason: not valid java name */
    private boolean m28783continue(char c) {
        if (c != ' ' && c != '\t') {
            if (!((c == '\r') | (c == '\n'))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: package, reason: not valid java name */
    private Attr m28784package(String str) {
        int iIndexOf;
        Element element = (Element) this.f24676do;
        Attr attributeNode = element.getAttributeNode(str);
        if (attributeNode != null || (iIndexOf = str.indexOf(58)) <= 0) {
            return attributeNode;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strE1 = strSubstring.equals(Cstatic.m1) ? d0.w1().E1() : d0.w1().X1(strSubstring);
        return strE1 != null ? element.getAttributeNodeNS(strE1, str.substring(iIndexOf + 1)) : attributeNode;
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m28785private(String str) {
        if (str == null) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!m28783continue(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // freemarker.ext.dom.Cbreak
    /* renamed from: case */
    public String mo28760case() {
        String nodeName = getNodeName();
        String nodeNamespace = getNodeNamespace();
        if (nodeNamespace == null || nodeNamespace.length() == 0) {
            return nodeName;
        }
        d0 d0VarW1 = d0.w1();
        String strE1 = d0VarW1.E1();
        String strD2 = (strE1 == null || !strE1.equals(nodeNamespace)) ? d0VarW1.d2(nodeNamespace) : "";
        if (strD2 == null) {
            return null;
        }
        if (strD2.length() > 0) {
            strD2 = strD2 + ":";
        }
        return strD2 + nodeName;
    }

    @Override // freemarker.ext.dom.Cbreak, freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        if (str.equals("*")) {
            Cthis cthis = new Cthis(this);
            TemplateSequenceModel childNodes = getChildNodes();
            int size = childNodes.size();
            for (int i = 0; i < size; i++) {
                Cbreak cbreak = (Cbreak) childNodes.get(i);
                if (cbreak.f24676do.getNodeType() == 1) {
                    cthis.add(cbreak);
                }
            }
            return cthis;
        }
        if (str.equals("**")) {
            return new Cthis(((Element) this.f24676do).getElementsByTagName("*"), this);
        }
        if (!str.startsWith("@")) {
            if (!Ccase.m28765do(str)) {
                return super.get(str);
            }
            Cthis cthisFilterByName = ((Cthis) getChildNodes()).filterByName(str);
            return cthisFilterByName.size() != 1 ? cthisFilterByName : cthisFilterByName.get(0);
        }
        if (!str.startsWith("@@")) {
            if (!Ccase.m28767if(str, 1)) {
                return str.equals("@*") ? new Cthis(this.f24676do.getAttributes(), this) : super.get(str);
            }
            Attr attrM28784package = m28784package(str.substring(1));
            return attrM28784package == null ? new Cthis(this) : Cbreak.m28746finally(attrM28784package);
        }
        if (str.equals(Cdo.ATTRIBUTES.getKey())) {
            return new Cthis(this.f24676do.getAttributes(), this);
        }
        if (str.equals(Cdo.START_TAG.getKey())) {
            return new ez1(new Ccatch(this.f24676do).m28775new((Element) this.f24676do));
        }
        if (str.equals(Cdo.END_TAG.getKey())) {
            return new ez1(new Ccatch(this.f24676do).m28774for((Element) this.f24676do));
        }
        if (str.equals(Cdo.ATTRIBUTES_MARKUP.getKey())) {
            StringBuilder sb = new StringBuilder();
            new Ccatch(this.f24676do).m28776try(this.f24676do.getAttributes(), sb);
            return new ez1(sb.toString().trim());
        }
        if (str.equals(Cdo.PREVIOUS_SIBLING_ELEMENT.getKey())) {
            Node previousSibling = this.f24676do.getPreviousSibling();
            while (previousSibling != null && !m28782abstract(previousSibling)) {
                previousSibling = previousSibling.getPreviousSibling();
            }
            return (previousSibling == null || previousSibling.getNodeType() != 1) ? new Cthis(Collections.emptyList(), (Cbreak) null) : Cbreak.m28746finally(previousSibling);
        }
        if (!str.equals(Cdo.NEXT_SIBLING_ELEMENT.getKey())) {
            return super.get(str);
        }
        Node nextSibling = this.f24676do.getNextSibling();
        while (nextSibling != null && !m28782abstract(nextSibling)) {
            nextSibling = nextSibling.getNextSibling();
        }
        return (nextSibling == null || nextSibling.getNodeType() != 1) ? new Cthis(Collections.emptyList(), (Cbreak) null) : Cbreak.m28746finally(nextSibling);
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() throws k52 {
        NodeList childNodes = this.f24676do.getChildNodes();
        String str = "";
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            short nodeType = nodeItem.getNodeType();
            if (nodeType == 1) {
                throw new k52("Only elements with no child elements can be processed as text.\nThis element with name \"" + this.f24676do.getNodeName() + "\" has a child element named: " + nodeItem.getNodeName());
            }
            if (nodeType == 3 || nodeType == 4) {
                str = str + nodeItem.getNodeValue();
            }
        }
        return str;
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() {
        String localName = this.f24676do.getLocalName();
        return (localName == null || localName.equals("")) ? this.f24676do.getNodeName() : localName;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return false;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public boolean m28786strictfp(String str, d0 d0Var) {
        return Ccase.m28766for(str, getNodeName(), getNodeNamespace(), d0Var);
    }
}
