package freemarker.template.utility;

import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.template.Cnative;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.util.HashMap;
import java.util.List;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

/* renamed from: freemarker.template.utility.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements TemplateHashModel {

    /* renamed from: for, reason: not valid java name */
    private static HashMap f25226for;

    /* renamed from: do, reason: not valid java name */
    private Node f25227do;

    /* renamed from: if, reason: not valid java name */
    private HashMap f25228if = new HashMap();

    /* renamed from: freemarker.template.utility.new$do, reason: invalid class name */
    public class Cdo implements TemplateMethodModel {
        public Cdo() {
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            if (list.size() != 1) {
                throw new k52("Expecting exactly one string argument here");
            }
            String str = (String) list.get(0);
            for (Cnew cnew = (Cnew) Cnew.this.get("parent"); cnew != null; cnew = (Cnew) cnew.get("parent")) {
                if (str.equals(cnew.getNodeName())) {
                    return cnew;
                }
            }
            return null;
        }
    }

    /* renamed from: freemarker.template.utility.new$if, reason: invalid class name */
    public class Cif implements TemplateSequenceModel, TemplateMethodModel {

        /* renamed from: do, reason: not valid java name */
        private NodeList f25230do;

        /* renamed from: if, reason: not valid java name */
        private TemplateModel[] f25232if;

        public Cif(NodeList nodeList) {
            this.f25230do = nodeList;
            this.f25232if = new TemplateModel[nodeList.getLength()];
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            if (list.size() != 1) {
                throw new k52("Expecting exactly one string argument here");
            }
            if (!(Cnew.this.f25227do instanceof Element)) {
                throw new k52("Expecting element here.");
            }
            return Cnew.this.new Cif(((Element) Cnew.this.f25227do).getElementsByTagName((String) list.get(0)));
        }

        @Override // freemarker.template.TemplateSequenceModel
        public TemplateModel get(int i) {
            Cnew cnew = (Cnew) this.f25232if[i];
            if (cnew != null) {
                return cnew;
            }
            Cnew cnew2 = new Cnew(this.f25230do.item(i));
            this.f25232if[i] = cnew2;
            cnew2.m29298else(Cnew.this);
            return cnew2;
        }

        @Override // freemarker.template.TemplateSequenceModel
        public int size() {
            return this.f25232if.length;
        }
    }

    static {
        HashMap map = new HashMap();
        f25226for = map;
        map.put("*", "children");
        f25226for.put("@*", "attributes");
    }

    public Cnew(Node node) {
        this.f25227do = node;
    }

    /* renamed from: case, reason: not valid java name */
    private static Element m29292case(Node node) {
        while (node != null) {
            node = node.getPreviousSibling();
            if (node instanceof Element) {
                return (Element) node;
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    private static Element m29294for(Node node) {
        if (node.hasChildNodes()) {
            NodeList childNodes = node.getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem instanceof Element) {
                    return (Element) nodeItem;
                }
            }
        }
        Element elementM29296new = m29296new(node);
        if (elementM29296new != null) {
            return elementM29296new;
        }
        for (Node parentNode = node.getParentNode(); parentNode instanceof Element; parentNode = parentNode.getParentNode()) {
            Element elementM29296new2 = m29296new(parentNode);
            if (elementM29296new2 != null) {
                return elementM29296new2;
            }
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m29295if(Node node) {
        String str = "";
        if (node instanceof Text) {
            return ((Text) node).getData();
        }
        if (!(node instanceof Element)) {
            return "";
        }
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            str = str + m29295if(childNodes.item(i));
        }
        return str;
    }

    /* renamed from: new, reason: not valid java name */
    private static Element m29296new(Node node) {
        while (node != null) {
            node = node.getNextSibling();
            if (node instanceof Element) {
                return (Element) node;
            }
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    private static Element m29297try(Node node) {
        Element elementM29292case = m29292case(node);
        if (elementM29292case != null) {
            return elementM29292case;
        }
        Node parentNode = node.getParentNode();
        if (parentNode instanceof Element) {
            return (Element) parentNode;
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public void m29298else(Cnew cnew) {
        if (cnew != null) {
            this.f25228if.put("parent", cnew);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [freemarker.template.utility.new$do] */
    /* JADX WARN: Type inference failed for: r0v23, types: [freemarker.template.utility.new$if] */
    /* JADX WARN: Type inference failed for: r0v24, types: [android.support.v4.ez1] */
    /* JADX WARN: Type inference failed for: r0v27, types: [freemarker.template.TemplateBooleanModel] */
    /* JADX WARN: Type inference failed for: r0v28, types: [freemarker.template.TemplateBooleanModel] */
    /* JADX WARN: Type inference failed for: r0v31, types: [freemarker.template.TemplateBooleanModel] */
    /* JADX WARN: Type inference failed for: r0v32, types: [freemarker.template.TemplateBooleanModel] */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v39, types: [freemarker.template.native] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [freemarker.template.TemplateModel] */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.support.v4.ez1] */
    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        if (f25226for.containsKey(str)) {
            str = (String) f25226for.get(str);
        }
        Object cnew = null;
        ?? ez1Var = this.f25228if.containsKey(str) ? (TemplateModel) this.f25228if.get(str) : 0;
        if (ez1Var == 0) {
            if ("attributes".equals(str)) {
                NamedNodeMap attributes = this.f25227do.getAttributes();
                if (attributes != null) {
                    ez1Var = new Cnative();
                    for (int i = 0; i < attributes.getLength(); i++) {
                        Attr attr = (Attr) attributes.item(i);
                        ez1Var.put(attr.getName(), attr.getValue());
                    }
                }
            } else {
                if (str.charAt(0) == '@') {
                    Node node = this.f25227do;
                    if (!(node instanceof Element)) {
                        throw new k52("Trying to get an attribute value for a non-element node");
                    }
                    cnew = new ez1(((Element) node).getAttribute(str.substring(1)));
                } else if ("is_element".equals(str)) {
                    ez1Var = this.f25227do instanceof Element ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
                } else if ("is_text".equals(str)) {
                    ez1Var = this.f25227do instanceof Text ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
                } else if ("name".equals(str)) {
                    ez1Var = new ez1(this.f25227do.getNodeName());
                } else if ("children".equals(str)) {
                    ez1Var = new Cif(this.f25227do.getChildNodes());
                } else if ("parent".equals(str)) {
                    Node parentNode = this.f25227do.getParentNode();
                    if (parentNode != null) {
                        cnew = new Cnew(parentNode);
                    }
                } else if ("ancestorByName".equals(str)) {
                    ez1Var = new Cdo();
                } else if ("nextSibling".equals(str)) {
                    Node nextSibling = this.f25227do.getNextSibling();
                    if (nextSibling != null) {
                        cnew = new Cnew(nextSibling);
                    }
                } else if ("previousSibling".equals(str)) {
                    Node previousSibling = this.f25227do.getPreviousSibling();
                    if (previousSibling != null) {
                        cnew = new Cnew(previousSibling);
                    }
                } else if ("nextSiblingElement".equals(str)) {
                    Element elementM29296new = m29296new(this.f25227do);
                    if (elementM29296new != null) {
                        cnew = new Cnew(elementM29296new);
                    }
                } else if ("previousSiblingElement".equals(str)) {
                    Element elementM29292case = m29292case(this.f25227do);
                    if (elementM29292case != null) {
                        cnew = new Cnew(elementM29292case);
                    }
                } else if ("nextElement".equals(str)) {
                    Element elementM29294for = m29294for(this.f25227do);
                    if (elementM29294for != null) {
                        cnew = new Cnew(elementM29294for);
                    }
                } else if ("previousElement".equals(str)) {
                    Element elementM29297try = m29297try(this.f25227do);
                    if (elementM29297try != null) {
                        cnew = new Cnew(elementM29297try);
                    }
                } else if ("text".equals(str)) {
                    ez1Var = new ez1(m29295if(this.f25227do));
                }
                ez1Var = cnew;
            }
            this.f25228if.put(str, ez1Var);
        }
        return ez1Var;
    }

    public String getNodeName() {
        return this.f25227do.getNodeName();
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return false;
    }
}
