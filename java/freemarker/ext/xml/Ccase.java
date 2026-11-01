package freemarker.ext.xml;

import android.support.v4.k52;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.k;
import freemarker.ext.xml.Navigator;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.jaxen.Context;
import org.jaxen.NamespaceContext;
import org.jaxen.jdom.JDOMXPath;
import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;
import org.jdom.output.XMLOutputter;

/* renamed from: freemarker.ext.xml.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Navigator {

    /* renamed from: try, reason: not valid java name */
    private static final XMLOutputter f25031try = new XMLOutputter();

    /* renamed from: freemarker.ext.xml.case$do, reason: invalid class name */
    public static final class Cdo extends JDOMXPath implements Navigator.XPathEx {
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
    private void m29160throws(Element element, List list) {
        for (Element element2 : element.getChildren()) {
            list.add(element2);
            m29160throws(element2, list);
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: break */
    public void mo29140break(Object obj, String str, String str2, List list) {
        if (obj instanceof Element) {
            Element element = (Element) obj;
            if (str == null) {
                list.addAll(element.getChildren());
                return;
            } else {
                list.addAll(element.getChildren(str, Namespace.getNamespace("", str2)));
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
        if (obj instanceof Element) {
            list.addAll(((Element) obj).getContent());
        } else if (obj instanceof Document) {
            list.addAll(((Document) obj).getContent());
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: const */
    public void mo29143const(Object obj, List list) {
        if (obj instanceof Document) {
            Element rootElement = ((Document) obj).getRootElement();
            list.add(rootElement);
            m29160throws(rootElement, list);
        } else if (obj instanceof Element) {
            m29160throws((Element) obj, list);
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: else */
    public void mo29144else(Object obj, StringWriter stringWriter) throws k52 {
        try {
            if (obj instanceof Element) {
                f25031try.output((Element) obj, stringWriter);
                return;
            }
            if (obj instanceof Attribute) {
                Attribute attribute = (Attribute) obj;
                stringWriter.write(Cclass.f28652do);
                stringWriter.write(attribute.getQualifiedName());
                stringWriter.write("=\"");
                stringWriter.write(f25031try.escapeAttributeEntities(attribute.getValue()));
                stringWriter.write("\"");
                return;
            }
            if (obj instanceof Text) {
                f25031try.output((Text) obj, stringWriter);
                return;
            }
            if (obj instanceof Document) {
                f25031try.output((Document) obj, stringWriter);
                return;
            }
            if (obj instanceof ProcessingInstruction) {
                f25031try.output((ProcessingInstruction) obj, stringWriter);
                return;
            }
            if (obj instanceof Comment) {
                f25031try.output((Comment) obj, stringWriter);
                return;
            }
            if (obj instanceof CDATA) {
                f25031try.output((CDATA) obj, stringWriter);
                return;
            }
            if (obj instanceof DocType) {
                f25031try.output((DocType) obj, stringWriter);
            } else {
                if (obj instanceof EntityRef) {
                    f25031try.output((EntityRef) obj, stringWriter);
                    return;
                }
                throw new k52(obj.getClass().getName() + " is not a core JDOM class");
            }
        } catch (IOException e) {
            throw new k52((Exception) e);
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: final */
    public Object mo29145final(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).getDocument();
        }
        if (obj instanceof Attribute) {
            Element parent = ((Attribute) obj).getParent();
            if (parent == null) {
                return null;
            }
            return parent.getDocument();
        }
        if (obj instanceof Text) {
            Element parent2 = ((Text) obj).getParent();
            if (parent2 == null) {
                return null;
            }
            return parent2.getDocument();
        }
        if (obj instanceof Document) {
            return obj;
        }
        if (obj instanceof ProcessingInstruction) {
            return ((ProcessingInstruction) obj).getDocument();
        }
        if (obj instanceof EntityRef) {
            return ((EntityRef) obj).getDocument();
        }
        if (obj instanceof Comment) {
            return ((Comment) obj).getDocument();
        }
        return null;
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
        if (obj instanceof Element) {
            return ((Element) obj).getParent();
        }
        if (obj instanceof Attribute) {
            return ((Attribute) obj).getParent();
        }
        if (obj instanceof Text) {
            return ((Text) obj).getParent();
        }
        if (obj instanceof ProcessingInstruction) {
            return ((ProcessingInstruction) obj).getParent();
        }
        if (obj instanceof Comment) {
            return ((Comment) obj).getParent();
        }
        if (obj instanceof EntityRef) {
            return ((EntityRef) obj).getParent();
        }
        return null;
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: static */
    public String mo29153static(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).getTextTrim();
        }
        if (obj instanceof Attribute) {
            return ((Attribute) obj).getValue();
        }
        if (obj instanceof CDATA) {
            return ((CDATA) obj).getText();
        }
        if (obj instanceof Comment) {
            return ((Comment) obj).getText();
        }
        if (obj instanceof ProcessingInstruction) {
            return ((ProcessingInstruction) obj).getData();
        }
        return null;
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
        return obj instanceof Attribute ? "attribute" : obj instanceof CDATA ? "cdata" : obj instanceof Comment ? "comment" : obj instanceof Document ? "document" : obj instanceof DocType ? "documentType" : obj instanceof Element ? "element" : obj instanceof EntityRef ? "entityReference" : obj instanceof Namespace ? k.f23945throw : obj instanceof ProcessingInstruction ? "processingInstruction" : obj instanceof Text ? "text" : "unknown";
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: this */
    public void mo29156this(Object obj, String str, String str2, List list) {
        if (obj instanceof Element) {
            Element element = (Element) obj;
            if (str == null) {
                list.addAll(element.getAttributes());
                return;
            }
            Attribute attribute = element.getAttribute(str, Namespace.getNamespace("", str2));
            if (attribute != null) {
                list.add(attribute);
                return;
            }
            return;
        }
        if (obj instanceof ProcessingInstruction) {
            ProcessingInstruction processingInstruction = (ProcessingInstruction) obj;
            if (TypedValues.Attributes.S_TARGET.equals(str)) {
                list.add(new Attribute(TypedValues.Attributes.S_TARGET, processingInstruction.getTarget()));
                return;
            } else if ("data".equals(str)) {
                list.add(new Attribute("data", processingInstruction.getData()));
                return;
            } else {
                list.add(new Attribute(str, processingInstruction.getValue(str)));
                return;
            }
        }
        if (obj instanceof DocType) {
            DocType docType = (DocType) obj;
            if ("publicId".equals(str)) {
                list.add(new Attribute("publicId", docType.getPublicID()));
            } else if ("systemId".equals(str)) {
                list.add(new Attribute("systemId", docType.getSystemID()));
            } else if ("elementName".equals(str)) {
                list.add(new Attribute("elementName", docType.getElementName()));
            }
        }
    }

    @Override // freemarker.ext.xml.Navigator
    /* renamed from: throw */
    public String mo29157throw(Object obj) {
        if (obj instanceof Element) {
            return ((Element) obj).getName();
        }
        if (obj instanceof Attribute) {
            return ((Attribute) obj).getName();
        }
        if (obj instanceof EntityRef) {
            return ((EntityRef) obj).getName();
        }
        if (obj instanceof ProcessingInstruction) {
            return ((ProcessingInstruction) obj).getTarget();
        }
        if (obj instanceof DocType) {
            return ((DocType) obj).getElementName();
        }
        return null;
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
