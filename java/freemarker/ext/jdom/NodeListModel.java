package freemarker.ext.jdom;

import android.support.v4.ez1;
import android.support.v4.k52;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.jaxen.Context;
import org.jaxen.JaxenException;
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
import org.jdom.input.SAXBuilder;
import org.jdom.output.XMLOutputter;

@Deprecated
/* loaded from: classes.dex */
public class NodeListModel implements TemplateHashModel, TemplateMethodModel, TemplateCollectionModel, TemplateSequenceModel, TemplateScalarModel {

    /* renamed from: case, reason: not valid java name */
    private static final NamedNodeOperator f24709case;

    /* renamed from: class, reason: not valid java name */
    private static final int f24711class = 0;

    /* renamed from: const, reason: not valid java name */
    private static final int f24712const = 1;

    /* renamed from: else, reason: not valid java name */
    private static final NamedNodeOperator f24713else;

    /* renamed from: final, reason: not valid java name */
    private static final int f24714final = 2;

    /* renamed from: for, reason: not valid java name */
    private static final Ccase f24715for;

    /* renamed from: goto, reason: not valid java name */
    private static final NodeOperator f24716goto;

    /* renamed from: import, reason: not valid java name */
    private static final int f24717import = 6;

    /* renamed from: super, reason: not valid java name */
    private static final int f24719super = 3;

    /* renamed from: this, reason: not valid java name */
    private static final NodeOperator f24720this;

    /* renamed from: throw, reason: not valid java name */
    private static final int f24721throw = 4;

    /* renamed from: while, reason: not valid java name */
    private static final int f24723while = 5;

    /* renamed from: do, reason: not valid java name */
    private final List f24724do;

    /* renamed from: if, reason: not valid java name */
    private final Map f24725if;

    /* renamed from: new, reason: not valid java name */
    private static final NodeListModel f24718new = new NodeListModel((List) null, false);

    /* renamed from: try, reason: not valid java name */
    private static final Map f24722try = new WeakHashMap();

    /* renamed from: break, reason: not valid java name */
    private static final Map f24708break = m28813case();

    /* renamed from: catch, reason: not valid java name */
    private static final Map f24710catch = m28818else();

    public interface NamedNodeOperator {
        List operate(Object obj, String str, Namespace namespace) throws k52;
    }

    public interface NodeOperator {
        List operate(Object obj) throws k52;
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$break, reason: invalid class name */
    public static final class Cbreak extends Cthis {
        private Cbreak() {
            super(null);
        }

        @Override // freemarker.ext.jdom.NodeListModel.Cthis, freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            LinkedList linkedList = (LinkedList) super.operate(obj);
            linkedList.addFirst(obj);
            return linkedList;
        }

        public /* synthetic */ Cbreak(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$case, reason: invalid class name */
    public static final class Ccase extends XMLOutputter {
        private Ccase() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m28827do(Attribute attribute, Writer writer) throws IOException {
            writer.write(org.apache.commons.lang3.Cclass.f28652do);
            writer.write(attribute.getQualifiedName());
            writer.write("=");
            writer.write("\"");
            writer.write(escapeAttributeEntities(attribute.getValue()));
            writer.write("\"");
        }

        public /* synthetic */ Ccase(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$catch, reason: invalid class name */
    public static final class Ccatch implements NodeOperator {
        private Ccatch() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (!(obj instanceof Document)) {
                return null;
            }
            DocType docType = ((Document) obj).getDocType();
            return docType == null ? Collections.EMPTY_LIST : Collections.singletonList(docType);
        }

        public /* synthetic */ Ccatch(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$class, reason: invalid class name */
    public static final class Cclass implements NodeOperator {
        private Cclass() {
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public List operate(Object obj) {
            Document document;
            if (obj instanceof Element) {
                document = ((Element) obj).getDocument();
            } else if (obj instanceof Attribute) {
                Element parent = ((Attribute) obj).getParent();
                document = parent == null ? null : parent.getDocument();
            } else if (obj instanceof Text) {
                Element parent2 = ((Text) obj).getParent();
                if (parent2 != null) {
                    document = parent2.getDocument();
                }
            } else if (obj instanceof Document) {
                document = (Document) obj;
            } else if (obj instanceof ProcessingInstruction) {
                document = ((ProcessingInstruction) obj).getDocument();
            } else if (obj instanceof EntityRef) {
                document = ((EntityRef) obj).getDocument();
            } else {
                if (!(obj instanceof Comment)) {
                    return null;
                }
                document = ((Comment) obj).getDocument();
            }
            return document == null ? Collections.EMPTY_LIST : Collections.singletonList(document);
        }

        public /* synthetic */ Cclass(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$const, reason: invalid class name */
    public static final class Cconst extends JDOMXPath {

        /* renamed from: freemarker.ext.jdom.NodeListModel$const$do, reason: invalid class name */
        public static final class Cdo implements NamespaceContext {

            /* renamed from: do, reason: not valid java name */
            private final Map f24726do;

            public Cdo(Map map) {
                this.f24726do = map;
            }

            /* renamed from: do, reason: not valid java name */
            public String m28829do(String str) {
                String uri;
                if (str.length() == 0) {
                    return str;
                }
                synchronized (this.f24726do) {
                    Namespace namespace = (Namespace) this.f24726do.get(str);
                    uri = namespace == null ? null : namespace.getURI();
                }
                return uri;
            }
        }

        public Cconst(String str) throws JaxenException {
            super(str);
        }

        /* renamed from: do, reason: not valid java name */
        public List m28828do(Object obj, Map map) throws JaxenException {
            Context context = getContext(obj);
            context.getContextSupport().setNamespaceContext(new Cdo(map));
            return selectNodesForContext(context);
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$do, reason: invalid class name */
    public class Cdo implements TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        private final Iterator f24727do;

        public Cdo() {
            this.f24727do = NodeListModel.this.f24724do.iterator();
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() {
            return this.f24727do.hasNext();
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() {
            Cdo cdo = null;
            if (this.f24727do.hasNext()) {
                return new NodeListModel(this.f24727do.next(), NodeListModel.this.f24725if, cdo);
            }
            return null;
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$else, reason: invalid class name */
    public static final class Celse implements NodeOperator {
        private Celse() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                Element element = (Element) obj;
                return Collections.singletonList(element.getNamespace().getURI() + element.getName());
            }
            if (!(obj instanceof Attribute)) {
                return null;
            }
            Attribute attribute = (Attribute) obj;
            return Collections.singletonList(attribute.getNamespace().getURI() + attribute.getName());
        }

        public /* synthetic */ Celse(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$final, reason: invalid class name */
    public final class Cfinal implements TemplateMethodModel {
        private Cfinal() {
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) {
            HashSet hashSet = new HashSet(list);
            LinkedList linkedList = new LinkedList(NodeListModel.this.f24724do);
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                String publicID = null;
                if (next instanceof Element) {
                    publicID = ((Element) next).getName();
                } else if (next instanceof Attribute) {
                    publicID = ((Attribute) next).getName();
                } else if (next instanceof ProcessingInstruction) {
                    publicID = ((ProcessingInstruction) next).getTarget();
                } else if (next instanceof EntityRef) {
                    publicID = ((EntityRef) next).getName();
                } else if (next instanceof DocType) {
                    publicID = ((DocType) next).getPublicID();
                }
                if (publicID == null || !hashSet.contains(publicID)) {
                    it.remove();
                }
            }
            return NodeListModel.m28825try(linkedList, NodeListModel.this.f24725if);
        }

        public boolean isEmpty() {
            return false;
        }

        public /* synthetic */ Cfinal(NodeListModel nodeListModel, Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$for, reason: invalid class name */
    public static final class Cfor implements NodeOperator {
        private Cfor() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return ((Element) obj).getChildren();
            }
            if (!(obj instanceof Document)) {
                return null;
            }
            Element rootElement = ((Document) obj).getRootElement();
            return rootElement == null ? Collections.EMPTY_LIST : Collections.singletonList(rootElement);
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$goto, reason: invalid class name */
    public static final class Cgoto implements NodeOperator {
        private Cgoto() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return ((Element) obj).getContent();
            }
            if (obj instanceof Document) {
                return ((Document) obj).getContent();
            }
            return null;
        }

        public /* synthetic */ Cgoto(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$if, reason: invalid class name */
    public static final class Cif implements NodeOperator {
        private Cif() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return ((Element) obj).getAttributes();
            }
            return null;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$import, reason: invalid class name */
    public static final class Cimport implements NodeOperator {
        private Cimport() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return Collections.singletonList(((Element) obj).getNamespace().getPrefix());
            }
            if (obj instanceof Attribute) {
                return Collections.singletonList(((Attribute) obj).getNamespace().getPrefix());
            }
            return null;
        }

        public /* synthetic */ Cimport(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$native, reason: invalid class name */
    public static final class Cnative implements NodeOperator {
        private Cnative() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return Collections.singletonList(((Element) obj).getNamespace().getURI());
            }
            if (obj instanceof Attribute) {
                return Collections.singletonList(((Attribute) obj).getNamespace().getURI());
            }
            return null;
        }

        public /* synthetic */ Cnative(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$new, reason: invalid class name */
    public static final class Cnew implements NodeOperator {
        private Cnew() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            Element elementM28812break = NodeListModel.m28812break(obj);
            if (elementM28812break == null) {
                return Collections.EMPTY_LIST;
            }
            LinkedList linkedList = new LinkedList();
            do {
                linkedList.addFirst(elementM28812break);
                elementM28812break = elementM28812break.getParent();
            } while (elementM28812break != null);
            return linkedList;
        }

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$public, reason: invalid class name */
    public static final class Cpublic implements NodeOperator {
        private Cpublic() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            Element elementM28812break = NodeListModel.m28812break(obj);
            return elementM28812break == null ? Collections.EMPTY_LIST : Collections.singletonList(elementM28812break);
        }

        public /* synthetic */ Cpublic(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$return, reason: invalid class name */
    public static final class Creturn implements NodeOperator {
        private Creturn() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return Collections.singletonList(((Element) obj).getQualifiedName());
            }
            if (obj instanceof Attribute) {
                return Collections.singletonList(((Attribute) obj).getQualifiedName());
            }
            return null;
        }

        public /* synthetic */ Creturn(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$static, reason: invalid class name */
    public final class Cstatic implements TemplateMethodModel {
        private Cstatic() {
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            if (list.size() != 2) {
                throw new k52("_registerNamespace(prefix, uri) requires two arguments");
            }
            NodeListModel.this.m28826final((String) list.get(0), (String) list.get(1));
            return TemplateScalarModel.EMPTY_STRING;
        }

        public boolean isEmpty() {
            return false;
        }

        public /* synthetic */ Cstatic(NodeListModel nodeListModel, Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$super, reason: invalid class name */
    public static final class Csuper implements NodeOperator {
        private Csuper() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return Collections.singletonList(((Element) obj).getName());
            }
            if (obj instanceof Attribute) {
                return Collections.singletonList(((Attribute) obj).getName());
            }
            if (obj instanceof EntityRef) {
                return Collections.singletonList(((EntityRef) obj).getName());
            }
            if (obj instanceof ProcessingInstruction) {
                return Collections.singletonList(((ProcessingInstruction) obj).getTarget());
            }
            if (obj instanceof DocType) {
                return Collections.singletonList(((DocType) obj).getPublicID());
            }
            return null;
        }

        public /* synthetic */ Csuper(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$switch, reason: invalid class name */
    public static final class Cswitch implements NodeOperator {
        private Cswitch() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            if (obj instanceof Element) {
                return Collections.singletonList(((Element) obj).getTextTrim());
            }
            if (obj instanceof Attribute) {
                return Collections.singletonList(((Attribute) obj).getValue());
            }
            if (obj instanceof CDATA) {
                return Collections.singletonList(((CDATA) obj).getText());
            }
            if (obj instanceof Comment) {
                return Collections.singletonList(((Comment) obj).getText());
            }
            if (obj instanceof ProcessingInstruction) {
                return Collections.singletonList(((ProcessingInstruction) obj).getData());
            }
            return null;
        }

        public /* synthetic */ Cswitch(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$this, reason: invalid class name */
    public static class Cthis implements NodeOperator {
        private Cthis() {
        }

        /* renamed from: do, reason: not valid java name */
        private void m28830do(Element element, List list) {
            for (Element element2 : element.getChildren()) {
                list.add(element2);
                m28830do(element2, list);
            }
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            LinkedList linkedList = new LinkedList();
            if (obj instanceof Element) {
                m28830do((Element) obj, linkedList);
            } else {
                if (!(obj instanceof Document)) {
                    return null;
                }
                Element rootElement = ((Document) obj).getRootElement();
                linkedList.add(rootElement);
                m28830do(rootElement, linkedList);
            }
            return linkedList;
        }

        public /* synthetic */ Cthis(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$throw, reason: invalid class name */
    public static final class Cthrow implements NamedNodeOperator {
        private Cthrow() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NamedNodeOperator
        public List operate(Object obj, String str, Namespace namespace) {
            Attribute attribute;
            Attribute attribute2;
            if (obj instanceof Element) {
                attribute = ((Element) obj).getAttribute(str, namespace);
            } else if (obj instanceof ProcessingInstruction) {
                ProcessingInstruction processingInstruction = (ProcessingInstruction) obj;
                if (TypedValues.Attributes.S_TARGET.equals(str)) {
                    attribute2 = new Attribute(TypedValues.Attributes.S_TARGET, processingInstruction.getTarget());
                } else if ("data".equals(str)) {
                    attribute2 = new Attribute("data", processingInstruction.getData());
                } else {
                    attribute = new Attribute(str, processingInstruction.getValue(str));
                }
                attribute = attribute2;
            } else {
                if (!(obj instanceof DocType)) {
                    return null;
                }
                DocType docType = (DocType) obj;
                if ("publicId".equals(str)) {
                    attribute2 = new Attribute("publicId", docType.getPublicID());
                } else if ("systemId".equals(str)) {
                    attribute2 = new Attribute("systemId", docType.getSystemID());
                } else if ("elementName".equals(str)) {
                    attribute2 = new Attribute("elementName", docType.getElementName());
                } else {
                    attribute = null;
                }
                attribute = attribute2;
            }
            return attribute == null ? Collections.EMPTY_LIST : Collections.singletonList(attribute);
        }

        public /* synthetic */ Cthrow(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$throws, reason: invalid class name */
    public final class Cthrows implements TemplateMethodModel {
        private Cthrows() {
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) throws k52 {
            if (list == null || list.size() == 0) {
                throw new k52("_type expects exactly one argument");
            }
            String str = (String) list.get(0);
            boolean z = str.indexOf(33) != -1;
            boolean z2 = z != (str.indexOf(97) == -1);
            boolean z3 = z != (str.indexOf(99) == -1);
            boolean z4 = z != (str.indexOf(100) == -1);
            boolean z5 = z != (str.indexOf(101) == -1);
            boolean z6 = z != (str.indexOf(110) == -1);
            boolean z7 = z != (str.indexOf(112) == -1);
            boolean z8 = z != (str.indexOf(116) == -1);
            boolean z9 = z != (str.indexOf(120) == -1);
            LinkedList linkedList = new LinkedList(NodeListModel.this.f24724do);
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((next instanceof Element) && z5) || (((next instanceof Attribute) && z2) || (((next instanceof String) && z9) || (((next instanceof Text) && z9) || (((next instanceof ProcessingInstruction) && z7) || (((next instanceof Comment) && z3) || (((next instanceof EntityRef) && z6) || (((next instanceof Document) && z4) || ((next instanceof DocType) && z8))))))))) {
                    it.remove();
                }
            }
            return NodeListModel.m28825try(linkedList, NodeListModel.this.f24725if);
        }

        public boolean isEmpty() {
            return false;
        }

        public /* synthetic */ Cthrows(NodeListModel nodeListModel, Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$try, reason: invalid class name */
    public static final class Ctry implements NodeOperator {
        private Ctry() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NodeOperator
        public List operate(Object obj) {
            Element elementM28812break = NodeListModel.m28812break(obj);
            if (elementM28812break == null) {
                return Collections.singletonList(obj);
            }
            LinkedList linkedList = new LinkedList();
            linkedList.addFirst(obj);
            do {
                linkedList.addFirst(elementM28812break);
                elementM28812break = elementM28812break.getParent();
            } while (elementM28812break != null);
            return linkedList;
        }

        public /* synthetic */ Ctry(Cdo cdo) {
            this();
        }
    }

    /* renamed from: freemarker.ext.jdom.NodeListModel$while, reason: invalid class name */
    public static final class Cwhile implements NamedNodeOperator {
        private Cwhile() {
        }

        @Override // freemarker.ext.jdom.NodeListModel.NamedNodeOperator
        public List operate(Object obj, String str, Namespace namespace) {
            if (obj instanceof Element) {
                return ((Element) obj).getChildren(str, namespace);
            }
            if (!(obj instanceof Document)) {
                return null;
            }
            Element rootElement = ((Document) obj).getRootElement();
            return (rootElement != null && rootElement.getName().equals(str) && rootElement.getNamespaceURI().equals(namespace.getURI())) ? Collections.singletonList(rootElement) : Collections.EMPTY_LIST;
        }

        public /* synthetic */ Cwhile(Cdo cdo) {
            this();
        }
    }

    static {
        Cdo cdo = null;
        f24715for = new Ccase(cdo);
        f24709case = new Cwhile(cdo);
        f24713else = new Cthrow(cdo);
        f24716goto = new Cif(cdo);
        f24720this = new Cfor(cdo);
    }

    public /* synthetic */ NodeListModel(Object obj, Map map, Cdo cdo) {
        this(obj, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static final Element m28812break(Object obj) {
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

    /* renamed from: case, reason: not valid java name */
    private static final Map m28813case() {
        HashMap map = new HashMap();
        Cdo cdo = null;
        map.put("_ancestor", new Cnew(cdo));
        map.put("_ancestorOrSelf", new Ctry(cdo));
        map.put("_attributes", f24716goto);
        map.put("_children", f24720this);
        map.put("_cname", new Celse(cdo));
        map.put("_content", new Cgoto(cdo));
        map.put("_descendant", new Cthis(cdo));
        map.put("_descendantOrSelf", new Cbreak(cdo));
        map.put("_document", new Cclass(cdo));
        map.put("_doctype", new Ccatch(cdo));
        map.put("_name", new Csuper(cdo));
        map.put("_nsprefix", new Cimport(cdo));
        map.put("_nsuri", new Cnative(cdo));
        map.put("_parent", new Cpublic(cdo));
        map.put("_qname", new Creturn(cdo));
        map.put("_text", new Cswitch(cdo));
        return map;
    }

    /* renamed from: catch, reason: not valid java name */
    private ez1 m28814catch() throws k52 {
        List listM28820goto = m28820goto((Cswitch) f24708break.get("_text"), this.f24724do);
        StringBuilder sb = new StringBuilder();
        Iterator it = listM28820goto.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return new ez1(sb.toString());
    }

    /* renamed from: class, reason: not valid java name */
    private TemplateModel m28815class() {
        if (this.f24724do.size() == 0) {
            return new ez1("");
        }
        Object obj = this.f24724do.get(0);
        return new ez1(new String(new char[]{obj instanceof Element ? 'e' : ((obj instanceof Text) || (obj instanceof String)) ? 'x' : obj instanceof Attribute ? 'a' : obj instanceof EntityRef ? 'n' : obj instanceof Document ? 'd' : obj instanceof DocType ? 't' : obj instanceof Comment ? 'c' : obj instanceof ProcessingInstruction ? 'p' : '?'}));
    }

    @Deprecated
    /* renamed from: const, reason: not valid java name */
    public static void m28816const(String[] strArr) throws Exception {
        Document documentBuild = new SAXBuilder().build(System.in);
        freemarker.template.Cnative cnative = new freemarker.template.Cnative();
        cnative.put("document", new NodeListModel(documentBuild));
        freemarker.template.Cstatic cstatic = new freemarker.template.Cstatic(strArr[0], new FileReader(strArr[0]));
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(System.out);
        cstatic.t1(cnative, outputStreamWriter);
        outputStreamWriter.flush();
        outputStreamWriter.close();
    }

    /* renamed from: else, reason: not valid java name */
    private static final Map m28818else() {
        HashMap map = new HashMap();
        map.put("_copy", 0);
        map.put("_unique", 1);
        map.put("_fname", 2);
        map.put("_ftype", 3);
        map.put("_type", 4);
        map.put("_registerNamespace", 5);
        map.put("_plaintext", 6);
        map.put("x_copy", 0);
        map.put("x_unique", 1);
        map.put("x_fname", 2);
        map.put("x_ftype", 3);
        map.put("x_type", 4);
        return map;
    }

    /* renamed from: goto, reason: not valid java name */
    private static final List m28820goto(NodeOperator nodeOperator, List list) throws k52 {
        int size = list.size();
        List[] listArr = new List[size];
        Iterator it = list.iterator();
        int size2 = 0;
        int i = 0;
        while (it.hasNext()) {
            List listOperate = nodeOperator.operate(it.next());
            if (listOperate != null) {
                listArr[i] = listOperate;
                size2 += listOperate.size();
                i++;
            }
        }
        ArrayList arrayList = new ArrayList(size2);
        for (int i2 = 0; i2 < size; i2++) {
            if (listArr[i2] != null) {
                arrayList.addAll(listArr[i2]);
            }
        }
        return arrayList;
    }

    /* renamed from: super, reason: not valid java name */
    private static final List m28823super(List list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        HashSet hashSet = new HashSet((size * 4) / 3, 0.75f);
        for (Object obj : list) {
            if (hashSet.add(obj)) {
                arrayList.add(obj);
            }
        }
        arrayList.trimToSize();
        return arrayList;
    }

    /* renamed from: this, reason: not valid java name */
    private static final List m28824this(NamedNodeOperator namedNodeOperator, String str, Namespace namespace, List list) throws k52 {
        int size = list.size();
        List[] listArr = new List[size];
        Iterator it = list.iterator();
        int size2 = 0;
        int i = 0;
        while (it.hasNext()) {
            List listOperate = namedNodeOperator.operate(it.next(), str, namespace);
            listArr[i] = listOperate;
            size2 += listOperate.size();
            i++;
        }
        ArrayList arrayList = new ArrayList(size2);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.addAll(listArr[i2]);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static final NodeListModel m28825try(List list, Map map) {
        return (list == null || list.isEmpty()) ? map.isEmpty() ? f24718new : new NodeListModel(Collections.EMPTY_LIST, map) : list.size() == 1 ? new NodeListModel(list.get(0), map) : new NodeListModel(list, map);
    }

    @Override // freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        Cconst cconst;
        if (list == null || list.size() != 1) {
            throw new k52("Exactly one argument required for execute() on NodeTemplate");
        }
        String str = (String) list.get(0);
        try {
            Map map = f24722try;
            synchronized (map) {
                cconst = (Cconst) map.get(str);
                if (cconst == null) {
                    cconst = new Cconst(str);
                    map.put(str, cconst);
                }
            }
            return m28825try(cconst.m28828do(this.f24724do, this.f24725if), this.f24725if);
        } catch (Exception e) {
            throw new k52("Could not evaulate XPath expression " + str, e);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m28826final(String str, String str2) {
        synchronized (this.f24725if) {
            this.f24725if.put(str, Namespace.getNamespace(str, str2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c1  */
    /* JADX WARN: Type inference failed for: r4v0, types: [freemarker.ext.jdom.NodeListModel$do] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [freemarker.ext.jdom.NodeListModel$NodeOperator] */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // freemarker.template.TemplateHashModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TemplateModel get(String str) throws k52 {
        NodeOperator nodeOperator;
        String strSubstring;
        NamedNodeOperator namedNodeOperator;
        List listM28824this;
        Namespace namespace;
        Integer num;
        NodeListModel nodeListModel;
        if (isEmpty()) {
            return f24718new;
        }
        if (str == null || str.length() == 0) {
            throw new k52("Invalid key [" + str + "]");
        }
        char cCharAt = str.charAt(0);
        ?? r4 = 0;
        r4 = 0;
        if (cCharAt != '*') {
            if (cCharAt != '@') {
                if (cCharAt == '_' || cCharAt == 'x') {
                    nodeOperator = (NodeOperator) f24708break.get(str);
                    if (nodeOperator == null && (num = (Integer) f24710catch.get(str)) != null) {
                        switch (num.intValue()) {
                            case 0:
                                synchronized (this.f24725if) {
                                    nodeListModel = new NodeListModel(this.f24724do, (Map) ((HashMap) this.f24725if).clone());
                                }
                                return nodeListModel;
                            case 1:
                                return new NodeListModel(m28823super(this.f24724do), this.f24725if);
                            case 2:
                                return new Cfinal(this, r4);
                            case 3:
                                return new Cthrows(this, r4);
                            case 4:
                                return m28815class();
                            case 5:
                                return new Cstatic(this, r4);
                            case 6:
                                return m28814catch();
                        }
                    }
                } else {
                    namedNodeOperator = null;
                    strSubstring = null;
                }
            } else if (str.length() == 2 && str.charAt(1) == '*') {
                nodeOperator = f24716goto;
            } else {
                namedNodeOperator = f24713else;
                strSubstring = str.substring(1);
            }
            if (r4 == 0 || namedNodeOperator != null) {
                str = strSubstring;
            } else {
                namedNodeOperator = f24709case;
            }
            if (r4 == 0) {
                listM28824this = m28820goto(r4, this.f24724do);
            } else {
                Namespace namespace2 = Namespace.NO_NAMESPACE;
                int iIndexOf = str.indexOf(58);
                if (iIndexOf != -1) {
                    String strSubstring2 = str.substring(iIndexOf + 1);
                    String strSubstring3 = str.substring(0, iIndexOf);
                    synchronized (this.f24725if) {
                        namespace = (Namespace) this.f24725if.get(strSubstring3);
                    }
                    if (namespace != null) {
                        str = strSubstring2;
                        namespace2 = namespace;
                    } else {
                        if (!strSubstring3.equals("xml")) {
                            throw new k52("Unregistered namespace prefix '" + strSubstring3 + "'");
                        }
                        namespace2 = Namespace.XML_NAMESPACE;
                        str = strSubstring2;
                    }
                }
                listM28824this = m28824this(namedNodeOperator, str, namespace2, this.f24724do);
            }
            return m28825try(listM28824this, this.f24725if);
        }
        if (str.length() != 1) {
            throw new k52("Invalid key [" + str + "]");
        }
        nodeOperator = f24720this;
        strSubstring = null;
        r4 = nodeOperator;
        namedNodeOperator = null;
        if (r4 == 0) {
            str = strSubstring;
        }
        if (r4 == 0) {
        }
        return m28825try(listM28824this, this.f24725if);
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() throws k52 {
        if (isEmpty()) {
            return "";
        }
        StringWriter stringWriter = new StringWriter(this.f24724do.size() * 128);
        try {
            for (Object obj : this.f24724do) {
                if (obj instanceof Element) {
                    f24715for.output((Element) obj, stringWriter);
                } else if (obj instanceof Attribute) {
                    f24715for.m28827do((Attribute) obj, stringWriter);
                } else if (obj instanceof String) {
                    stringWriter.write(f24715for.escapeElementEntities(obj.toString()));
                } else if (obj instanceof Text) {
                    f24715for.output((Text) obj, stringWriter);
                } else if (obj instanceof Document) {
                    f24715for.output((Document) obj, stringWriter);
                } else if (obj instanceof ProcessingInstruction) {
                    f24715for.output((ProcessingInstruction) obj, stringWriter);
                } else if (obj instanceof Comment) {
                    f24715for.output((Comment) obj, stringWriter);
                } else if (obj instanceof CDATA) {
                    f24715for.output((CDATA) obj, stringWriter);
                } else if (obj instanceof DocType) {
                    f24715for.output((DocType) obj, stringWriter);
                } else {
                    if (!(obj instanceof EntityRef)) {
                        throw new k52(obj.getClass().getName() + " is not a core JDOM class");
                    }
                    f24715for.output((EntityRef) obj, stringWriter);
                }
            }
            return stringWriter.toString();
        } catch (IOException e) {
            throw new k52(e.getMessage());
        }
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.f24724do.isEmpty();
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() {
        return new Cdo();
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return this.f24724do.size();
    }

    public NodeListModel(Document document) {
        this.f24724do = document == null ? Collections.EMPTY_LIST : Collections.singletonList(document);
        this.f24725if = new HashMap();
    }

    public NodeListModel(Element element) {
        this.f24724do = element == null ? Collections.EMPTY_LIST : Collections.singletonList(element);
        this.f24725if = new HashMap();
    }

    private NodeListModel(Object obj, Map map) {
        this.f24724do = obj == null ? Collections.EMPTY_LIST : Collections.singletonList(obj);
        this.f24725if = map;
    }

    public NodeListModel(List list) {
        this(list, true);
    }

    public NodeListModel(List list, boolean z) {
        if (z && list != null) {
            list = new ArrayList(list);
        } else if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        this.f24724do = list;
        this.f24725if = new HashMap();
    }

    private NodeListModel(List list, Map map) {
        this.f24724do = list == null ? Collections.EMPTY_LIST : list;
        this.f24725if = map;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        try {
            return new NodeListModel(this.f24724do.get(i), this.f24725if);
        } catch (IndexOutOfBoundsException e) {
            throw new k52("Index out of bounds: " + e.getMessage());
        }
    }
}
