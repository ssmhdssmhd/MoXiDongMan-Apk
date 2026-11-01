package freemarker.ext.dom;

import android.support.v4.ca2;
import android.support.v4.mc;
import freemarker.core.d0;
import freemarker.template.Cstatic;
import freemarker.template.utility.Csuper;
import java.util.LinkedHashMap;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* renamed from: freemarker.ext.dom.catch, reason: invalid class name */
/* loaded from: classes.dex */
class Ccatch {

    /* renamed from: do, reason: not valid java name */
    private Element f24680do;

    /* renamed from: else, reason: not valid java name */
    private String f24681else;

    /* renamed from: for, reason: not valid java name */
    private String f24682for;

    /* renamed from: if, reason: not valid java name */
    private d0 f24684if;

    /* renamed from: new, reason: not valid java name */
    private boolean f24685new;

    /* renamed from: try, reason: not valid java name */
    private boolean f24686try;

    /* renamed from: case, reason: not valid java name */
    private LinkedHashMap<String, String> f24679case = new LinkedHashMap<>();

    /* renamed from: goto, reason: not valid java name */
    public int f24683goto = 1;

    public Ccatch(Node node) {
        if (node instanceof Element) {
            m28771this((Element) node);
        } else if (node instanceof Attr) {
            m28771this(((Attr) node).getOwnerElement());
        } else if (node instanceof Document) {
            m28771this(((Document) node).getDocumentElement());
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m28768do(Node node) {
        String namespaceURI = node.getNamespaceURI();
        if (namespaceURI != null && namespaceURI.length() > 0) {
            String strD2 = this.f24684if.d2(namespaceURI);
            if (strD2 == null && (strD2 = this.f24679case.get(namespaceURI)) == null) {
                do {
                    int i = this.f24683goto;
                    this.f24683goto = i + 1;
                    strD2 = Csuper.x(i);
                } while (this.f24684if.X1(strD2) != null);
            }
            this.f24679case.put(namespaceURI, strD2);
        } else if (this.f24685new && node.getNodeType() == 1) {
            this.f24679case.put(this.f24682for, Cstatic.m1);
            this.f24686try = true;
        } else if (node.getNodeType() == 2 && this.f24685new && this.f24682for.equals(namespaceURI)) {
            this.f24679case.put(this.f24682for, Cstatic.m1);
            this.f24686try = true;
        }
        NodeList childNodes = node.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            m28768do(childNodes.item(i2));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m28769goto(Node node, StringBuilder sb) {
        String namespaceURI = node.getNamespaceURI();
        if (namespaceURI == null || namespaceURI.length() == 0) {
            sb.append(node.getNodeName());
            return;
        }
        String str = this.f24679case.get(namespaceURI);
        if (str == null) {
            sb.append(node.getNodeName());
            return;
        }
        if (str.length() > 0) {
            sb.append(str);
            sb.append(':');
        }
        sb.append(node.getLocalName());
    }

    /* renamed from: if, reason: not valid java name */
    private void m28770if() {
        StringBuilder sb = new StringBuilder();
        if (this.f24686try) {
            sb.append(" xmlns=\"");
            sb.append(this.f24682for);
            sb.append("\"");
        }
        for (String str : this.f24679case.keySet()) {
            if (str != null && str.length() != 0) {
                String str2 = this.f24679case.get(str);
                if (str2 == null) {
                    throw new mc("No xmlns prefix was associated to URI: " + str);
                }
                sb.append(" xmlns");
                if (str2.length() > 0) {
                    sb.append(":");
                    sb.append(str2);
                }
                sb.append("=\"");
                sb.append(str);
                sb.append("\"");
            }
        }
        this.f24681else = sb.toString();
    }

    /* renamed from: this, reason: not valid java name */
    private void m28771this(Element element) {
        this.f24680do = element;
        d0 d0VarW1 = d0.w1();
        this.f24684if = d0VarW1;
        String strE1 = d0VarW1.E1();
        this.f24682for = strE1;
        this.f24685new = strE1 != null && strE1.length() > 0;
        this.f24679case.put(null, "");
        this.f24679case.put("", "");
        m28768do(element);
        if (!this.f24686try && this.f24685new) {
            this.f24679case.put(this.f24682for, "");
        }
        m28770if();
    }

    /* renamed from: case, reason: not valid java name */
    public void m28772case(Node node, StringBuilder sb) {
        switch (node.getNodeType()) {
            case 1:
                sb.append(ca2.f687new);
                m28769goto(node, sb);
                if (node == this.f24680do) {
                    sb.append(this.f24681else);
                }
                m28776try(node.getAttributes(), sb);
                if (node.getChildNodes().getLength() != 0) {
                    sb.append(ca2.f702try);
                    m28773else(node.getChildNodes(), sb);
                    sb.append("</");
                    m28769goto(node, sb);
                    sb.append(ca2.f702try);
                    break;
                } else {
                    sb.append(" />");
                    break;
                }
            case 2:
                if (((Attr) node).getSpecified()) {
                    sb.append(' ');
                    m28769goto(node, sb);
                    sb.append("=\"");
                    sb.append(Csuper.m29337while(node.getNodeValue()));
                    sb.append(ca2.f674do);
                    break;
                }
                break;
            case 3:
            case 4:
                sb.append(Csuper.m29332throw(node.getNodeValue()));
                break;
            case 5:
                sb.append(ca2.f679for);
                sb.append(node.getNodeName());
                sb.append(';');
                break;
            case 6:
                m28773else(node.getChildNodes(), sb);
                break;
            case 7:
                sb.append("<?");
                sb.append(node.getNodeName());
                sb.append(' ');
                sb.append(node.getNodeValue());
                sb.append("?>");
                break;
            case 8:
                sb.append("<!--");
                sb.append(node.getNodeValue());
                sb.append("-->");
                break;
            case 9:
                m28773else(node.getChildNodes(), sb);
                break;
            case 10:
                sb.append("<!DOCTYPE ");
                sb.append(node.getNodeName());
                DocumentType documentType = (DocumentType) node;
                if (documentType.getPublicId() != null) {
                    sb.append(" PUBLIC \"");
                    sb.append(documentType.getPublicId());
                    sb.append(ca2.f674do);
                }
                if (documentType.getSystemId() != null) {
                    sb.append(" \"");
                    sb.append(documentType.getSystemId());
                    sb.append(ca2.f674do);
                }
                if (documentType.getInternalSubset() != null) {
                    sb.append(" [");
                    sb.append(documentType.getInternalSubset());
                    sb.append(']');
                }
                sb.append(ca2.f702try);
                break;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m28773else(NodeList nodeList, StringBuilder sb) {
        for (int i = 0; i < nodeList.getLength(); i++) {
            m28772case(nodeList.item(i), sb);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public String m28774for(Element element) {
        StringBuilder sb = new StringBuilder();
        sb.append("</");
        m28769goto(element, sb);
        sb.append(ca2.f702try);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public String m28775new(Element element) {
        StringBuilder sb = new StringBuilder();
        sb.append(ca2.f687new);
        m28769goto(element, sb);
        sb.append(this.f24681else);
        m28776try(element.getAttributes(), sb);
        sb.append(ca2.f702try);
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m28776try(NamedNodeMap namedNodeMap, StringBuilder sb) {
        for (int i = 0; i < namedNodeMap.getLength(); i++) {
            Node nodeItem = namedNodeMap.item(i);
            if (nodeItem.getNodeType() != 2 || (!nodeItem.getNodeName().startsWith("xmlns:") && !nodeItem.getNodeName().equals("xmlns"))) {
                m28772case(nodeItem, sb);
            }
        }
    }
}
