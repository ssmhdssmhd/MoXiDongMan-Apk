package freemarker.ext.dom;

import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.core._UnexpectedTypeErrorExplainerTemplateModel;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.log.Cif;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateNodeModelEx;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateSequenceModel;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* renamed from: freemarker.ext.dom.break, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cbreak implements TemplateNodeModelEx, TemplateHashModel, TemplateSequenceModel, AdapterTemplateModel, WrapperTemplateModel, _UnexpectedTypeErrorExplainerTemplateModel {

    /* renamed from: break, reason: not valid java name */
    public static Class f24669break;

    /* renamed from: case, reason: not valid java name */
    private static DocumentBuilderFactory f24670case;

    /* renamed from: goto, reason: not valid java name */
    private static XPathSupport f24672goto;

    /* renamed from: this, reason: not valid java name */
    private static ErrorHandler f24674this;

    /* renamed from: do, reason: not valid java name */
    public final Node f24676do;

    /* renamed from: for, reason: not valid java name */
    private Cbreak f24677for;

    /* renamed from: if, reason: not valid java name */
    private TemplateSequenceModel f24678if;

    /* renamed from: new, reason: not valid java name */
    private static final Cif f24673new = Cif.m29193break("freemarker.dom");

    /* renamed from: try, reason: not valid java name */
    private static final Object f24675try = new Object();

    /* renamed from: else, reason: not valid java name */
    private static final Map f24671else = Collections.synchronizedMap(new WeakHashMap());

    static {
        try {
            m28755switch();
        } catch (Exception unused) {
        }
        if (f24669break == null) {
            Cif cif = f24673new;
            if (cif.mo29189public()) {
                cif.mo29187package("No XPath support is available. If you need it, add Apache Xalan or Jaxen as dependency.");
            }
        }
    }

    public Cbreak(Node node) {
        this.f24676do = node;
    }

    /* renamed from: break, reason: not valid java name */
    public static void m28738break(Node node) throws DOMException {
        m28739catch(node, new StringBuilder(0));
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m28739catch(Node node, StringBuilder sb) throws DOMException {
        Node nextSibling;
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = nextSibling) {
            nextSibling = firstChild.getNextSibling();
            if (firstChild instanceof Text) {
                boolean z = true;
                while (nextSibling instanceof Text) {
                    if (z) {
                        sb.setLength(0);
                        sb.ensureCapacity(firstChild.getNodeValue().length() + nextSibling.getNodeValue().length());
                        sb.append(firstChild.getNodeValue());
                        z = false;
                    }
                    sb.append(nextSibling.getNodeValue());
                    node.removeChild(nextSibling);
                    nextSibling = firstChild.getNextSibling();
                }
                if (!z && sb.length() != 0) {
                    ((CharacterData) firstChild).setData(sb.toString());
                }
            } else {
                m28739catch(firstChild, sb);
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Cbreak m28740class(File file) throws ParserConfigurationException, SAXException, IOException {
        return m28741const(file, true, true);
    }

    /* renamed from: const, reason: not valid java name */
    public static Cbreak m28741const(File file, boolean z, boolean z2) throws ParserConfigurationException, SAXException, DOMException, IOException {
        DocumentBuilder documentBuilderNewDocumentBuilder = m28747if().newDocumentBuilder();
        ErrorHandler errorHandlerM28750new = m28750new();
        if (errorHandlerM28750new != null) {
            documentBuilderNewDocumentBuilder.setErrorHandler(errorHandlerM28750new);
        }
        Document document = documentBuilderNewDocumentBuilder.parse(file);
        if (z && z2) {
            m28752return(document);
        } else {
            if (z) {
                m28757throw(document);
            }
            if (z2) {
                m28759while(document);
            }
            m28738break(document);
        }
        return m28746finally(document);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m28742default() throws Exception {
        Class.forName("com.sun.org.apache.xpath.internal.XPath");
        Class<?> cls = Class.forName("freemarker.ext.dom.const");
        synchronized (f24675try) {
            f24669break = cls;
        }
        f24673new.mo29183for("Using Sun's internal Xalan classes for XPath support");
    }

    /* renamed from: else, reason: not valid java name */
    private static String m28743else(Node node) {
        String str = "";
        if ((node instanceof Text) || (node instanceof CDATASection)) {
            return ((CharacterData) node).getData();
        }
        if (!(node instanceof Element)) {
            return node instanceof Document ? m28743else(((Document) node).getDocumentElement()) : "";
        }
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            str = str + m28743else(childNodes.item(i));
        }
        return str;
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m28744extends() throws Exception {
        Class.forName("org.apache.xpath.XPath");
        Class<?> cls = Class.forName("freemarker.ext.dom.super");
        synchronized (f24675try) {
            f24669break = cls;
        }
        f24673new.mo29183for("Using Xalan classes for XPath support");
    }

    /* renamed from: final, reason: not valid java name */
    public static Cbreak m28745final(InputSource inputSource) throws ParserConfigurationException, SAXException, IOException {
        return m28754super(inputSource, true, true);
    }

    /* renamed from: finally, reason: not valid java name */
    public static Cbreak m28746finally(Node node) {
        if (node == null) {
            return null;
        }
        switch (node.getNodeType()) {
            case 1:
                return new Celse((Element) node);
            case 2:
                return new Cif((Attr) node);
            case 3:
            case 4:
            case 8:
                return new Cfor((CharacterData) node);
            case 5:
            case 6:
            default:
                return null;
            case 7:
                return new Cclass((ProcessingInstruction) node);
            case 9:
                return new Cnew((Document) node);
            case 10:
                return new Ctry((DocumentType) node);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static DocumentBuilderFactory m28747if() {
        DocumentBuilderFactory documentBuilderFactory;
        synchronized (f24675try) {
            if (f24670case == null) {
                DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
                documentBuilderFactoryNewInstance.setNamespaceAware(true);
                documentBuilderFactoryNewInstance.setIgnoringElementContentWhitespace(true);
                f24670case = documentBuilderFactoryNewInstance;
            }
            documentBuilderFactory = f24670case;
        }
        return documentBuilderFactory;
    }

    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public static void m28748import(DocumentBuilderFactory documentBuilderFactory) {
        synchronized (f24675try) {
            f24670case = documentBuilderFactory;
        }
    }

    @Deprecated
    /* renamed from: native, reason: not valid java name */
    public static void m28749native(ErrorHandler errorHandler) {
        synchronized (f24675try) {
            f24674this = errorHandler;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ErrorHandler m28750new() {
        ErrorHandler errorHandler;
        synchronized (f24675try) {
            errorHandler = f24674this;
        }
        return errorHandler;
    }

    /* renamed from: public, reason: not valid java name */
    public static void m28751public(Class cls) {
        if (cls == null || XPathSupport.class.isAssignableFrom(cls)) {
            synchronized (f24675try) {
                f24669break = cls;
            }
        } else {
            throw new RuntimeException("Class " + cls.getName() + " does not implement freemarker.ext.dom.XPathSupport");
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m28752return(Node node) throws DOMException {
        m28753static(node, new StringBuilder(0));
    }

    /* renamed from: static, reason: not valid java name */
    private static void m28753static(Node node, StringBuilder sb) throws DOMException {
        Node firstChild = node.getFirstChild();
        Node node2 = null;
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            if (firstChild.hasChildNodes()) {
                if (node2 != null) {
                    if (sb.length() != 0) {
                        ((CharacterData) node2).setData(sb.toString());
                        sb.setLength(0);
                    }
                    node2 = null;
                }
                m28753static(firstChild, sb);
            } else {
                short nodeType = firstChild.getNodeType();
                if (nodeType == 3 || nodeType == 4) {
                    if (node2 != null) {
                        if (sb.length() == 0) {
                            sb.ensureCapacity(node2.getNodeValue().length() + firstChild.getNodeValue().length());
                            sb.append(node2.getNodeValue());
                        }
                        sb.append(firstChild.getNodeValue());
                        node.removeChild(firstChild);
                    } else {
                        sb.setLength(0);
                        node2 = firstChild;
                    }
                } else if (nodeType == 8) {
                    node.removeChild(firstChild);
                } else if (nodeType == 7) {
                    node.removeChild(firstChild);
                } else if (node2 != null) {
                    if (sb.length() != 0) {
                        ((CharacterData) node2).setData(sb.toString());
                        sb.setLength(0);
                    }
                    node2 = null;
                }
            }
            firstChild = nextSibling;
        }
        if (node2 == null || sb.length() == 0) {
            return;
        }
        ((CharacterData) node2).setData(sb.toString());
        sb.setLength(0);
    }

    /* renamed from: super, reason: not valid java name */
    public static Cbreak m28754super(InputSource inputSource, boolean z, boolean z2) throws ParserConfigurationException, SAXException, DOMException, IOException {
        DocumentBuilder documentBuilderNewDocumentBuilder = m28747if().newDocumentBuilder();
        ErrorHandler errorHandlerM28750new = m28750new();
        if (errorHandlerM28750new != null) {
            documentBuilderNewDocumentBuilder.setErrorHandler(errorHandlerM28750new);
        }
        try {
            Document document = documentBuilderNewDocumentBuilder.parse(inputSource);
            if (z && z2) {
                m28752return(document);
            } else {
                if (z) {
                    m28757throw(document);
                }
                if (z2) {
                    m28759while(document);
                }
                m28738break(document);
            }
            return m28746finally(document);
        } catch (MalformedURLException e) {
            if (inputSource.getSystemId() != null || inputSource.getCharacterStream() != null || inputSource.getByteStream() != null) {
                throw e;
            }
            throw new MalformedURLException("The SAX InputSource has systemId == null && characterStream == null && byteStream == null. This is often because it was created with a null InputStream or Reader, which is often because the XML file it should point to was not found. (The original exception was: " + e + ")");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f A[Catch: all -> 0x0051, DONT_GENERATE, TryCatch #1 {, blocks: (B:5:0x0004, B:6:0x0008, B:9:0x000d, B:11:0x0016, B:12:0x001d, B:14:0x0021, B:20:0x0036, B:22:0x003a, B:28:0x004f, B:25:0x003f, B:27:0x0048, B:17:0x0026, B:19:0x002f), top: B:35:0x0004, inners: #4, #5, #6, #7, #9, #8, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: switch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m28755switch() {
        synchronized (f24675try) {
            f24669break = null;
            f24672goto = null;
            try {
                try {
                    m28744extends();
                } catch (Exception e) {
                    f24673new.mo29186new("Failed to use Xalan XPath support.", e);
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessError e2) {
                f24673new.mo29186new("Failed to use Xalan internal XPath support.", e2);
            }
            if (f24669break == null) {
                try {
                    m28742default();
                } catch (Exception e3) {
                    f24673new.mo29186new("Failed to use Sun internal XPath support.", e3);
                } catch (IllegalAccessError e4) {
                    f24673new.mo29186new("Failed to use Sun internal XPath support. Tip: On Java 9+, you may need Xalan or Jaxen+Saxpath.", e4);
                }
                if (f24669break != null) {
                    try {
                        try {
                            m28758throws();
                        } catch (IllegalAccessError e5) {
                            f24673new.mo29186new("Failed to use Jaxen XPath support.", e5);
                        }
                    } catch (ClassNotFoundException unused2) {
                    } catch (Exception e6) {
                        f24673new.mo29186new("Failed to use Jaxen XPath support.", e6);
                    }
                }
            } else if (f24669break != null) {
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static Class m28756this() {
        Class cls;
        synchronized (f24675try) {
            cls = f24669break;
        }
        return cls;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m28757throw(Node node) throws DOMException {
        Node firstChild = node.getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            if (firstChild.getNodeType() == 8) {
                node.removeChild(firstChild);
            } else if (firstChild.hasChildNodes()) {
                m28757throw(firstChild);
            }
            firstChild = nextSibling;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m28758throws() throws Exception {
        Class.forName("org.jaxen.dom.DOMXPath");
        Class<?> cls = Class.forName("freemarker.ext.dom.goto");
        f24672goto = (XPathSupport) cls.newInstance();
        synchronized (f24675try) {
            f24669break = cls;
        }
        f24673new.mo29183for("Using Jaxen classes for XPath support");
    }

    /* renamed from: while, reason: not valid java name */
    public static void m28759while(Node node) throws DOMException {
        Node firstChild = node.getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            if (firstChild.getNodeType() == 7) {
                node.removeChild(firstChild);
            } else if (firstChild.hasChildNodes()) {
                m28759while(firstChild);
            }
            firstChild = nextSibling;
        }
    }

    /* renamed from: case, reason: not valid java name */
    String mo28760case() throws k52 {
        return getNodeName();
    }

    /* renamed from: do, reason: not valid java name */
    public TemplateModel m28761do(List list) throws k52 {
        if (list.size() != 1) {
            throw new k52("Expecting exactly one arguments");
        }
        String str = (String) list.get(0);
        XPathSupport xPathSupportM28763goto = m28763goto();
        if (xPathSupportM28763goto != null) {
            return xPathSupportM28763goto.executeQuery(this.f24676do, str);
        }
        throw new k52("No XPath support available");
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass() && ((Cbreak) obj).f24676do.equals(this.f24676do);
    }

    @Override // freemarker.core._UnexpectedTypeErrorExplainerTemplateModel
    public Object[] explainTypeError(Class[] clsArr) {
        for (Class cls : clsArr) {
            if (TemplateDateModel.class.isAssignableFrom(cls) || TemplateNumberModel.class.isAssignableFrom(cls) || TemplateBooleanModel.class.isAssignableFrom(cls)) {
                return new Object[]{"XML node values are always strings (text), that is, they can't be used as number, date/time/datetime or boolean without explicit conversion (such as someNode?number, someNode?datetime.xs, someNode?date.xs, someNode?time.xs, someNode?boolean)."};
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public Cbreak m28762for() {
        Node node = this.f24676do;
        return node instanceof Document ? this : m28746finally(node.getOwnerDocument());
    }

    @Override // freemarker.template.TemplateSequenceModel
    public final TemplateModel get(int i) {
        if (i == 0) {
            return this;
        }
        return null;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        if (!str.startsWith("@@")) {
            XPathSupport xPathSupportM28763goto = m28763goto();
            if (xPathSupportM28763goto != null) {
                return xPathSupportM28763goto.executeQuery(this.f24676do, str);
            }
            throw new k52("No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: " + str);
        }
        if (str.equals(Cdo.TEXT.getKey())) {
            return new ez1(m28743else(this.f24676do));
        }
        if (str.equals(Cdo.NAMESPACE.getKey())) {
            String namespaceURI = this.f24676do.getNamespaceURI();
            if (namespaceURI == null) {
                return null;
            }
            return new ez1(namespaceURI);
        }
        if (str.equals(Cdo.LOCAL_NAME.getKey())) {
            String localName = this.f24676do.getLocalName();
            if (localName == null) {
                localName = getNodeName();
            }
            return new ez1(localName);
        }
        if (str.equals(Cdo.MARKUP.getKey())) {
            StringBuilder sb = new StringBuilder();
            new Ccatch(this.f24676do).m28772case(this.f24676do, sb);
            return new ez1(sb.toString());
        }
        if (str.equals(Cdo.NESTED_MARKUP.getKey())) {
            StringBuilder sb2 = new StringBuilder();
            new Ccatch(this.f24676do).m28773else(this.f24676do.getChildNodes(), sb2);
            return new ez1(sb2.toString());
        }
        if (str.equals(Cdo.QNAME.getKey())) {
            String strMo28760case = mo28760case();
            if (strMo28760case != null) {
                return new ez1(strMo28760case);
            }
            return null;
        }
        if (!Cdo.containsKey(str)) {
            throw new k52("Unsupported @@ key: " + str);
        }
        throw new k52("\"" + str + "\" is not supported for an XML node of type \"" + getNodeType() + "\".");
    }

    @Override // freemarker.template.AdapterTemplateModel
    public Object getAdaptedObject(Class cls) {
        return this.f24676do;
    }

    @Override // freemarker.template.TemplateNodeModel
    public TemplateSequenceModel getChildNodes() {
        if (this.f24678if == null) {
            this.f24678if = new Cthis(this.f24676do.getChildNodes(), this);
        }
        return this.f24678if;
    }

    @Override // freemarker.template.TemplateNodeModelEx
    public TemplateNodeModelEx getNextSibling() throws k52 {
        return m28746finally(this.f24676do.getNextSibling());
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeNamespace() {
        short nodeType = this.f24676do.getNodeType();
        if (nodeType != 2 && nodeType != 1) {
            return null;
        }
        String namespaceURI = this.f24676do.getNamespaceURI();
        if (namespaceURI == null && nodeType == 1) {
            return "";
        }
        if ("".equals(namespaceURI) && nodeType == 2) {
            return null;
        }
        return namespaceURI;
    }

    @Override // freemarker.template.TemplateNodeModel
    public final String getNodeType() throws k52 {
        short nodeType = this.f24676do.getNodeType();
        switch (nodeType) {
            case 1:
                return "element";
            case 2:
                return "attribute";
            case 3:
            case 4:
                return "text";
            case 5:
                return "entity_reference";
            case 6:
                return "entity";
            case 7:
                return "pi";
            case 8:
                return "comment";
            case 9:
                return "document";
            case 10:
                return "document_type";
            case 11:
                return "document_fragment";
            case 12:
                return "notation";
            default:
                throw new k52("Unknown node type: " + ((int) nodeType) + ". This should be impossible!");
        }
    }

    @Override // freemarker.template.TemplateNodeModel
    public TemplateNodeModel getParentNode() {
        if (this.f24677for == null) {
            Node parentNode = this.f24676do.getParentNode();
            if (parentNode == null) {
                Node node = this.f24676do;
                if (node instanceof Attr) {
                    parentNode = ((Attr) node).getOwnerElement();
                }
            }
            this.f24677for = m28746finally(parentNode);
        }
        return this.f24677for;
    }

    @Override // freemarker.template.TemplateNodeModelEx
    public TemplateNodeModelEx getPreviousSibling() throws k52 {
        return m28746finally(this.f24676do.getPreviousSibling());
    }

    @Override // freemarker.ext.util.WrapperTemplateModel
    public Object getWrappedObject() {
        return this.f24676do;
    }

    /* renamed from: goto, reason: not valid java name */
    public XPathSupport m28763goto() {
        XPathSupport xPathSupport;
        Class cls;
        XPathSupport xPathSupport2;
        Exception e;
        XPathSupport xPathSupport3 = f24672goto;
        if (xPathSupport3 != null) {
            return xPathSupport3;
        }
        Document ownerDocument = this.f24676do.getOwnerDocument();
        if (ownerDocument == null) {
            ownerDocument = (Document) this.f24676do;
        }
        synchronized (ownerDocument) {
            Map map = f24671else;
            WeakReference weakReference = (WeakReference) map.get(ownerDocument);
            xPathSupport = weakReference != null ? (XPathSupport) weakReference.get() : null;
            if (xPathSupport == null && (cls = f24669break) != null) {
                try {
                    xPathSupport2 = (XPathSupport) cls.newInstance();
                } catch (Exception e2) {
                    xPathSupport2 = xPathSupport;
                    e = e2;
                }
                try {
                    map.put(ownerDocument, new WeakReference(xPathSupport2));
                } catch (Exception e3) {
                    e = e3;
                    f24673new.mo29181else("Error instantiating xpathSupport class", e);
                    xPathSupport = xPathSupport2;
                    return xPathSupport;
                }
                xPathSupport = xPathSupport2;
            }
        }
        return xPathSupport;
    }

    public final int hashCode() {
        return this.f24676do.hashCode();
    }

    @Override // freemarker.template.TemplateSequenceModel
    public final int size() {
        return 1;
    }

    /* renamed from: try, reason: not valid java name */
    public Node m28764try() {
        return this.f24676do;
    }
}
