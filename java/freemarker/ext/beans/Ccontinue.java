package freemarker.ext.beans;

import android.support.v4.al2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.core.TemplateMarkupOutputModel;
import freemarker.core.z4;
import freemarker.template.TemplateModel;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: freemarker.ext.beans.continue, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccontinue {

    /* renamed from: do, reason: not valid java name */
    private final Cvolatile f24524do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f24525for;

    /* renamed from: if, reason: not valid java name */
    private Cvolatile f24526if;

    /* renamed from: freemarker.ext.beans.continue$do, reason: invalid class name */
    public class Cdo extends al2 {
        public Cdo(Object obj) {
            super(obj);
        }

        @Override // android.support.v4.al2
        /* renamed from: do */
        public String mo273do(Object obj) {
            Iterator itM28733else = Ccontinue.this.f24524do.m28733else();
            Iterator itM28733else2 = Ccontinue.this.f24526if != null ? Ccontinue.this.f24526if.m28733else() : null;
            if (!(itM28733else.hasNext() || (itM28733else2 != null && itM28733else2.hasNext()))) {
                return "No members";
            }
            StringBuilder sb = new StringBuilder();
            HashSet hashSet = new HashSet();
            while (itM28733else.hasNext()) {
                if (sb.length() != 0) {
                    sb.append(",\n");
                }
                sb.append("    ");
                Cthis cthis = (Cthis) itM28733else.next();
                hashSet.add(cthis);
                sb.append(cthis.mo28628do());
            }
            if (itM28733else2 != null) {
                while (itM28733else2.hasNext()) {
                    Cthis cthis2 = (Cthis) itM28733else2.next();
                    if (!hashSet.contains(cthis2)) {
                        if (sb.length() != 0) {
                            sb.append(",\n");
                        }
                        sb.append("    ");
                        sb.append(cthis2.mo28628do());
                    }
                }
            }
            return sb.toString();
        }
    }

    /* renamed from: freemarker.ext.beans.continue$for, reason: invalid class name */
    public class Cfor extends Cnew {
        public Cfor(Object[] objArr) {
            super(objArr);
        }

        @Override // freemarker.ext.beans.Ccontinue.Cnew
        /* renamed from: if, reason: not valid java name */
        public String mo28579if(Object obj) {
            return obj != null ? freemarker.template.utility.Cif.m29270break((Class) obj) : freemarker.template.utility.Cif.m29273class(null);
        }
    }

    /* renamed from: freemarker.ext.beans.continue$if, reason: invalid class name */
    public class Cif extends Cnew {
        public Cif(Object[] objArr) {
            super(objArr);
        }

        @Override // freemarker.ext.beans.Ccontinue.Cnew
        /* renamed from: if */
        public String mo28579if(Object obj) {
            return (String) obj;
        }
    }

    /* renamed from: freemarker.ext.beans.continue$new, reason: invalid class name */
    public abstract class Cnew extends al2 {
        public Cnew(Object[] objArr) {
            super(objArr);
        }

        @Override // android.support.v4.al2
        /* renamed from: do */
        public String mo273do(Object obj) {
            Object[] objArr = (Object[]) obj;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < objArr.length; i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(mo28579if(objArr[i]));
            }
            return sb.toString();
        }

        /* renamed from: if */
        public abstract String mo28579if(Object obj);
    }

    public Ccontinue(boolean z) {
        this.f24525for = z;
        this.f24524do = new Cabstract(z);
    }

    /* renamed from: break, reason: not valid java name */
    private al2 m28567break() {
        return new Cdo(null);
    }

    /* renamed from: catch, reason: not valid java name */
    private Object[] m28568catch(Cimport cimport, Cimport cimport2, List list) {
        return cimport2 != null ? (cimport == null || cimport.m28645try()) ? m28569class(cimport2, list) : new Object[]{"When trying to call the non-varargs overloads:\n", m28569class(cimport, list), "\nWhen trying to call the varargs overloads:\n", m28569class(cimport2, null)} : m28569class(cimport, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: class, reason: not valid java name */
    private Object[] m28569class(Cimport cimport, List list) {
        Object[] objArrM28644new = cimport.m28644new();
        Object[] objArr = new Object[3];
        objArr[0] = cimport.m28643for();
        String str = "";
        objArr[1] = list != null ? new Object[]{"\nThe FTL type of the argument values were: ", m28572goto(list), "."} : "";
        String str2 = str;
        if (objArrM28644new != null) {
            str2 = new Object[]{"\nThe Java type of the argument values were: ", m28574this(objArrM28644new) + "."};
        }
        objArr[2] = str2;
        return objArr;
    }

    /* renamed from: for, reason: not valid java name */
    private void m28571for(Ctransient ctransient) {
        this.f24524do.m28732do(ctransient);
        if (ctransient.mo28631goto()) {
            if (this.f24526if == null) {
                this.f24526if = new Cinterface(this.f24525for);
            }
            this.f24526if.m28732do(ctransient);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private al2 m28572goto(List list) {
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = freemarker.template.utility.Cif.m29271case((TemplateModel) list.get(i));
        }
        return new Cif(strArr);
    }

    /* renamed from: this, reason: not valid java name */
    private Object m28574this(Object[] objArr) {
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            clsArr[i] = obj != null ? obj.getClass() : null;
        }
        return new Cfor(clsArr);
    }

    /* renamed from: try, reason: not valid java name */
    private void m28575try(z4 z4Var, List list) {
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (obj instanceof TemplateMarkupOutputModel) {
                Iterator itM28733else = this.f24524do.m28733else();
                while (itM28733else.hasNext()) {
                    Cthis cthis = (Cthis) itM28733else.next();
                    Class<?>[] clsArrMo28630for = cthis.mo28630for();
                    Class<?> componentType = null;
                    if (cthis.mo28631goto() && i >= clsArrMo28630for.length - 1) {
                        componentType = clsArrMo28630for[clsArrMo28630for.length - 1];
                        if (componentType.isArray()) {
                            componentType = componentType.getComponentType();
                        }
                    }
                    if (componentType == null && i < clsArrMo28630for.length) {
                        componentType = clsArrMo28630for[i];
                    }
                    if (componentType != null && componentType.isAssignableFrom(String.class) && !componentType.isAssignableFrom(obj.getClass())) {
                        z4Var.m28402this(b.f24475for);
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m28576case(Method method) {
        m28571for(new Ctransient(method, method.getParameterTypes()));
    }

    /* renamed from: else, reason: not valid java name */
    public Cfinally m28577else(List list, Ctry ctry) throws k52 {
        Cextends cextendsMo28490try;
        Cextends cextendsMo28490try2 = this.f24524do.mo28490try(list, ctry);
        if (cextendsMo28490try2 instanceof Cfinally) {
            return (Cfinally) cextendsMo28490try2;
        }
        Cvolatile cvolatile = this.f24526if;
        if (cvolatile != null) {
            cextendsMo28490try = cvolatile.mo28490try(list, ctry);
            if (cextendsMo28490try instanceof Cfinally) {
                return (Cfinally) cextendsMo28490try;
            }
        } else {
            cextendsMo28490try = null;
        }
        z4 z4Var = new z4(m28568catch((Cimport) cextendsMo28490try2, (Cimport) cextendsMo28490try, list), "\nThe matching overload was searched among these members:\n", m28567break());
        if (!this.f24525for) {
            z4Var.m28402this("You seem to use BeansWrapper with incompatibleImprovements set below 2.3.21. If you think this error is unfounded, enabling 2.3.21 fixes may helps. See version history for more.");
        }
        m28575try(z4Var, list);
        throw new vl2(z4Var);
    }

    /* renamed from: new, reason: not valid java name */
    public void m28578new(Constructor constructor) {
        m28571for(new Ctransient(constructor, constructor.getParameterTypes()));
    }
}
