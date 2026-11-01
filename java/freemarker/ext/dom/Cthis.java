package freemarker.ext.dom;

import android.support.v4.ez1;
import android.support.v4.k52;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core._UnexpectedTypeErrorExplainerTemplateModel;
import freemarker.core.d0;
import freemarker.core.k;
import freemarker.template.Creturn;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* renamed from: freemarker.ext.dom.this, reason: invalid class name */
/* loaded from: classes.dex */
class Cthis extends Creturn implements TemplateHashModel, _UnexpectedTypeErrorExplainerTemplateModel {

    /* renamed from: if, reason: not valid java name */
    private static final ObjectWrapper f24707if = new Cdo();
    public Cbreak contextNode;
    public XPathSupport xpathSupport;

    /* renamed from: freemarker.ext.dom.this$do, reason: invalid class name */
    public static class Cdo implements ObjectWrapper {
        @Override // freemarker.template.ObjectWrapper
        public TemplateModel wrap(Object obj) {
            return obj instanceof Cbreak ? (Cbreak) obj : Cbreak.m28746finally((Node) obj);
        }
    }

    public Cthis(Node node) {
        this(Cbreak.m28746finally(node));
    }

    /* renamed from: do, reason: not valid java name */
    private Object[] m28807do(String str) {
        int size = size();
        Object[] objArr = new Object[6];
        objArr[0] = "This XML query result can't be used as ";
        objArr[1] = str;
        objArr[2] = " because for that it had to contain exactly 1 XML node, but it contains ";
        objArr[3] = Integer.valueOf(size);
        objArr[4] = " nodes. That is, the constructing XML query has found ";
        objArr[5] = size == 0 ? "no matches." : "multiple matches.";
        return objArr;
    }

    /* renamed from: if, reason: not valid java name */
    private List m28808if() throws k52 {
        int size = size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(((Cbreak) get(i)).f24676do);
        }
        return arrayList;
    }

    @Override // freemarker.core._UnexpectedTypeErrorExplainerTemplateModel
    public Object[] explainTypeError(Class[] clsArr) {
        for (Class cls : clsArr) {
            if (TemplateScalarModel.class.isAssignableFrom(cls) || TemplateDateModel.class.isAssignableFrom(cls) || TemplateNumberModel.class.isAssignableFrom(cls) || TemplateBooleanModel.class.isAssignableFrom(cls)) {
                return m28807do(TypedValues.Custom.S_STRING);
            }
            if (TemplateNodeModel.class.isAssignableFrom(cls)) {
                return m28807do(k.f23935package);
            }
        }
        return null;
    }

    public Cthis filterByName(String str) throws k52 {
        Cthis cthis = new Cthis(this.contextNode);
        int size = size();
        if (size == 0) {
            return cthis;
        }
        d0 d0VarW1 = d0.w1();
        for (int i = 0; i < size; i++) {
            Cbreak cbreak = (Cbreak) get(i);
            if ((cbreak instanceof Celse) && ((Celse) cbreak).m28786strictfp(str, d0VarW1)) {
                cthis.add(cbreak);
            }
        }
        return cthis;
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        TemplateSequenceModel templateSequenceModel;
        int size = size();
        if (size == 1) {
            return ((Cbreak) get(0)).get(str);
        }
        if (str.startsWith("@@")) {
            if (str.equals(freemarker.ext.dom.Cdo.MARKUP.getKey()) || str.equals(freemarker.ext.dom.Cdo.NESTED_MARKUP.getKey()) || str.equals(freemarker.ext.dom.Cdo.TEXT.getKey())) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < size; i++) {
                    sb.append(((TemplateScalarModel) ((Cbreak) get(i)).get(str)).getAsString());
                }
                return new ez1(sb.toString());
            }
            if (str.length() != 2) {
                if (!freemarker.ext.dom.Cdo.containsKey(str)) {
                    throw new k52("Unsupported @@ key: " + str);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\"");
                sb2.append(str);
                sb2.append("\" is only applicable to a single XML node, but it was applied on ");
                sb2.append(size != 0 ? size + " XML nodes (multiple matches)." : "an empty list of XML nodes (no matches).");
                throw new k52(sb2.toString());
            }
        }
        if (!Ccase.m28765do(str) && ((!str.startsWith("@") || (!Ccase.m28767if(str, 1) && !str.equals("@@") && !str.equals("@*"))) && !str.equals("*") && !str.equals("**"))) {
            XPathSupport xPathSupport = getXPathSupport();
            if (xPathSupport != null) {
                return xPathSupport.executeQuery(size == 0 ? null : m28808if(), str);
            }
            throw new k52("No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: " + str);
        }
        Cthis cthis = new Cthis(this.contextNode);
        for (int i2 = 0; i2 < size; i2++) {
            Cbreak cbreak = (Cbreak) get(i2);
            if ((cbreak instanceof Celse) && (templateSequenceModel = (TemplateSequenceModel) ((Celse) cbreak).get(str)) != null) {
                int size2 = templateSequenceModel.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    cthis.add(templateSequenceModel.get(i3));
                }
            }
        }
        return cthis.size() == 1 ? cthis.get(0) : cthis;
    }

    public XPathSupport getXPathSupport() throws k52 {
        if (this.xpathSupport == null) {
            Cbreak cbreak = this.contextNode;
            if (cbreak != null) {
                this.xpathSupport = cbreak.m28763goto();
            } else if (size() > 0) {
                this.xpathSupport = ((Cbreak) get(0)).m28763goto();
            }
        }
        return this.xpathSupport;
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return size() == 0;
    }

    public Cthis(Cbreak cbreak) {
        super(f24707if);
        this.contextNode = cbreak;
    }

    public Cthis(NodeList nodeList, Cbreak cbreak) {
        super(f24707if);
        for (int i = 0; i < nodeList.getLength(); i++) {
            this.list.add(nodeList.item(i));
        }
        this.contextNode = cbreak;
    }

    public Cthis(NamedNodeMap namedNodeMap, Cbreak cbreak) {
        super(f24707if);
        for (int i = 0; i < namedNodeMap.getLength(); i++) {
            this.list.add(namedNodeMap.item(i));
        }
        this.contextNode = cbreak;
    }

    public Cthis(List list, Cbreak cbreak) {
        super(list, f24707if);
        this.contextNode = cbreak;
    }
}
