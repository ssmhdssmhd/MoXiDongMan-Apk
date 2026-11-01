package freemarker.ext.xml;

import android.support.v4.k52;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.jaxen.NamespaceContext;

/* loaded from: classes3.dex */
abstract class Navigator {

    /* renamed from: do, reason: not valid java name */
    private final Map f25011do = new WeakHashMap();

    /* renamed from: if, reason: not valid java name */
    private final Map f25013if = m29139for();

    /* renamed from: for, reason: not valid java name */
    private final NodeOperator f25012for = m29149native("_attributes");

    /* renamed from: new, reason: not valid java name */
    private final NodeOperator f25014new = m29149native("_children");

    public interface XPathEx {
        List selectNodes(Object obj, NamespaceContext namespaceContext) throws k52;
    }

    /* renamed from: freemarker.ext.xml.Navigator$break, reason: invalid class name */
    public class Cbreak implements NodeOperator {
        private Cbreak() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Object objMo29154super = Navigator.this.mo29154super(obj);
            if (objMo29154super != null) {
                list.add(objMo29154super);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$case, reason: invalid class name */
    public class Ccase implements NodeOperator {
        private Ccase() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Navigator.this.mo29142class(obj, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$catch, reason: invalid class name */
    public class Ccatch implements NodeOperator {
        private Ccatch() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            String strMo29157throw = Navigator.this.mo29157throw(obj);
            if (strMo29157throw != null) {
                list.add(strMo29157throw);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$class, reason: invalid class name */
    public class Cclass implements NodeOperator {
        private Cclass() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            String strMo29159while = Navigator.this.mo29159while(obj);
            if (strMo29159while != null) {
                list.add(strMo29159while);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$const, reason: invalid class name */
    public class Cconst implements NodeOperator {
        private Cconst() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            String strMo29148import = Navigator.this.mo29148import(obj);
            if (strMo29148import != null) {
                list.add(strMo29148import);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$else, reason: invalid class name */
    public class Celse implements NodeOperator {
        private Celse() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Navigator.this.mo29143const(obj, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$final, reason: invalid class name */
    public class Cfinal implements NodeOperator {
        private Cfinal() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Object objMo29151public = Navigator.this.mo29151public(obj);
            if (objMo29151public != null) {
                list.add(objMo29151public);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$for, reason: invalid class name */
    public class Cfor implements NodeOperator {
        private Cfor() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            list.add(obj);
            Navigator.this.m29137case(obj, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$goto, reason: invalid class name */
    public class Cgoto implements NodeOperator {
        private Cgoto() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            list.add(obj);
            Navigator.this.mo29143const(obj, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$if, reason: invalid class name */
    public class Cif implements NodeOperator {
        private Cif() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Navigator.this.m29137case(obj, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$new, reason: invalid class name */
    public class Cnew implements NodeOperator {
        private Cnew() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Navigator.this.mo29156this(obj, str, str2, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$super, reason: invalid class name */
    public class Csuper implements NodeOperator {
        private Csuper() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            String strM29152return = Navigator.this.m29152return(obj);
            if (strM29152return != null) {
                list.add(strM29152return);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$this, reason: invalid class name */
    public class Cthis implements NodeOperator {
        private Cthis() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Object objMo29145final = Navigator.this.mo29145final(obj);
            if (objMo29145final != null) {
                list.add(objMo29145final);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$throw, reason: invalid class name */
    public class Cthrow implements NodeOperator {
        private Cthrow() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            String strMo29153static = Navigator.this.mo29153static(obj);
            if (strMo29153static != null) {
                list.add(strMo29153static);
            }
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$try, reason: invalid class name */
    public class Ctry implements NodeOperator {
        private Ctry() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            Navigator.this.mo29140break(obj, str, str2, list);
        }
    }

    /* renamed from: freemarker.ext.xml.Navigator$while, reason: invalid class name */
    public class Cwhile implements NodeOperator {
        private Cwhile() {
        }

        @Override // freemarker.ext.xml.NodeOperator
        public void process(Object obj, String str, String str2, List list) {
            list.add(Navigator.this.mo29155switch(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public void m29137case(Object obj, List list) {
        while (true) {
            obj = mo29151public(obj);
            if (obj == null) {
                return;
            } else {
                list.add(obj);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private Map m29139for() {
        HashMap map = new HashMap();
        map.put("_attributes", new Cnew());
        map.put("@*", map.get("_attributes"));
        map.put("_children", new Ctry());
        map.put("*", map.get("_children"));
        map.put("_descendantOrSelf", new Cgoto());
        map.put("_descendant", new Celse());
        map.put("_document", new Cthis());
        map.put("_doctype", new Cbreak());
        map.put("_ancestor", new Cif());
        map.put("_ancestorOrSelf", new Cfor());
        map.put("_content", new Ccase());
        map.put("_name", new Ccatch());
        map.put("_nsprefix", new Cclass());
        map.put("_nsuri", new Cconst());
        map.put("_parent", new Cfinal());
        map.put("_qname", new Csuper());
        map.put("_text", new Cthrow());
        map.put("_type", new Cwhile());
        return map;
    }

    /* renamed from: break, reason: not valid java name */
    public abstract void mo29140break(Object obj, String str, String str2, List list);

    /* renamed from: catch, reason: not valid java name */
    public NodeOperator m29141catch() {
        return this.f25014new;
    }

    /* renamed from: class, reason: not valid java name */
    public abstract void mo29142class(Object obj, List list);

    /* renamed from: const, reason: not valid java name */
    public abstract void mo29143const(Object obj, List list);

    /* renamed from: else, reason: not valid java name */
    public abstract void mo29144else(Object obj, StringWriter stringWriter) throws k52;

    /* renamed from: final, reason: not valid java name */
    public abstract Object mo29145final(Object obj);

    /* renamed from: goto, reason: not valid java name */
    public NodeOperator m29146goto() {
        return this.f25012for;
    }

    /* renamed from: if, reason: not valid java name */
    public List m29147if(List list, String str, Object obj) throws k52 {
        XPathEx xPathExMo29150new;
        try {
            synchronized (this.f25011do) {
                xPathExMo29150new = (XPathEx) this.f25011do.get(str);
                if (xPathExMo29150new == null) {
                    xPathExMo29150new = mo29150new(str);
                    this.f25011do.put(str, xPathExMo29150new);
                }
            }
            return xPathExMo29150new.selectNodes(list, (NamespaceContext) obj);
        } catch (Exception e) {
            throw new k52("Could not evaulate XPath expression " + str, e);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public abstract String mo29148import(Object obj);

    /* renamed from: native, reason: not valid java name */
    public NodeOperator m29149native(String str) {
        return (NodeOperator) this.f25013if.get(str);
    }

    /* renamed from: new, reason: not valid java name */
    public abstract XPathEx mo29150new(String str) throws k52;

    /* renamed from: public, reason: not valid java name */
    public abstract Object mo29151public(Object obj);

    /* renamed from: return, reason: not valid java name */
    public String m29152return(Object obj) {
        String strMo29157throw = mo29157throw(obj);
        if (strMo29157throw == null) {
            return null;
        }
        String strMo29159while = mo29159while(obj);
        if (strMo29159while == null || strMo29159while.length() == 0) {
            return strMo29157throw;
        }
        return strMo29159while + ":" + strMo29157throw;
    }

    /* renamed from: static, reason: not valid java name */
    public abstract String mo29153static(Object obj);

    /* renamed from: super, reason: not valid java name */
    public abstract Object mo29154super(Object obj);

    /* renamed from: switch, reason: not valid java name */
    public abstract String mo29155switch(Object obj);

    /* renamed from: this, reason: not valid java name */
    public abstract void mo29156this(Object obj, String str, String str2, List list);

    /* renamed from: throw, reason: not valid java name */
    public abstract String mo29157throw(Object obj);

    /* renamed from: try, reason: not valid java name */
    public boolean m29158try(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    /* renamed from: while, reason: not valid java name */
    public abstract String mo29159while(Object obj);
}
