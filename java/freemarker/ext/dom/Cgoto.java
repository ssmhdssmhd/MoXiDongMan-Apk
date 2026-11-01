package freemarker.ext.dom;

import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.core.d0;
import freemarker.core.v;
import freemarker.template.Cstatic;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.jaxen.BaseXPath;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.FunctionContext;
import org.jaxen.JaxenException;
import org.jaxen.NamespaceContext;
import org.jaxen.Navigator;
import org.jaxen.UnresolvableException;
import org.jaxen.VariableContext;
import org.jaxen.XPathFunctionContext;
import org.jaxen.dom.DocumentNavigator;
import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* renamed from: freemarker.ext.dom.goto, reason: invalid class name */
/* loaded from: classes.dex */
class Cgoto implements XPathSupport {

    /* renamed from: do, reason: not valid java name */
    private static final v f24697do = new Cdo(1);

    /* renamed from: if, reason: not valid java name */
    private static final ArrayList f24700if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private static final NamespaceContext f24699for = new Cif();

    /* renamed from: new, reason: not valid java name */
    private static final VariableContext f24701new = new Cfor();

    /* renamed from: try, reason: not valid java name */
    private static final FunctionContext f24702try = new Cnew();

    /* renamed from: case, reason: not valid java name */
    private static final v f24696case = new v(1);

    /* renamed from: else, reason: not valid java name */
    private static final Navigator f24698else = new Ctry();

    /* renamed from: freemarker.ext.dom.goto$do, reason: invalid class name */
    public static class Cdo extends v {
        public Cdo(int i) {
            super(i);
        }

        @Override // freemarker.core.v
        /* renamed from: do */
        public Object mo28330do() {
            return new HashMap();
        }
    }

    /* renamed from: freemarker.ext.dom.goto$for, reason: invalid class name */
    public static class Cfor implements VariableContext {
        /* JADX INFO: Thrown type has an unknown type hierarchy: org.jaxen.UnresolvableException */
        /* renamed from: do, reason: not valid java name */
        public Object m28797do(String str, String str2, String str3) throws UnresolvableException {
            try {
                TemplateModel templateModelD2 = d0.w1().D2(str3);
                if (templateModelD2 == null) {
                    throw new UnresolvableException("Variable \"" + str3 + "\" not found.");
                }
                if (templateModelD2 instanceof TemplateScalarModel) {
                    return ((TemplateScalarModel) templateModelD2).getAsString();
                }
                if (templateModelD2 instanceof TemplateNumberModel) {
                    return ((TemplateNumberModel) templateModelD2).getAsNumber();
                }
                if (templateModelD2 instanceof TemplateDateModel) {
                    return ((TemplateDateModel) templateModelD2).getAsDate();
                }
                if (templateModelD2 instanceof TemplateBooleanModel) {
                    return Boolean.valueOf(((TemplateBooleanModel) templateModelD2).getAsBoolean());
                }
                throw new UnresolvableException("Variable \"" + str3 + "\" exists, but it's not a string, number, date, or boolean");
            } catch (k52 e) {
                throw new kb2(e);
            }
        }
    }

    /* renamed from: freemarker.ext.dom.goto$if, reason: invalid class name */
    public static class Cif implements NamespaceContext {
        /* renamed from: do, reason: not valid java name */
        public String m28798do(String str) {
            return str.equals(Cstatic.m1) ? d0.w1().E1() : d0.w1().X1(str);
        }
    }

    /* renamed from: freemarker.ext.dom.goto$new, reason: invalid class name */
    public static class Cnew extends XPathFunctionContext {
        /* renamed from: do, reason: not valid java name */
        public Function m28799do(String str, String str2, String str3) throws UnresolvableException {
            try {
                return super.getFunction(str, str2, str3);
            } catch (UnresolvableException unused) {
                return super.getFunction((String) null, (String) null, str3);
            }
        }
    }

    /* renamed from: freemarker.ext.dom.goto$try, reason: invalid class name */
    public static class Ctry extends DocumentNavigator {
        /* JADX INFO: Thrown type has an unknown type hierarchy: org.jaxen.FunctionCallException */
        /* renamed from: do, reason: not valid java name */
        public Object m28800do(String str) throws ParserConfigurationException, SAXException, IOException, FunctionCallException {
            try {
                Cstatic cstaticM28795new = Cgoto.m28795new(str);
                Document document = (Document) Cgoto.f24696case.m28326case(cstaticM28795new);
                if (document == null) {
                    DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
                    documentBuilderFactoryNewInstance.setNamespaceAware(true);
                    DocumentBuilder documentBuilderNewDocumentBuilder = documentBuilderFactoryNewInstance.newDocumentBuilder();
                    Ccase ccase = new Ccase(null);
                    documentBuilderNewDocumentBuilder.setEntityResolver(ccase);
                    document = documentBuilderNewDocumentBuilder.parse(Cgoto.m28793for(null, cstaticM28795new));
                    if (ccase.m28796do() == 0) {
                        Cgoto.f24696case.m28329const(document, cstaticM28795new);
                    }
                }
                return document;
            } catch (Exception e) {
                throw new FunctionCallException("Failed to parse document for URI: " + str, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static InputSource m28793for(String str, Cstatic cstatic) throws SAXException, IOException {
        StringWriter stringWriter = new StringWriter();
        try {
            cstatic.t1(Collections.EMPTY_MAP, stringWriter);
            InputSource inputSource = new InputSource();
            inputSource.setPublicId(str);
            inputSource.setSystemId(cstatic.h1());
            inputSource.setCharacterStream(new StringReader(stringWriter.toString()));
            return inputSource;
        } catch (TemplateException e) {
            throw new SAXException(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Cstatic m28795new(String str) throws IOException {
        d0 d0VarW1 = d0.w1();
        String strE1 = d0VarW1.e2().e1();
        if (strE1 == null) {
            strE1 = d0VarW1.u1().x1(d0VarW1.m28268strictfp());
        }
        String strH1 = d0VarW1.e2().h1();
        int iLastIndexOf = strH1.lastIndexOf(47);
        return d0VarW1.u1().T1(d0VarW1.x3(iLastIndexOf == -1 ? "" : strH1.substring(0, iLastIndexOf + 1), str), d0VarW1.m28268strictfp(), strE1, false);
    }

    @Override // freemarker.ext.dom.XPathSupport
    public TemplateModel executeQuery(Object obj, String str) throws k52 {
        BaseXPath baseXPath;
        try {
            Map map = (Map) f24697do.m28332if();
            synchronized (map) {
                baseXPath = (BaseXPath) map.get(str);
                if (baseXPath == null) {
                    baseXPath = new BaseXPath(str, f24698else);
                    baseXPath.setNamespaceContext(f24699for);
                    baseXPath.setFunctionContext(f24702try);
                    baseXPath.setVariableContext(f24701new);
                    map.put(str, baseXPath);
                }
            }
            if (obj == null) {
                obj = f24700if;
            }
            List listSelectNodes = baseXPath.selectNodes(obj);
            if (listSelectNodes.size() == 1) {
                return ObjectWrapper.DEFAULT_WRAPPER.wrap(listSelectNodes.get(0));
            }
            Cthis cthis = new Cthis(listSelectNodes, (Cbreak) null);
            cthis.xpathSupport = this;
            return cthis;
        } catch (JaxenException e) {
            throw new k52((Exception) e);
        } catch (kb2 e2) {
            Throwable undeclaredThrowable = e2.getUndeclaredThrowable();
            if (undeclaredThrowable instanceof k52) {
                throw ((k52) undeclaredThrowable);
            }
            throw e2;
        }
    }

    /* renamed from: freemarker.ext.dom.goto$case, reason: invalid class name */
    public static class Ccase implements EntityResolver {

        /* renamed from: do, reason: not valid java name */
        private int f24703do;

        private Ccase() {
            this.f24703do = 0;
        }

        /* renamed from: do, reason: not valid java name */
        public int m28796do() {
            return this.f24703do;
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
            this.f24703do++;
            return Cgoto.m28793for(str, Cgoto.m28795new(str2));
        }

        public /* synthetic */ Ccase(Cdo cdo) {
            this();
        }
    }
}
