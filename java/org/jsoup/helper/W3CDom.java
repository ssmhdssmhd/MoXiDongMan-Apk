package org.jsoup.helper;

import android.support.v4.y41;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Stack;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathFactoryConfigurationException;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.Selector;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes3.dex */
public class W3CDom {
    public static final String SourceProperty = "jsoupSource";
    public static final String XPathFactoryProperty = "javax.xml.xpath.XPathFactory:jsoup";
    public DocumentBuilderFactory factory;

    public static class W3CBuilder implements NodeVisitor {
        private static final String xmlnsKey = "xmlns";
        private static final String xmlnsPrefix = "xmlns:";
        private Node dest;
        private final Document doc;
        private final Stack<HashMap<String, String>> namespacesStack;

        public W3CBuilder(Document document) {
            Stack<HashMap<String, String>> stack = new Stack<>();
            this.namespacesStack = stack;
            this.doc = document;
            stack.push(new HashMap<>());
            this.dest = document;
        }

        private void append(Node node, org.jsoup.nodes.Node node2) throws DOMException {
            node.setUserData(W3CDom.SourceProperty, node2, null);
            this.dest.appendChild(node);
        }

        private void copyAttributes(org.jsoup.nodes.Node node, Element element) throws DOMException {
            Iterator<Attribute> it = node.attributes().iterator();
            while (it.hasNext()) {
                Attribute next = it.next();
                String validKey = Attribute.getValidKey(next.getKey(), Document.OutputSettings.Syntax.xml);
                if (validKey != null) {
                    element.setAttribute(validKey, next.getValue());
                }
            }
        }

        private String updateNamespaces(org.jsoup.nodes.Element element) {
            Iterator<Attribute> it = element.attributes().iterator();
            while (true) {
                String strSubstring = "";
                if (!it.hasNext()) {
                    break;
                }
                Attribute next = it.next();
                String key = next.getKey();
                if (!key.equals(xmlnsKey)) {
                    if (key.startsWith(xmlnsPrefix)) {
                        strSubstring = key.substring(6);
                    }
                }
                this.namespacesStack.peek().put(strSubstring, next.getValue());
            }
            int iIndexOf = element.tagName().indexOf(58);
            return iIndexOf > 0 ? element.tagName().substring(0, iIndexOf) : "";
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0041 A[Catch: DOMException -> 0x0050, TryCatch #0 {DOMException -> 0x0050, blocks: (B:6:0x0030, B:8:0x0038, B:10:0x0047, B:9:0x0041), top: B:23:0x0030 }] */
        @Override // org.jsoup.select.NodeVisitor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void head(org.jsoup.nodes.Node node, int i) throws DOMException {
            Element elementCreateElementNS;
            this.namespacesStack.push(new HashMap<>(this.namespacesStack.peek()));
            if (!(node instanceof org.jsoup.nodes.Element)) {
                if (node instanceof TextNode) {
                    TextNode textNode = (TextNode) node;
                    append(this.doc.createTextNode(textNode.getWholeText()), textNode);
                    return;
                } else if (node instanceof Comment) {
                    Comment comment = (Comment) node;
                    append(this.doc.createComment(comment.getData()), comment);
                    return;
                } else {
                    if (node instanceof DataNode) {
                        DataNode dataNode = (DataNode) node;
                        append(this.doc.createTextNode(dataNode.getWholeData()), dataNode);
                        return;
                    }
                    return;
                }
            }
            org.jsoup.nodes.Element element = (org.jsoup.nodes.Element) node;
            String str = this.namespacesStack.peek().get(updateNamespaces(element));
            String strTagName = element.tagName();
            if (str == null) {
                try {
                    elementCreateElementNS = strTagName.contains(":") ? this.doc.createElementNS("", strTagName) : this.doc.createElementNS(str, strTagName);
                } catch (DOMException unused) {
                    append(this.doc.createTextNode("<" + strTagName + ">"), element);
                    return;
                }
            }
            copyAttributes(element, elementCreateElementNS);
            append(elementCreateElementNS, element);
            this.dest = elementCreateElementNS;
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(org.jsoup.nodes.Node node, int i) {
            if ((node instanceof org.jsoup.nodes.Element) && (this.dest.getParentNode() instanceof Element)) {
                this.dest = this.dest.getParentNode();
            }
            this.namespacesStack.pop();
        }
    }

    public W3CDom() {
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        this.factory = documentBuilderFactoryNewInstance;
        documentBuilderFactoryNewInstance.setNamespaceAware(true);
    }

    public static HashMap<String, String> OutputHtml() {
        return methodMap("html");
    }

    public static HashMap<String, String> OutputXml() {
        return methodMap("xml");
    }

    public static String asString(org.w3c.dom.Document document, @y41 Map<String, String> map) throws TransformerException, IllegalArgumentException {
        try {
            DOMSource dOMSource = new DOMSource(document);
            StringWriter stringWriter = new StringWriter();
            StreamResult streamResult = new StreamResult(stringWriter);
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            if (map != null) {
                transformerNewTransformer.setOutputProperties(propertiesFromMap(map));
            }
            if (document.getDoctype() != null) {
                DocumentType doctype = document.getDoctype();
                if (!StringUtil.isBlank(doctype.getPublicId())) {
                    transformerNewTransformer.setOutputProperty("doctype-public", doctype.getPublicId());
                }
                if (!StringUtil.isBlank(doctype.getSystemId())) {
                    transformerNewTransformer.setOutputProperty("doctype-system", doctype.getSystemId());
                } else if (doctype.getName().equalsIgnoreCase("html") && StringUtil.isBlank(doctype.getPublicId()) && StringUtil.isBlank(doctype.getSystemId())) {
                    transformerNewTransformer.setOutputProperty("doctype-system", "about:legacy-compat");
                }
            }
            transformerNewTransformer.transform(dOMSource, streamResult);
            return stringWriter.toString();
        } catch (TransformerException e) {
            throw new IllegalStateException(e);
        }
    }

    public static org.w3c.dom.Document convert(org.jsoup.nodes.Document document) {
        return new W3CDom().fromJsoup(document);
    }

    private static HashMap<String, String> methodMap(String str) {
        HashMap<String, String> map = new HashMap<>();
        map.put("method", str);
        return map;
    }

    public static Properties propertiesFromMap(Map<String, String> map) {
        Properties properties = new Properties();
        properties.putAll(map);
        return properties;
    }

    public org.w3c.dom.Document fromJsoup(org.jsoup.nodes.Document document) {
        return fromJsoup((org.jsoup.nodes.Element) document);
    }

    public NodeList selectXpath(String str, org.w3c.dom.Document document) {
        Validate.notEmpty(str);
        Validate.notNull(document);
        try {
            NodeList nodeList = (NodeList) (System.getProperty(XPathFactoryProperty) != null ? XPathFactory.newInstance("jsoup") : XPathFactory.newInstance()).newXPath().compile(str).evaluate(document, XPathConstants.NODESET);
            Validate.notNull(nodeList);
            return nodeList;
        } catch (XPathExpressionException | XPathFactoryConfigurationException e) {
            throw new Selector.SelectorParseException("Could not evaluate XPath query [%s]: %s", str, e.getMessage());
        }
    }

    public <T extends org.jsoup.nodes.Node> List<T> sourceNodes(NodeList nodeList, Class<T> cls) {
        Validate.notNull(nodeList);
        Validate.notNull(cls);
        ArrayList arrayList = new ArrayList(nodeList.getLength());
        for (int i = 0; i < nodeList.getLength(); i++) {
            Object userData = nodeList.item(i).getUserData(SourceProperty);
            if (cls.isInstance(userData)) {
                arrayList.add(cls.cast(userData));
            }
        }
        return arrayList;
    }

    public void convert(org.jsoup.nodes.Document document, org.w3c.dom.Document document2) {
        convert((org.jsoup.nodes.Element) document, document2);
    }

    public org.w3c.dom.Document fromJsoup(org.jsoup.nodes.Element element) throws ParserConfigurationException, DOMException {
        Validate.notNull(element);
        try {
            DocumentBuilder documentBuilderNewDocumentBuilder = this.factory.newDocumentBuilder();
            DOMImplementation dOMImplementation = documentBuilderNewDocumentBuilder.getDOMImplementation();
            org.w3c.dom.Document documentNewDocument = documentBuilderNewDocumentBuilder.newDocument();
            org.jsoup.nodes.Document documentOwnerDocument = element.ownerDocument();
            org.jsoup.nodes.DocumentType documentType = documentOwnerDocument != null ? documentOwnerDocument.documentType() : null;
            if (documentType != null) {
                documentNewDocument.appendChild(dOMImplementation.createDocumentType(documentType.name(), documentType.publicId(), documentType.systemId()));
            }
            documentNewDocument.setXmlStandalone(true);
            convert(element, documentNewDocument);
            return documentNewDocument;
        } catch (ParserConfigurationException e) {
            throw new IllegalStateException(e);
        }
    }

    public void convert(org.jsoup.nodes.Element element, org.w3c.dom.Document document) {
        org.jsoup.nodes.Document documentOwnerDocument = element.ownerDocument();
        if (documentOwnerDocument != null && !StringUtil.isBlank(documentOwnerDocument.location())) {
            document.setDocumentURI(documentOwnerDocument.location());
        }
        if (element instanceof org.jsoup.nodes.Document) {
            element = element.child(0);
        }
        NodeTraversor.traverse(new W3CBuilder(document), element);
    }

    public String asString(org.w3c.dom.Document document) {
        return asString(document, null);
    }
}
