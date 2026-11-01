package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.h52;
import android.support.v4.k52;
import android.support.v4.mb2;
import android.support.v4.mc;
import android.support.v4.ol2;
import android.support.v4.sl2;
import android.support.v4.wd1;
import android.support.v4.we2;
import freemarker.cache.Cclass;
import freemarker.cache.Cconst;
import freemarker.cache.Cfinal;
import freemarker.template.Cpublic;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.utility.Csuper;
import freemarker.template.utility.WriteProtectable;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class c5 {

    /* renamed from: break, reason: not valid java name */
    private static Map<String, String> f23542break = null;

    /* renamed from: catch, reason: not valid java name */
    private static final Object f23543catch = new Object();

    /* renamed from: else, reason: not valid java name */
    private static final String f23544else = "INSTANCE";

    /* renamed from: goto, reason: not valid java name */
    private static final String f23545goto = "build";

    /* renamed from: this, reason: not valid java name */
    private static final String f23546this = "Builder";

    /* renamed from: case, reason: not valid java name */
    private boolean f23547case = false;

    /* renamed from: do, reason: not valid java name */
    private final String f23548do;

    /* renamed from: for, reason: not valid java name */
    private final boolean f23549for;

    /* renamed from: if, reason: not valid java name */
    private final Class f23550if;

    /* renamed from: new, reason: not valid java name */
    private final sl2 f23551new;

    /* renamed from: try, reason: not valid java name */
    private int f23552try;

    /* renamed from: freemarker.core.c5$break, reason: invalid class name */
    public static abstract class Cbreak {
        private Cbreak() {
        }

        /* renamed from: do, reason: not valid java name */
        public abstract Object mo27922do() throws ol2;
    }

    /* renamed from: freemarker.core.c5$case, reason: invalid class name */
    public class Ccase extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        private List<Object> f23553do;

        private Ccase() {
            super();
            this.f23553do = new ArrayList();
        }

        @Override // freemarker.core.c5.Cbreak
        /* renamed from: do */
        public Object mo27922do() throws ol2 {
            ArrayList arrayList = new ArrayList(this.f23553do.size());
            Iterator<Object> it = this.f23553do.iterator();
            while (it.hasNext()) {
                arrayList.add(c5.this.m27917this(it.next()));
            }
            return arrayList;
        }

        /* renamed from: for, reason: not valid java name */
        public int m27923for() {
            return this.f23553do.size();
        }

        /* renamed from: if, reason: not valid java name */
        public void m27924if(Object obj) {
            this.f23553do.add(obj);
        }
    }

    /* renamed from: freemarker.core.c5$else, reason: invalid class name */
    public class Celse extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        private List<Cnew> f23555do;

        private Celse() {
            super();
            this.f23555do = new ArrayList();
        }

        @Override // freemarker.core.c5.Cbreak
        /* renamed from: do */
        public Object mo27922do() throws ol2 {
            LinkedHashMap linkedHashMap = new LinkedHashMap((this.f23555do.size() * 4) / 3, 1.0f);
            for (Cnew cnew : this.f23555do) {
                Object objM27917this = c5.this.m27917this(cnew.f23566do);
                if (objM27917this == null) {
                    throw new ol2("Map can't use null as key.");
                }
                linkedHashMap.put(objM27917this, c5.this.m27917this(cnew.f23567if));
            }
            return linkedHashMap;
        }

        /* renamed from: for, reason: not valid java name */
        public int m27925for() {
            return this.f23555do.size();
        }

        /* renamed from: if, reason: not valid java name */
        public void m27926if(Cnew cnew) {
            this.f23555do.add(cnew);
        }
    }

    /* renamed from: freemarker.core.c5$for, reason: invalid class name */
    public abstract class Cfor extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        public List f23557do;

        /* renamed from: for, reason: not valid java name */
        public List f23558for;

        /* renamed from: if, reason: not valid java name */
        public List f23559if;

        private Cfor() {
            super();
            this.f23557do = new ArrayList();
            this.f23559if = new ArrayList();
            this.f23558for = new ArrayList();
        }

        /* renamed from: if, reason: not valid java name */
        public abstract boolean mo27927if();
    }

    /* renamed from: freemarker.core.c5$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: do, reason: not valid java name */
        private final String f23561do;

        public Cgoto(String str) {
            this.f23561do = str;
        }
    }

    /* renamed from: freemarker.core.c5$if, reason: invalid class name */
    public class Cif extends Cfor {

        /* renamed from: case, reason: not valid java name */
        private boolean f23562case;

        /* renamed from: else, reason: not valid java name */
        private boolean f23563else;

        /* renamed from: try, reason: not valid java name */
        private String f23565try;

        private Cif() {
            super();
        }

        /* renamed from: break, reason: not valid java name */
        private boolean m27929break() {
            return this.f23557do.isEmpty() && this.f23558for.isEmpty();
        }

        /* renamed from: else, reason: not valid java name */
        private Object m27931else(Object obj) throws ol2 {
            Class<?> cls = obj.getClass();
            try {
                try {
                    return obj.getClass().getMethod(c5.f23545goto, null).invoke(obj, null);
                } catch (Exception e) {
                    e = e;
                    if (e instanceof InvocationTargetException) {
                        e = ((InvocationTargetException) e).getTargetException();
                    }
                    throw new ol2("Failed to call build() method on " + cls.getName() + " instance", e);
                }
            } catch (NoSuchMethodException e2) {
                throw new ol2("The " + cls.getName() + " builder class must have a public " + c5.f23545goto + "() method", e2);
            } catch (Exception e3) {
                throw new ol2("Failed to get the build() method of the " + cls.getName() + " builder class", e3);
            }
        }

        /* renamed from: goto, reason: not valid java name */
        private Object m27933goto(Class cls) throws ol2 {
            if (m27929break()) {
                try {
                    return cls.newInstance();
                } catch (Exception e) {
                    throw new ol2("Failed to call " + cls.getName() + " 0-argument constructor", e);
                }
            }
            freemarker.ext.beans.Ctry ctryM7511for = c5.this.f23551new.m7511for();
            ArrayList arrayList = new ArrayList(this.f23557do.size());
            for (int i = 0; i < this.f23557do.size(); i++) {
                try {
                    arrayList.add(ctryM7511for.wrap(this.f23557do.get(i)));
                } catch (k52 e2) {
                    throw new ol2("Failed to wrap arg #" + (i + 1), e2);
                }
            }
            try {
                return ctryM7511for.b(cls, arrayList);
            } catch (Exception e3) {
                throw new ol2("Failed to call " + cls.getName() + " constructor", e3);
            }
        }

        /* renamed from: this, reason: not valid java name */
        private Object m27935this(String str) throws ol2, NoSuchFieldException {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf == -1) {
                throw new IllegalArgumentException();
            }
            String strM27891abstract = c5.m27891abstract(str.substring(0, iLastIndexOf));
            String strSubstring = str.substring(iLastIndexOf + 1);
            try {
                try {
                    Field field = freemarker.template.utility.Cif.m29285try(strM27891abstract).getField(strSubstring);
                    if ((field.getModifiers() & 8) == 0) {
                        throw new ol2("Referred field isn't static: " + field);
                    }
                    if ((field.getModifiers() & 1) == 0) {
                        throw new ol2("Referred field isn't public: " + field);
                    }
                    if (field.getName().equals(c5.f23544else)) {
                        throw new ol2("The INSTANCE field is only accessible through pseudo-constructor call: " + strM27891abstract + "()");
                    }
                    try {
                        return field.get(null);
                    } catch (Exception e) {
                        throw new ol2("Failed to get field value: " + field, e);
                    }
                } catch (Exception e2) {
                    throw new ol2("Failed to get field " + Csuper.m29330synchronized(strSubstring) + " from class " + Csuper.m29330synchronized(strM27891abstract) + ".", e2);
                }
            } catch (Exception e3) {
                throw new ol2("Failed to get field's parent class, " + Csuper.m29330synchronized(strM27891abstract) + ".", e3);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:65:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0105  */
        @Override // freemarker.core.c5.Cbreak
        /* renamed from: do */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object mo27922do() throws ol2, NoSuchFieldException, ClassNotFoundException {
            Class clsM29285try;
            if (this.f23563else) {
                if (this.f23562case) {
                    return m27935this(this.f23565try);
                }
                throw new mc();
            }
            try {
                if (!c5.this.f23547case) {
                    try {
                        return freemarker.template.utility.Cif.m29285try(this.f23565try).newInstance();
                    } catch (ClassNotFoundException e) {
                        throw new Ctry(e);
                    } catch (IllegalAccessException e2) {
                        throw new Ctry(e2);
                    } catch (InstantiationException e3) {
                        throw new Ctry(e3);
                    }
                }
                boolean z = true;
                try {
                    try {
                        clsM29285try = freemarker.template.utility.Cif.m29285try(this.f23565try + c5.f23546this);
                    } catch (Exception e4) {
                        if (this.f23562case) {
                            try {
                                return m27935this(this.f23565try);
                            } catch (ol2 unused) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Failed to get class ");
                                sb.append(Csuper.m29330synchronized(this.f23565try));
                                sb.append(!z ? " (also failed to resolve name as static field)" : "");
                                sb.append(".");
                                throw new ol2(sb.toString(), e4);
                            }
                        }
                        z = false;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Failed to get class ");
                        sb2.append(Csuper.m29330synchronized(this.f23565try));
                        sb2.append(!z ? " (also failed to resolve name as static field)" : "");
                        sb2.append(".");
                        throw new ol2(sb2.toString(), e4);
                    }
                } catch (ClassNotFoundException unused2) {
                    clsM29285try = freemarker.template.utility.Cif.m29285try(this.f23565try);
                    z = false;
                }
                if (!z && m27929break()) {
                    try {
                        Field field = clsM29285try.getField(c5.f23544else);
                        if ((field.getModifiers() & 9) == 9) {
                            return field.get(null);
                        }
                    } catch (NoSuchFieldException unused3) {
                    } catch (Exception e5) {
                        throw new ol2("Error when trying to access " + Csuper.m29330synchronized(this.f23565try) + "." + c5.f23544else, e5);
                    }
                }
                Object objM27933goto = m27933goto(clsM29285try);
                c5.this.m27911private(objM27933goto, this.f23559if, this.f23558for);
                if (z) {
                    return m27931else(objM27933goto);
                }
                if (!(objM27933goto instanceof WriteProtectable)) {
                    return objM27933goto;
                }
                ((WriteProtectable) objM27933goto).writeProtect();
                return objM27933goto;
            } catch (Ctry e6) {
                if (!this.f23562case || this.f23565try.indexOf(46) == -1) {
                    throw e6;
                }
                try {
                    return m27935this(this.f23565try);
                } catch (ol2 unused4) {
                    throw e6;
                }
            }
        }

        @Override // freemarker.core.c5.Cfor
        /* renamed from: if */
        public boolean mo27927if() {
            return true;
        }
    }

    /* renamed from: freemarker.core.c5$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final Object f23566do;

        /* renamed from: if, reason: not valid java name */
        private final Object f23567if;

        public Cnew(Object obj, Object obj2) {
            this.f23566do = obj;
            this.f23567if = obj2;
        }
    }

    /* renamed from: freemarker.core.c5$this, reason: invalid class name */
    public class Cthis extends Cfor {

        /* renamed from: try, reason: not valid java name */
        private final Object f23569try;

        public Cthis(Object obj) {
            super();
            this.f23569try = obj;
        }

        @Override // freemarker.core.c5.Cbreak
        /* renamed from: do */
        public Object mo27922do() throws ol2 {
            c5.this.m27911private(this.f23569try, this.f23559if, this.f23558for);
            return this.f23569try;
        }

        @Override // freemarker.core.c5.Cfor
        /* renamed from: if */
        public boolean mo27927if() {
            return false;
        }
    }

    /* renamed from: freemarker.core.c5$try, reason: invalid class name */
    public static class Ctry extends ol2 {
        public Ctry(Throwable th) {
            super("Legacy operation failed", th);
            if (!(th instanceof ClassNotFoundException) && !(th instanceof InstantiationException) && !(th instanceof IllegalAccessException)) {
                throw new IllegalArgumentException();
            }
        }

        public void rethrowLegacy() throws IllegalAccessException, InstantiationException, ClassNotFoundException {
            Throwable cause = getCause();
            if (cause instanceof ClassNotFoundException) {
                throw ((ClassNotFoundException) cause);
            }
            if (cause instanceof InstantiationException) {
                throw ((InstantiationException) cause);
            }
            if (!(cause instanceof IllegalAccessException)) {
                throw new mc();
            }
            throw ((IllegalAccessException) cause);
        }
    }

    private c5(String str, int i, Class cls, boolean z, sl2 sl2Var) {
        this.f23548do = str;
        this.f23552try = i;
        this.f23550if = cls;
        this.f23549for = z;
        this.f23551new = sl2Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public static synchronized String m27891abstract(String str) {
        if (f23542break == null) {
            HashMap map = new HashMap();
            f23542break = map;
            m27893case(map, freemarker.template.Cthis.class);
            m27893case(f23542break, freemarker.ext.beans.Ctry.class);
            m27893case(f23542break, Cpublic.class);
            m27893case(f23542break, h52.class);
            m27893case(f23542break, Cfinal.class);
            m27893case(f23542break, freemarker.cache.Ccase.class);
            m27893case(f23542break, freemarker.cache.Ctry.class);
            m27893case(f23542break, freemarker.cache.Csuper.class);
            m27893case(f23542break, freemarker.cache.Cdo.class);
            m27893case(f23542break, Cconst.class);
            m27893case(f23542break, Cclass.class);
            m27893case(f23542break, freemarker.cache.Cnew.class);
            m27893case(f23542break, freemarker.cache.Cthis.class);
            m27893case(f23542break, freemarker.cache.Cgoto.class);
            m27893case(f23542break, q0.class);
            m27893case(f23542break, u4.class);
            m27893case(f23542break, v4.class);
            m27893case(f23542break, j3.class);
            m27893case(f23542break, wd1.class);
            m27893case(f23542break, mb2.class);
            m27893case(f23542break, y.class);
            m27893case(f23542break, Locale.class);
            f23542break.put("TimeZone", "freemarker.core._TimeZone");
            f23542break.put("markup", "freemarker.core._Markup");
            m27893case(f23542break, freemarker.template.Cdo.class);
        }
        String str2 = f23542break.get(str);
        if (str2 != null) {
            str = str2;
        }
        return str;
    }

    /* renamed from: break, reason: not valid java name */
    private Object m27892break() throws ol2, IllegalAccessException, InstantiationException, ClassNotFoundException {
        Object objM27917this;
        m27897continue();
        try {
            objM27917this = m27917this(m27916switch(false, true, false, true));
        } catch (Ctry e) {
            e.rethrowLegacy();
            objM27917this = null;
        }
        m27897continue();
        if (this.f23552try != this.f23548do.length()) {
            throw new ol2("end-of-expression", this.f23548do, this.f23552try);
        }
        if (objM27917this == null && !this.f23549for) {
            throw new ol2("Value can't be null.");
        }
        if (objM27917this == null || this.f23550if.isInstance(objM27917this)) {
            return objM27917this;
        }
        throw new ol2("The resulting object (of class " + objM27917this.getClass() + ") is not a(n) " + this.f23550if.getName() + ".");
    }

    /* renamed from: case, reason: not valid java name */
    private static void m27893case(Map map, Class<?> cls) {
        map.put(cls.getSimpleName(), cls.getName());
    }

    /* renamed from: catch, reason: not valid java name */
    public static Object m27894catch(String str, Class cls, boolean z, sl2 sl2Var) throws ol2, IllegalAccessException, InstantiationException, ClassNotFoundException {
        return new c5(str, 0, cls, z, sl2Var).m27892break();
    }

    /* renamed from: class, reason: not valid java name */
    private Object m27895class(boolean z, boolean z2) throws ol2 {
        int i = this.f23552try;
        Cif cif = new Cif();
        cif.f23562case = true;
        String strM27902final = m27902final(z);
        if (strM27902final == null) {
            if (z) {
                return f23543catch;
            }
            throw new ol2("class name", this.f23548do, this.f23552try);
        }
        cif.f23565try = m27891abstract(strM27902final);
        if (!strM27902final.equals(cif.f23565try)) {
            this.f23547case = true;
            cif.f23562case = false;
        }
        m27897continue();
        char cM27907import = m27907import("(");
        if (cM27907import == 0 && !z2) {
            if (strM27902final.indexOf(46) == -1) {
                this.f23552try = i;
                return f23543catch;
            }
            cif.f23563else = true;
        }
        if (cM27907import != 0) {
            m27908native(cif);
            cif.f23562case = false;
        }
        return cif;
    }

    /* renamed from: const, reason: not valid java name */
    private char m27896const(String str, boolean z) throws ol2 {
        int i = 0;
        char cCharAt = this.f23552try < this.f23548do.length() ? this.f23548do.charAt(this.f23552try) : (char) 0;
        if (str.indexOf(cCharAt) != -1) {
            this.f23552try++;
            return cCharAt;
        }
        if (z) {
            return (char) 0;
        }
        StringBuilder sb = new StringBuilder();
        while (i < str.length()) {
            if (i != 0) {
                sb.append(" or ");
            }
            int i2 = i + 1;
            sb.append(Csuper.m29330synchronized(str.substring(i, i2)));
            i = i2;
        }
        throw new ol2(sb.toString(), this.f23548do, this.f23552try);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m27897continue() {
        while (this.f23552try != this.f23548do.length() && Character.isWhitespace(this.f23548do.charAt(this.f23552try))) {
            this.f23552try++;
        }
    }

    /* renamed from: default, reason: not valid java name */
    private boolean m27898default(char c) {
        return m27901extends(c) || m27919throws(c);
    }

    /* renamed from: else, reason: not valid java name */
    private int m27900else(Object obj) throws ol2, IllegalAccessException, InstantiationException, ClassNotFoundException {
        Cthis cthis = new Cthis(obj);
        m27908native(cthis);
        m27897continue();
        cthis.mo27922do();
        return this.f23552try;
    }

    /* renamed from: extends, reason: not valid java name */
    private boolean m27901extends(char c) {
        return Character.isLetter(c) || c == '_' || c == '$';
    }

    /* renamed from: final, reason: not valid java name */
    private String m27902final(boolean z) throws ol2 {
        int i = this.f23552try;
        StringBuilder sb = new StringBuilder();
        while (true) {
            String strM27913return = m27913return(true);
            if (strM27913return == null) {
                if (!z) {
                    throw new ol2("name", this.f23548do, this.f23552try);
                }
                this.f23552try = i;
                return null;
            }
            sb.append(strM27913return);
            m27897continue();
            if (this.f23552try >= this.f23548do.length() || this.f23548do.charAt(this.f23552try) != '.') {
                break;
            }
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            this.f23552try++;
            m27897continue();
        }
        String string = sb.toString();
        if (!m27903finally(string)) {
            return string;
        }
        this.f23552try = i;
        return null;
    }

    /* renamed from: finally, reason: not valid java name */
    private boolean m27903finally(String str) {
        return m27910package(str) != f23543catch;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m27905goto(String str, int i, Object obj, sl2 sl2Var) throws ol2, IllegalAccessException, InstantiationException, ClassNotFoundException {
        return new c5(str, i, obj.getClass(), true, sl2Var).m27900else(obj);
    }

    /* renamed from: import, reason: not valid java name */
    private char m27907import(String str) throws ol2 {
        return m27896const(str, true);
    }

    /* renamed from: native, reason: not valid java name */
    private void m27908native(Cfor cfor) throws ol2 {
        this.f23547case = true;
        m27897continue();
        if (m27907import(")") != ')') {
            do {
                m27897continue();
                Object objM27916switch = m27916switch(false, false, true, false);
                if (objM27916switch != f23543catch) {
                    m27897continue();
                    if (objM27916switch instanceof Cgoto) {
                        cfor.f23559if.add(((Cgoto) objM27916switch).f23561do);
                        m27897continue();
                        m27912public("=");
                        m27897continue();
                        cfor.f23558for.add(m27917this(m27916switch(false, false, true, true)));
                    } else {
                        if (!cfor.f23559if.isEmpty()) {
                            throw new ol2("Positional parameters must precede named parameters");
                        }
                        if (!cfor.mo27927if()) {
                            throw new ol2("Positional parameters not supported here");
                        }
                        cfor.f23557do.add(m27917this(objM27916switch));
                    }
                    m27897continue();
                }
            } while (m27912public(",)") == ',');
        }
    }

    /* renamed from: package, reason: not valid java name */
    private Object m27910package(String str) {
        if (str.equals(b2.f23511if)) {
            return Boolean.TRUE;
        }
        if (str.equals(b2.f23510do)) {
            return Boolean.FALSE;
        }
        if (str.equals("null")) {
            return null;
        }
        return f23543catch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public void m27911private(Object obj, List list, List list2) throws ol2 {
        if (list.isEmpty()) {
            return;
        }
        Class<?> cls = obj.getClass();
        try {
            PropertyDescriptor[] propertyDescriptors = Introspector.getBeanInfo(cls).getPropertyDescriptors();
            HashMap map = new HashMap((propertyDescriptors.length * 4) / 3, 1.0f);
            for (PropertyDescriptor propertyDescriptor : propertyDescriptors) {
                Method writeMethod = propertyDescriptor.getWriteMethod();
                if (writeMethod != null) {
                    map.put(propertyDescriptor.getName(), writeMethod);
                }
            }
            TemplateHashModel templateHashModel = null;
            for (int i = 0; i < list.size(); i++) {
                String str = (String) list.get(i);
                if (!map.containsKey(str)) {
                    throw new ol2("The " + cls.getName() + " class has no writeable JavaBeans property called " + Csuper.m29330synchronized(str) + ".");
                }
                Method method = (Method) map.put(str, null);
                if (method == null) {
                    throw new ol2("JavaBeans property " + Csuper.m29330synchronized(str) + " is set twice.");
                }
                if (templateHashModel == null) {
                    try {
                        TemplateModel templateModelWrap = this.f23551new.m7511for().wrap(obj);
                        if (!(templateModelWrap instanceof TemplateHashModel)) {
                            throw new ol2("The " + cls.getName() + " class is not a wrapped as TemplateHashModel.");
                        }
                        templateHashModel = (TemplateHashModel) templateModelWrap;
                    } catch (Exception e) {
                        throw new ol2("Failed to set " + Csuper.m29330synchronized(str), e);
                    }
                }
                TemplateModel templateModel = templateHashModel.get(method.getName());
                if (templateModel == null) {
                    throw new ol2("Can't find " + method + " as FreeMarker method.");
                }
                if (!(templateModel instanceof TemplateMethodModelEx)) {
                    throw new ol2(Csuper.m29330synchronized(method.getName()) + " wasn't a TemplateMethodModelEx.");
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f23551new.m7511for().wrap(list2.get(i)));
                ((TemplateMethodModelEx) templateModel).exec(arrayList);
            }
        } catch (Exception e2) {
            throw new ol2("Failed to inspect " + cls.getName() + " class", e2);
        }
    }

    /* renamed from: public, reason: not valid java name */
    private char m27912public(String str) throws ol2 {
        return m27896const(str, false);
    }

    /* renamed from: return, reason: not valid java name */
    private String m27913return(boolean z) throws ol2 {
        if (!m27901extends(this.f23552try < this.f23548do.length() ? this.f23548do.charAt(this.f23552try) : (char) 0)) {
            if (z) {
                return null;
            }
            throw new ol2("class name", this.f23548do, this.f23552try);
        }
        int i = this.f23552try;
        this.f23552try = i + 1;
        while (this.f23552try != this.f23548do.length() && m27898default(this.f23548do.charAt(this.f23552try))) {
            this.f23552try++;
        }
        return this.f23548do.substring(i, this.f23552try);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        r1 = r8.f23552try;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
    
        if (r0 != r1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0069, code lost:
    
        if (r9 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006d, code lost:
    
        return freemarker.core.c5.f23543catch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        throw new android.support.v4.ol2("string literal", r8.f23548do, r8.f23552try);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        r9 = r8.f23548do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
    
        if (r4 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007e, code lost:
    
        r2 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0081, code lost:
    
        r9 = r9.substring(r0 + r2, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
    
        r8.f23552try++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
    
        if (r4 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0092, code lost:
    
        return freemarker.template.utility.Csuper.m29307do(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0093, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00aa, code lost:
    
        throw new android.support.v4.ol2("Malformed string literal: " + r9, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
    
        return r9;
     */
    /* renamed from: static, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object m27914static(boolean z) throws ol2 {
        char cCharAt;
        int i = this.f23552try;
        char c = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (this.f23552try != this.f23548do.length()) {
                char cCharAt2 = this.f23548do.charAt(this.f23552try);
                if (c == 0) {
                    if (cCharAt2 == 'r' && this.f23552try + 1 < this.f23548do.length()) {
                        cCharAt2 = this.f23548do.charAt(this.f23552try + 1);
                        z3 = true;
                    }
                    c = ca2.f674do;
                    if (cCharAt2 != '\'') {
                        if (cCharAt2 != '\"') {
                            break;
                        }
                    } else {
                        c = '\'';
                    }
                    if (z3) {
                        this.f23552try++;
                    }
                    this.f23552try++;
                } else {
                    if (z2) {
                        z2 = false;
                    } else if (cCharAt2 == '\\' && !z3) {
                        z2 = true;
                    } else if (cCharAt2 != c) {
                        if (cCharAt2 == '{' && ((cCharAt = this.f23548do.charAt(this.f23552try - 1)) == '$' || cCharAt == '#')) {
                            break;
                        }
                    } else {
                        break;
                    }
                    this.f23552try++;
                }
            } else if (c != 0) {
                throw new ol2(String.valueOf(c), this.f23548do, this.f23552try);
            }
        }
        throw new ol2("${...} and #{...} aren't allowed here.");
    }

    /* renamed from: super, reason: not valid java name */
    private Object m27915super(boolean z) throws ol2 {
        if (this.f23552try == this.f23548do.length() || this.f23548do.charAt(this.f23552try) != '[') {
            if (z) {
                return f23543catch;
            }
            throw new ol2("[", this.f23548do, this.f23552try);
        }
        this.f23552try++;
        Ccase ccase = new Ccase();
        while (true) {
            m27897continue();
            if (m27907import("]") != 0) {
                return ccase;
            }
            if (ccase.m27923for() != 0) {
                m27912public(",");
                m27897continue();
            }
            ccase.m27924if(m27916switch(false, false, false, true));
            m27897continue();
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private Object m27916switch(boolean z, boolean z2, boolean z3, boolean z4) throws ol2 {
        if (this.f23552try < this.f23548do.length()) {
            Object objM27921while = m27921while(true, z3);
            Object obj = f23543catch;
            if (objM27921while != obj) {
                return objM27921while;
            }
            Object objM27914static = m27914static(true);
            if (objM27914static != obj) {
                return objM27914static;
            }
            Object objM27915super = m27915super(true);
            if (objM27915super != obj) {
                return objM27915super;
            }
            Object objM27918throw = m27918throw(true);
            if (objM27918throw != obj) {
                return objM27918throw;
            }
            Object objM27895class = m27895class(true, z2);
            if (objM27895class != obj) {
                return objM27895class;
            }
            String strM27913return = m27913return(true);
            if (strM27913return != null) {
                Object objM27910package = m27910package(strM27913return);
                if (objM27910package != obj) {
                    return objM27910package;
                }
                if (!z4) {
                    return new Cgoto(strM27913return);
                }
                throw new ol2("Can't resolve variable reference: " + strM27913return);
            }
        }
        if (z) {
            return f23543catch;
        }
        throw new ol2("value or name", this.f23548do, this.f23552try);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public Object m27917this(Object obj) throws ol2 {
        return obj instanceof Cbreak ? ((Cbreak) obj).mo27922do() : obj;
    }

    /* renamed from: throw, reason: not valid java name */
    private Object m27918throw(boolean z) throws ol2 {
        if (this.f23552try == this.f23548do.length() || this.f23548do.charAt(this.f23552try) != '{') {
            if (z) {
                return f23543catch;
            }
            throw new ol2("{", this.f23548do, this.f23552try);
        }
        this.f23552try++;
        Celse celse = new Celse();
        while (true) {
            m27897continue();
            if (m27907import("}") != 0) {
                return celse;
            }
            if (celse.m27925for() != 0) {
                m27912public(",");
                m27897continue();
            }
            Object objM27916switch = m27916switch(false, false, false, true);
            m27897continue();
            m27912public(":");
            m27897continue();
            celse.m27926if(new Cnew(objM27916switch, m27916switch(false, false, false, true)));
            m27897continue();
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private boolean m27919throws(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: while, reason: not valid java name */
    private Object m27921while(boolean z, boolean z2) throws ol2 {
        int i = this.f23552try;
        boolean z3 = false;
        boolean z4 = false;
        while (this.f23552try != this.f23548do.length()) {
            char cCharAt = this.f23548do.charAt(this.f23552try);
            if (cCharAt != '.') {
                if (!m27919throws(cCharAt) && cCharAt != '-') {
                    break;
                }
            } else if (z3) {
                z4 = true;
            } else {
                z3 = true;
            }
            this.f23552try++;
        }
        int i2 = this.f23552try;
        if (i == i2) {
            if (z) {
                return f23543catch;
            }
            throw new ol2("number-like", this.f23548do, this.f23552try);
        }
        String strSubstring = this.f23548do.substring(i, i2);
        if (z4) {
            try {
                return new we2(strSubstring);
            } catch (IllegalArgumentException e) {
                throw new ol2("Malformed version number: " + strSubstring, e);
            }
        }
        String strValueOf = null;
        while (this.f23552try != this.f23548do.length()) {
            char cCharAt2 = this.f23548do.charAt(this.f23552try);
            if (Character.isLetter(cCharAt2)) {
                if (strValueOf == null) {
                    strValueOf = String.valueOf(cCharAt2);
                } else {
                    strValueOf = strValueOf + cCharAt2;
                }
                this.f23552try++;
            }
        }
        try {
            if (strSubstring.endsWith(".")) {
                throw new NumberFormatException("A number can't end with a dot");
            }
            if (strSubstring.startsWith(".") || strSubstring.startsWith("-.") || strSubstring.startsWith("+.")) {
                throw new NumberFormatException("A number can't start with a dot");
            }
            if (strValueOf == null) {
                if (strSubstring.indexOf(46) != -1) {
                    return z2 ? new BigDecimal(strSubstring) : Double.valueOf(strSubstring);
                }
                BigInteger bigInteger = new BigInteger(strSubstring);
                int iBitLength = bigInteger.bitLength();
                return iBitLength <= 31 ? Integer.valueOf(bigInteger.intValue()) : iBitLength <= 63 ? Long.valueOf(bigInteger.longValue()) : bigInteger;
            }
            if (strValueOf.equalsIgnoreCase("l")) {
                return Long.valueOf(strSubstring);
            }
            if (strValueOf.equalsIgnoreCase("bi")) {
                return new BigInteger(strSubstring);
            }
            if (strValueOf.equalsIgnoreCase("bd")) {
                return new BigDecimal(strSubstring);
            }
            if (strValueOf.equalsIgnoreCase("d")) {
                return Double.valueOf(strSubstring);
            }
            if (strValueOf.equalsIgnoreCase("f")) {
                return Float.valueOf(strSubstring);
            }
            throw new ol2("Unrecognized number type postfix: " + strValueOf);
        } catch (NumberFormatException e2) {
            throw new ol2("Malformed number: " + strSubstring, e2);
        }
    }
}
