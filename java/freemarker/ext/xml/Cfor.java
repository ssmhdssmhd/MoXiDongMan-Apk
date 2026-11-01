package freemarker.ext.xml;

import android.support.v4.k52;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.k;
import freemarker.ext.xml.Navigator;
import java.io.StringWriter;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.tree.DefaultAttribute;
import org.jaxen.Context;
import org.jaxen.NamespaceContext;
import org.jaxen.dom4j.Dom4jXPath;

/* renamed from: freemarker.ext.xml.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Navigator {

    /* renamed from: freemarker.ext.xml.for$do, reason: invalid class name */
    public static final class Cdo extends Dom4jXPath implements Navigator.XPathEx {
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

    /* renamed from: throws, reason: not valid java name */
    private void m29165throws(Branch branch, List list) {
        for (Node node : branch.content()) {
            if (node instanceof Element) {
                list.add(node);
                mo29143const(node, list);
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: break */
    public void mo29140break(Object obj, String str, String str2, List list) {
        if (obj instanceof Element) {
            Element element = (Element) obj;
            if (str == null) {
                list.addAll(element.elements());
                return;
            } else {
                list.addAll(element.elements(element.getQName().getDocumentFactory().createQName(str, "", str2)));
                return;
            }
        }
        if (obj instanceof Document) {
            Element rootElement = ((Document) obj).getRootElement();
            if (str == null || (m29158try(rootElement.getName(), str) && m29158try(rootElement.getNamespaceURI(), str2))) {
                list.add(rootElement);
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: class */
    public void mo29142class(Object obj, List list) {
        if (obj instanceof Branch) {
            list.addAll(((Branch) obj).content());
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: const */
    public void mo29143const(Object obj, List list) {
        if (obj instanceof Branch) {
            m29165throws((Branch) obj, list);
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: else */
    public void mo29144else(Object obj, StringWriter stringWriter) {
        stringWriter.getBuffer().append(((Node) obj).asXML());
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: final */
    public Object mo29145final(Object obj) {
        return ((Node) obj).getDocument();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: import */
    public String mo29148import(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).getNamespaceURI();
        }
        if (obj instanceof Attribute) {
            return ((Attribute) obj).getNamespaceURI();
        }
        return null;
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
        return ((Node) obj).getParent();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: static */
    public String mo29153static(Object obj) {
        return ((Node) obj).getText();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: super */
    public Object mo29154super(Object obj) {
        if (obj instanceof Document) {
            return ((Document) obj).getDocType();
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
            case 11:
            case 12:
            default:
                return "unknown";
            case 7:
                return "processingInstruction";
            case 8:
                return "comment";
            case 9:
                return "document";
            case 10:
                return "documentType";
            case 13:
                return k.f23945throw;
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: this */
    public void mo29156this(Object obj, String str, String str2, List list) {
        if (obj instanceof Element) {
            Element element = (Element) obj;
            if (str == null) {
                list.addAll(element.attributes());
                return;
            }
            Attribute attribute = element.attribute(element.getQName().getDocumentFactory().createQName(str, "", str2));
            if (attribute != null) {
                list.add(attribute);
                return;
            }
            return;
        }
        if (obj instanceof ProcessingInstruction) {
            ProcessingInstruction processingInstruction = (ProcessingInstruction) obj;
            if (TypedValues.Attributes.S_TARGET.equals(str)) {
                list.add(new DefaultAttribute(TypedValues.Attributes.S_TARGET, processingInstruction.getTarget()));
                return;
            } else if ("data".equals(str)) {
                list.add(new DefaultAttribute("data", processingInstruction.getText()));
                return;
            } else {
                list.add(new DefaultAttribute(str, processingInstruction.getValue(str)));
                return;
            }
        }
        if (obj instanceof DocumentType) {
            DocumentType documentType = (DocumentType) obj;
            if ("publicId".equals(str)) {
                list.add(new DefaultAttribute("publicId", documentType.getPublicID()));
            } else if ("systemId".equals(str)) {
                list.add(new DefaultAttribute("systemId", documentType.getSystemID()));
            } else if ("elementName".equals(str)) {
                list.add(new DefaultAttribute("elementName", documentType.getElementName()));
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: throw */
    public String mo29157throw(Object obj) {
        return ((Node) obj).getName();
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: while */
    public String mo29159while(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).getNamespacePrefix();
        }
        if (obj instanceof Attribute) {
            return ((Attribute) obj).getNamespacePrefix();
        }
        return null;
    }
}
