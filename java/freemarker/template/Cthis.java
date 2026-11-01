package freemarker.template;

import android.support.v4.az1;
import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.ry;
import android.support.v4.ul2;
import android.support.v4.we2;
import android.support.v4.wy1;
import freemarker.ext.beans.Celse;
import freemarker.ext.beans.Ctry;
import freemarker.ext.dom.Cbreak;
import java.lang.reflect.Array;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.w3c.dom.Node;

/* renamed from: freemarker.template.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends Ctry {

    /* renamed from: continue, reason: not valid java name */
    @Deprecated
    public static final Cthis f25112continue = new Cthis();

    /* renamed from: strictfp, reason: not valid java name */
    private static final Class<?> f25113strictfp;

    /* renamed from: volatile, reason: not valid java name */
    private static final ObjectWrapper f25114volatile;

    /* renamed from: abstract, reason: not valid java name */
    private final boolean f25115abstract;

    /* renamed from: finally, reason: not valid java name */
    private boolean f25116finally;

    /* renamed from: package, reason: not valid java name */
    private boolean f25117package;

    /* renamed from: private, reason: not valid java name */
    private boolean f25118private;

    /* renamed from: freemarker.template.this$do, reason: invalid class name */
    public class Cdo extends ry {
        public Cdo(we2 we2Var) {
            super(we2Var);
        }
    }

    /* renamed from: freemarker.template.this$if, reason: invalid class name */
    public class Cif extends ry {
        public Cif(we2 we2Var) {
            super(we2Var);
        }
    }

    static {
        ObjectWrapper objectWrapper;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("org.python.core.PyObject");
            objectWrapper = (ObjectWrapper) Class.forName("freemarker.ext.jython.goto").getField("INSTANCE").get(null);
            cls = cls2;
        } catch (Throwable th) {
            if (!(th instanceof ClassNotFoundException)) {
                try {
                    freemarker.log.Cif.m29193break("freemarker.template.DefaultObjectWrapper").mo29181else("Failed to init Jython support, so it was disabled.", th);
                } catch (Throwable unused) {
                }
            }
            objectWrapper = null;
        }
        f25113strictfp = cls;
        f25114volatile = objectWrapper;
    }

    @Deprecated
    public Cthis() {
        this(freemarker.template.Cdo.t3);
    }

    public static we2 c(we2 we2Var) {
        ul2.m8507if(we2Var);
        we2 we2VarC = Ctry.c(we2Var);
        int iIntValue = we2Var.intValue();
        int i = ul2.f6939try;
        return (iIntValue < i || we2VarC.intValue() >= i) ? we2VarC : freemarker.template.Cdo.l3;
    }

    public boolean A() {
        return this.f25117package;
    }

    public boolean B() {
        return this.f25118private;
    }

    public boolean C() {
        return this.f25116finally;
    }

    public TemplateModel D(Object obj) throws k52 {
        if (obj instanceof Node) {
            return H(obj);
        }
        ObjectWrapper objectWrapper = f25114volatile;
        return (objectWrapper == null || !f25113strictfp.isInstance(obj)) ? super.wrap(obj) : objectWrapper.wrap(obj);
    }

    public void E(boolean z) {
        m28702new();
        this.f25117package = z;
    }

    public void F(boolean z) {
        m28702new();
        this.f25118private = z;
    }

    public void G(boolean z) {
        m28702new();
        this.f25116finally = z;
    }

    public TemplateModel H(Object obj) {
        return Cbreak.m28746finally((Node) obj);
    }

    @Override // freemarker.ext.beans.Ctry
    public String t() {
        int iIndexOf;
        String strT = super.t();
        if (strT.startsWith("simpleMapWrapper") && (iIndexOf = strT.indexOf(44)) != -1) {
            strT = strT.substring(iIndexOf + 1).trim();
        }
        return "useAdaptersForContainers=" + this.f25116finally + ", forceLegacyNonListCollections=" + this.f25117package + ", iterableSupport=" + this.f25118private + strT;
    }

    @Override // freemarker.ext.beans.Ctry, freemarker.template.ObjectWrapper
    public TemplateModel wrap(Object obj) throws k52 {
        if (obj == null) {
            return super.wrap(null);
        }
        if (obj instanceof TemplateModel) {
            return (TemplateModel) obj;
        }
        if (obj instanceof String) {
            return new ez1((String) obj);
        }
        if (obj instanceof Number) {
            return new az1((Number) obj);
        }
        if (obj instanceof Date) {
            return obj instanceof java.sql.Date ? new wy1((java.sql.Date) obj) : obj instanceof Time ? new wy1((Time) obj) : obj instanceof Timestamp ? new wy1((Timestamp) obj) : new wy1((Date) obj, m28695final());
        }
        if (obj.getClass().isArray()) {
            if (this.f25116finally) {
                return freemarker.template.Cif.adapt(obj, this);
            }
            obj = z(obj);
        }
        return obj instanceof Collection ? this.f25116finally ? obj instanceof List ? Ccase.adapt((List) obj, this) : this.f25117package ? new Creturn((Collection) obj, this) : Cgoto.adapt((Collection) obj, this) : new Creturn((Collection) obj, this) : obj instanceof Map ? this.f25116finally ? Celse.adapt((Map) obj, this) : new Cnative((Map) obj, this) : obj instanceof Boolean ? obj.equals(Boolean.TRUE) ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE : obj instanceof Iterator ? this.f25116finally ? Ctry.adapt((Iterator) obj, this) : new Cimport((Iterator) obj, this) : (this.f25115abstract && (obj instanceof Enumeration)) ? Cfor.adapt((Enumeration) obj, this) : (this.f25118private && (obj instanceof Iterable)) ? Cnew.adapt((Iterable) obj, this) : D(obj);
    }

    public Object z(Object obj) {
        int length = Array.getLength(obj);
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(Array.get(obj, i));
        }
        return arrayList;
    }

    public Cthis(we2 we2Var) {
        this((ry) new Cdo(we2Var), false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cthis(Celse celse, boolean z) {
        super(celse, z, false);
        boolean z2 = false;
        ry cif = celse instanceof ry ? (ry) celse : new Cif(celse.m28583case());
        boolean zM7198package = cif.m7198package();
        this.f25116finally = zM7198package;
        if (zM7198package && m28699import().intValue() >= ul2.f6938this) {
            z2 = true;
        }
        this.f25115abstract = z2;
        this.f25117package = cif.m7196extends();
        this.f25118private = cif.m7197finally();
        m28688break(z);
    }

    public Cthis(ry ryVar, boolean z) {
        this((Celse) ryVar, z);
    }
}
