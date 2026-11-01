package freemarker.ext.xml;

import android.support.v4.k52;
import freemarker.core.k;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@Deprecated
/* renamed from: freemarker.ext.xml.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements TemplateHashModel, TemplateMethodModel, TemplateScalarModel, TemplateSequenceModel, TemplateNodeModel {

    /* renamed from: do, reason: not valid java name */
    private final Navigator f25041do;

    /* renamed from: for, reason: not valid java name */
    private freemarker.ext.xml.Cdo f25042for;

    /* renamed from: if, reason: not valid java name */
    private final List f25043if;

    /* renamed from: new, reason: not valid java name */
    private static final freemarker.log.Cif f25038new = freemarker.log.Cif.m29193break("freemarker.xml");

    /* renamed from: try, reason: not valid java name */
    private static final Class f25040try = m29173try("org.w3c.dom.Node");

    /* renamed from: case, reason: not valid java name */
    private static final Class f25035case = m29173try("org.dom4j.Node");

    /* renamed from: else, reason: not valid java name */
    private static final Navigator f25036else = m29166case("Dom");

    /* renamed from: goto, reason: not valid java name */
    private static final Navigator f25037goto = m29166case("Dom4j");

    /* renamed from: this, reason: not valid java name */
    private static final Navigator f25039this = m29166case("Jdom");

    /* renamed from: break, reason: not valid java name */
    private static volatile boolean f25034break = true;

    /* renamed from: freemarker.ext.xml.if$if, reason: invalid class name and collision with other inner class name */
    public class C0258if implements TemplateMethodModel {
        private C0258if() {
        }

        @Override // freemarker.template.TemplateMethodModel
        public Object exec(List list) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (list.contains(Cif.this.f25041do.mo29155switch(obj))) {
                    arrayList.add(obj);
                }
            }
            return Cif.this.m29171new(arrayList);
        }
    }

    public Cif(Object obj) {
        if (obj instanceof Collection) {
            ArrayList arrayList = new ArrayList((Collection) obj);
            this.f25043if = arrayList;
            obj = arrayList.isEmpty() ? null : arrayList.get(0);
        } else {
            if (obj == null) {
                throw new IllegalArgumentException("nodes == null");
            }
            this.f25043if = Collections.singletonList(obj);
        }
        Class cls = f25040try;
        if (cls == null || !cls.isInstance(obj)) {
            Class cls2 = f25035case;
            if (cls2 == null || !cls2.isInstance(obj)) {
                this.f25041do = f25039this;
            } else {
                this.f25041do = f25037goto;
            }
        } else {
            this.f25041do = f25036else;
        }
        this.f25042for = m29169for();
    }

    /* renamed from: case, reason: not valid java name */
    private static Navigator m29166case(String str) {
        try {
            return (Navigator) freemarker.template.utility.Cif.m29285try("freemarker.ext.xml._" + str + "Navigator").newInstance();
        } catch (Throwable th) {
            freemarker.log.Cif cif = f25038new;
            if (!cif.mo29190throw()) {
                return null;
            }
            cif.mo29186new("Could not load navigator for " + str, th);
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private String m29168else(Cif cif, String str) throws k52 {
        HashSet hashSet = null;
        String str2 = null;
        for (String str3 : cif.f25043if) {
            if (str3 != null) {
                if (str2 == null) {
                    str2 = str3;
                } else if (!str2.equals(str3)) {
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        hashSet.add(str2);
                    }
                    hashSet.add(str3);
                }
            }
        }
        if (hashSet == null) {
            return str2;
        }
        throw new k52("Value for node " + str + " is ambiguos: " + hashSet);
    }

    /* renamed from: for, reason: not valid java name */
    private freemarker.ext.xml.Cdo m29169for() {
        if (f25034break) {
            try {
                return (freemarker.ext.xml.Cdo) Class.forName("freemarker.ext.xml.try").newInstance();
            } catch (Throwable unused) {
                f25034break = false;
            }
        }
        return new freemarker.ext.xml.Cdo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public Cif m29171new(List list) {
        this.f25042for.m29163if();
        return new Cif(this.f25041do, list, this.f25042for);
    }

    /* renamed from: this, reason: not valid java name */
    private static final List m29172this(List list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        HashSet hashSet = new HashSet((size * 4) / 3, 0.75f);
        for (Object obj : list) {
            if (hashSet.add(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: try, reason: not valid java name */
    private static Class m29173try(String str) {
        try {
            return freemarker.template.utility.Cif.m29285try(str);
        } catch (Exception e) {
            if (!f25038new.mo29190throw()) {
                return null;
            }
            f25038new.mo29186new("Couldn't load class " + str, e);
            return null;
        }
    }

    @Override // freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        if (list.size() == 1) {
            return m29171new(this.f25041do.m29147if(this.f25043if, (String) list.get(0), this.f25042for));
        }
        throw new k52("Expecting exactly one argument - an XPath expression");
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) {
        return m29171new(Collections.singletonList(this.f25043if.get(i)));
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() throws k52 {
        StringWriter stringWriter = new StringWriter(size() * 128);
        for (Object obj : this.f25043if) {
            if (obj instanceof String) {
                stringWriter.write((String) obj);
            } else {
                this.f25041do.mo29144else(obj, stringWriter);
            }
        }
        return stringWriter.toString();
    }

    @Override // freemarker.template.TemplateNodeModel
    public TemplateSequenceModel getChildNodes() throws k52 {
        return (TemplateSequenceModel) get("_content");
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeName() throws k52 {
        return m29168else((Cif) get("_name"), "name");
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeNamespace() throws k52 {
        return m29168else((Cif) get("_nsuri"), k.f23945throw);
    }

    @Override // freemarker.template.TemplateNodeModel
    public String getNodeType() throws k52 {
        return m29168else((Cif) get("_type"), "type");
    }

    @Override // freemarker.template.TemplateNodeModel
    public TemplateNodeModel getParentNode() throws k52 {
        return (TemplateNodeModel) get("_parent");
    }

    /* renamed from: goto, reason: not valid java name */
    public void m29174goto(String str, String str2) {
        if (this.f25042for.m29161do()) {
            this.f25042for = (freemarker.ext.xml.Cdo) this.f25042for.clone();
        }
        this.f25042for.m29162for(str, str2);
    }

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return this.f25043if.isEmpty();
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return this.f25043if.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        NodeOperator nodeOperatorM29149native = this.f25041do.m29149native(str);
        String strSubstring = null;
        Object[] objArr = 0;
        if (nodeOperatorM29149native == null && str.length() > 0 && str.charAt(0) == '_') {
            if (str.equals("_unique")) {
                return m29171new(m29172this(this.f25043if));
            }
            if (str.equals("_filterType") || str.equals("_ftype")) {
                return new C0258if();
            }
            if (str.equals("_registerNamespace") && this.f25042for.m29161do()) {
                this.f25042for = (freemarker.ext.xml.Cdo) this.f25042for.clone();
            }
        }
        String strMo29164new = "";
        if (nodeOperatorM29149native == null) {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf != -1) {
                String strSubstring2 = str.substring(iIndexOf + 1);
                String strSubstring3 = str.substring(0, iIndexOf);
                strMo29164new = this.f25042for.mo29164new(strSubstring3);
                if (strMo29164new == null) {
                    throw new k52("Namespace prefix " + strSubstring3 + " is not registered.");
                }
                str = strSubstring2;
            }
            if (str.charAt(0) == '@') {
                nodeOperatorM29149native = this.f25041do.m29146goto();
                strSubstring = str.substring(1);
            } else {
                nodeOperatorM29149native = this.f25041do.m29141catch();
                strSubstring = str;
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f25043if.iterator();
        while (it.hasNext()) {
            try {
                nodeOperatorM29149native.process(it.next(), strSubstring, strMo29164new, arrayList);
            } catch (RuntimeException e) {
                throw new k52((Exception) e);
            }
        }
        return m29171new(arrayList);
    }

    private Cif(Navigator navigator, List list, freemarker.ext.xml.Cdo cdo) {
        this.f25041do = navigator;
        this.f25043if = list;
        this.f25042for = cdo;
    }
}
