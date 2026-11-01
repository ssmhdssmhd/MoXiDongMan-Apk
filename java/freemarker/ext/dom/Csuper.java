package freemarker.ext.dom;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.k52;
import freemarker.core.d0;
import freemarker.template.Cstatic;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateModel;
import java.util.List;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import org.apache.xml.utils.PrefixResolver;
import org.apache.xpath.XPath;
import org.apache.xpath.XPathContext;
import org.apache.xpath.objects.XBoolean;
import org.apache.xpath.objects.XNodeSet;
import org.apache.xpath.objects.XNull;
import org.apache.xpath.objects.XNumber;
import org.apache.xpath.objects.XString;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeIterator;

/* renamed from: freemarker.ext.dom.super, reason: invalid class name */
/* loaded from: classes.dex */
class Csuper implements XPathSupport {

    /* renamed from: if, reason: not valid java name */
    private static final PrefixResolver f24705if = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private XPathContext f24706do = new XPathContext();

    /* renamed from: freemarker.ext.dom.super$do, reason: invalid class name */
    public static class Cdo implements PrefixResolver {
        /* renamed from: do, reason: not valid java name */
        public String m28803do() {
            return null;
        }

        /* renamed from: for, reason: not valid java name */
        public String m28804for(String str, Node node) {
            return m28805if(str);
        }

        /* renamed from: if, reason: not valid java name */
        public String m28805if(String str) {
            return str.equals(Cstatic.m1) ? d0.w1().E1() : d0.w1().X1(str);
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m28806new() {
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m28802do(Object obj) {
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!(list.get(i) instanceof Node)) {
                return false;
            }
        }
        return true;
    }

    @Override // freemarker.ext.dom.XPathSupport
    public synchronized TemplateModel executeQuery(Object obj, String str) throws k52 {
        Node nodeNextNode;
        String str2;
        if (!(obj instanceof Node)) {
            if (obj != null && !m28802do(obj)) {
                throw new k52("Can't perform an XPath query against a " + obj.getClass().getName() + ". Expecting a single org.w3c.dom.Node.");
            }
            int size = obj != null ? ((List) obj).size() : 0;
            StringBuilder sb = new StringBuilder();
            if (size != 0) {
                str2 = "Xalan can't perform an XPath query against a Node Set (contains " + size + " node(s)). Expecting a single Node.";
            } else {
                str2 = "Xalan can't perform an XPath query against an empty Node Set.";
            }
            sb.append(str2);
            sb.append(" (There's no such restriction if you configure FreeMarker to use Jaxen for XPath.)");
            throw new k52(sb.toString());
        }
        Node node = (Node) obj;
        try {
            PrefixResolver prefixResolver = f24705if;
            XBoolean xBooleanExecute = new XPath(str, (SourceLocator) null, prefixResolver, 0, (ErrorListener) null).execute(this.f24706do, this.f24706do.getDTMHandleFromNode(node), prefixResolver);
            if (xBooleanExecute instanceof XNodeSet) {
                Cthis cthis = new Cthis(node);
                cthis.xpathSupport = this;
                NodeIterator nodeIteratorNodeset = xBooleanExecute.nodeset();
                do {
                    nodeNextNode = nodeIteratorNodeset.nextNode();
                    if (nodeNextNode != null) {
                        cthis.add(nodeNextNode);
                    }
                } while (nodeNextNode != null);
                int size2 = cthis.size();
                TemplateModel templateModel = cthis;
                if (size2 == 1) {
                    templateModel = cthis.get(0);
                }
                return templateModel;
            }
            if (xBooleanExecute instanceof XBoolean) {
                return xBooleanExecute.bool() ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
            }
            if (xBooleanExecute instanceof XNull) {
                return null;
            }
            if (xBooleanExecute instanceof XString) {
                return new ez1(xBooleanExecute.toString());
            }
            if (xBooleanExecute instanceof XNumber) {
                return new az1(Double.valueOf(((XNumber) xBooleanExecute).num()));
            }
            throw new k52("Cannot deal with type: " + xBooleanExecute.getClass().getName());
        } catch (TransformerException e) {
            throw new k52((Exception) e);
        }
    }
}
