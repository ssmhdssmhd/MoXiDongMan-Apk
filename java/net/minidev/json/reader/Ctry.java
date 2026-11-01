package net.minidev.json.reader;

import android.support.v4.ca2;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.minidev.json.JSONAware;
import net.minidev.json.JSONAwareEx;
import net.minidev.json.JSONStreamAware;
import net.minidev.json.JSONStreamAwareEx;

/* renamed from: net.minidev.json.reader.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private ConcurrentHashMap<Class<?>, JsonWriterI<?>> f28280do = new ConcurrentHashMap<>();

    /* renamed from: if, reason: not valid java name */
    private LinkedList<Cnative> f28281if = new LinkedList<>();

    /* renamed from: for, reason: not valid java name */
    public static final JsonWriterI<JSONStreamAwareEx> f28275for = new Cbreak();

    /* renamed from: new, reason: not valid java name */
    public static final JsonWriterI<JSONStreamAwareEx> f28277new = new Ccatch();

    /* renamed from: try, reason: not valid java name */
    public static final JsonWriterI<JSONAwareEx> f28279try = new Cclass();

    /* renamed from: case, reason: not valid java name */
    public static final JsonWriterI<JSONAware> f28270case = new Cconst();

    /* renamed from: else, reason: not valid java name */
    public static final JsonWriterI<Iterable<? extends Object>> f28274else = new Cfinal();

    /* renamed from: goto, reason: not valid java name */
    public static final JsonWriterI<Enum<?>> f28276goto = new Csuper();

    /* renamed from: this, reason: not valid java name */
    public static final JsonWriterI<Map<String, ? extends Object>> f28278this = new Cthrow();

    /* renamed from: break, reason: not valid java name */
    public static final JsonWriterI<Object> f28269break = new net.minidev.json.reader.Cfor();

    /* renamed from: catch, reason: not valid java name */
    public static final JsonWriterI<Object> f28271catch = new net.minidev.json.reader.Cif();

    /* renamed from: class, reason: not valid java name */
    public static final JsonWriterI<Object> f28272class = new net.minidev.json.reader.Cdo();

    /* renamed from: const, reason: not valid java name */
    public static final JsonWriterI<Object> f28273const = new Cwhile();

    /* renamed from: net.minidev.json.reader.try$break, reason: invalid class name */
    public class Cbreak implements JsonWriterI<JSONStreamAwareEx> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends JSONStreamAwareEx> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            e.writeJSONString(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$case, reason: invalid class name */
    public class Ccase implements JsonWriterI<long[]> {
        public Ccase() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(long[] jArr, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = false;
            for (long j : jArr) {
                if (z) {
                    cfor.m31579final(appendable);
                } else {
                    z = true;
                }
                appendable.append(Long.toString(j));
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$catch, reason: invalid class name */
    public class Ccatch implements JsonWriterI<JSONStreamAwareEx> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends JSONStreamAwareEx> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            e.writeJSONString(appendable, cfor);
        }
    }

    /* renamed from: net.minidev.json.reader.try$class, reason: invalid class name */
    public class Cclass implements JsonWriterI<JSONAwareEx> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends JSONAwareEx> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            appendable.append(e.toJSONString(cfor));
        }
    }

    /* renamed from: net.minidev.json.reader.try$const, reason: invalid class name */
    public class Cconst implements JsonWriterI<JSONAware> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends JSONAware> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            appendable.append(e.toJSONString());
        }
    }

    /* renamed from: net.minidev.json.reader.try$do, reason: invalid class name */
    public class Cdo implements JsonWriterI<Double> {
        public Cdo() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(Double d, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            if (d.isInfinite()) {
                appendable.append("null");
            } else {
                appendable.append(d.toString());
            }
        }
    }

    /* renamed from: net.minidev.json.reader.try$else, reason: invalid class name */
    public class Celse implements JsonWriterI<float[]> {
        public Celse() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(float[] fArr, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = false;
            for (float f : fArr) {
                if (z) {
                    cfor.m31579final(appendable);
                } else {
                    z = true;
                }
                appendable.append(Float.toString(f));
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$final, reason: invalid class name */
    public class Cfinal implements JsonWriterI<Iterable<? extends Object>> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends Iterable<? extends Object>> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = true;
            for (Object obj : e) {
                if (z) {
                    z = false;
                    cfor.m31590try(appendable);
                } else {
                    cfor.m31577do(appendable);
                }
                if (obj == null) {
                    appendable.append("null");
                } else {
                    net.minidev.json.Cnew.b(obj, appendable, cfor);
                }
                cfor.m31582if(appendable);
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$for, reason: invalid class name */
    public class Cfor implements JsonWriterI<Float> {
        public Cfor() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(Float f, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            if (f.isInfinite()) {
                appendable.append("null");
            } else {
                appendable.append(f.toString());
            }
        }
    }

    /* renamed from: net.minidev.json.reader.try$goto, reason: invalid class name */
    public class Cgoto implements JsonWriterI<double[]> {
        public Cgoto() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(double[] dArr, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = false;
            for (double d : dArr) {
                if (z) {
                    cfor.m31579final(appendable);
                } else {
                    z = true;
                }
                appendable.append(Double.toString(d));
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$if, reason: invalid class name */
    public class Cif implements JsonWriterI<Date> {
        public Cif() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(Date date, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            appendable.append(ca2.f674do);
            net.minidev.json.Cnew.m31596case(date.toString(), appendable, cfor);
            appendable.append(ca2.f674do);
        }
    }

    /* renamed from: net.minidev.json.reader.try$import, reason: invalid class name */
    public class Cimport implements JsonWriterI<String> {
        public Cimport() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(String str, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31586public(appendable, str);
        }
    }

    /* renamed from: net.minidev.json.reader.try$native, reason: invalid class name */
    public static class Cnative {

        /* renamed from: do, reason: not valid java name */
        public Class<?> f28289do;

        /* renamed from: if, reason: not valid java name */
        public JsonWriterI<?> f28290if;

        public Cnative(Class<?> cls, JsonWriterI<?> jsonWriterI) {
            this.f28289do = cls;
            this.f28290if = jsonWriterI;
        }
    }

    /* renamed from: net.minidev.json.reader.try$new, reason: invalid class name */
    public class Cnew implements JsonWriterI<int[]> {
        public Cnew() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(int[] iArr, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = false;
            for (int i : iArr) {
                if (z) {
                    cfor.m31579final(appendable);
                } else {
                    z = true;
                }
                appendable.append(Integer.toString(i));
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$super, reason: invalid class name */
    public class Csuper implements JsonWriterI<Enum<?>> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends Enum<?>> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31586public(appendable, e.name());
        }
    }

    /* renamed from: net.minidev.json.reader.try$this, reason: invalid class name */
    public class Cthis implements JsonWriterI<boolean[]> {
        public Cthis() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(boolean[] zArr, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = false;
            for (boolean z2 : zArr) {
                if (z) {
                    cfor.m31579final(appendable);
                } else {
                    z = true;
                }
                appendable.append(Boolean.toString(z2));
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$throw, reason: invalid class name */
    public class Cthrow implements JsonWriterI<Map<String, ? extends Object>> {
        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public <E extends Map<String, ? extends Object>> void writeJSONString(E e, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31587super(appendable);
            boolean z = true;
            for (Map.Entry entry : e.entrySet()) {
                Object value = entry.getValue();
                if (value != null || !cfor.m31578else()) {
                    if (z) {
                        cfor.m31576const(appendable);
                        z = false;
                    } else {
                        cfor.m31579final(appendable);
                    }
                    Ctry.m31685catch(entry.getKey().toString(), value, appendable, cfor);
                }
            }
            cfor.m31589throw(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$try, reason: invalid class name and collision with other inner class name */
    public class C0377try implements JsonWriterI<short[]> {
        public C0377try() {
        }

        @Override // net.minidev.json.reader.JsonWriterI
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void writeJSONString(short[] sArr, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            cfor.m31580for(appendable);
            boolean z = false;
            for (short s : sArr) {
                if (z) {
                    cfor.m31579final(appendable);
                } else {
                    z = true;
                }
                appendable.append(Short.toString(s));
            }
            cfor.m31585new(appendable);
        }
    }

    /* renamed from: net.minidev.json.reader.try$while, reason: invalid class name */
    public class Cwhile implements JsonWriterI<Object> {
        @Override // net.minidev.json.reader.JsonWriterI
        public void writeJSONString(Object obj, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
            appendable.append(obj.toString());
        }
    }

    public Ctry() {
        m31695try();
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m31685catch(String str, Object obj, Appendable appendable, net.minidev.json.Cfor cfor) throws IOException {
        if (str == null) {
            appendable.append("null");
        } else if (cfor.m31588this(str)) {
            appendable.append(ca2.f674do);
            net.minidev.json.Cnew.m31596case(str, appendable, cfor);
            appendable.append(ca2.f674do);
        } else {
            appendable.append(str);
        }
        cfor.m31575class(appendable);
        if (obj instanceof String) {
            cfor.m31586public(appendable, (String) obj);
        } else {
            net.minidev.json.Cnew.b(obj, appendable, cfor);
        }
        cfor.m31574catch(appendable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    public <T> void m31686break(Class<T> cls, String str, String str2) {
        Object objM31690for = m31690for(cls);
        if (!(objM31690for instanceof net.minidev.json.reader.Cnew)) {
            objM31690for = new net.minidev.json.reader.Cnew();
            m31687case(objM31690for, cls);
        }
        ((net.minidev.json.reader.Cnew) objM31690for).m31684if(str, str2);
    }

    /* renamed from: case, reason: not valid java name */
    public <T> void m31687case(JsonWriterI<T> jsonWriterI, Class<?>... clsArr) {
        for (Class<?> cls : clsArr) {
            this.f28280do.put(cls, jsonWriterI);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m31688do(Class<?> cls, JsonWriterI<?> jsonWriterI) {
        m31691goto(cls, jsonWriterI);
    }

    /* renamed from: else, reason: not valid java name */
    public void m31689else(Class<?> cls, JsonWriterI<?> jsonWriterI) {
        m31694this(cls, jsonWriterI);
    }

    /* renamed from: for, reason: not valid java name */
    public JsonWriterI m31690for(Class cls) {
        return this.f28280do.get(cls);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m31691goto(Class<?> cls, JsonWriterI<?> jsonWriterI) {
        this.f28281if.addFirst(new Cnative(cls, jsonWriterI));
    }

    /* renamed from: if, reason: not valid java name */
    public void m31692if(Class<?> cls, JsonWriterI<?> jsonWriterI) {
        m31694this(cls, jsonWriterI);
    }

    /* renamed from: new, reason: not valid java name */
    public JsonWriterI m31693new(Class<?> cls) {
        Iterator<Cnative> it = this.f28281if.iterator();
        while (it.hasNext()) {
            Cnative next = it.next();
            if (next.f28289do.isAssignableFrom(cls)) {
                return next.f28290if;
            }
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public void m31694this(Class<?> cls, JsonWriterI<?> jsonWriterI) {
        this.f28281if.addLast(new Cnative(cls, jsonWriterI));
    }

    /* renamed from: try, reason: not valid java name */
    public void m31695try() {
        m31687case(new Cimport(), String.class);
        m31687case(new Cdo(), Double.class);
        m31687case(new Cif(), Date.class);
        m31687case(new Cfor(), Float.class);
        JsonWriterI<?> jsonWriterI = f28273const;
        m31687case(jsonWriterI, Integer.class, Long.class, Byte.class, Short.class, BigInteger.class, BigDecimal.class);
        m31687case(jsonWriterI, Boolean.class);
        m31687case(new Cnew(), int[].class);
        m31687case(new C0377try(), short[].class);
        m31687case(new Ccase(), long[].class);
        m31687case(new Celse(), float[].class);
        m31687case(new Cgoto(), double[].class);
        m31687case(new Cthis(), boolean[].class);
        m31689else(JSONStreamAwareEx.class, f28277new);
        m31689else(JSONStreamAware.class, f28275for);
        m31689else(JSONAwareEx.class, f28279try);
        m31689else(JSONAware.class, f28270case);
        m31689else(Map.class, f28278this);
        m31689else(Iterable.class, f28274else);
        m31689else(Enum.class, f28276goto);
        m31689else(Number.class, jsonWriterI);
    }
}
