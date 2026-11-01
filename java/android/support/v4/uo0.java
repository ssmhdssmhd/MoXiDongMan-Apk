package android.support.v4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import net.minidev.json.Cdo;
import net.minidev.json.Cfor;
import net.minidev.json.Cif;
import net.minidev.json.Cnew;
import net.minidev.json.JSONAwareEx;
import net.minidev.json.writer.Ccase;
import org.jsoup.nodes.Attributes;

/* loaded from: classes3.dex */
public class uo0<T> {

    /* renamed from: break, reason: not valid java name */
    private static final Cfor f6953break = new Cfor(2);

    /* renamed from: case, reason: not valid java name */
    private boolean f6954case;

    /* renamed from: do, reason: not valid java name */
    private Ccase<? super T> f6955do;

    /* renamed from: else, reason: not valid java name */
    private String f6956else;

    /* renamed from: for, reason: not valid java name */
    private Stack<Object> f6957for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f6958goto;

    /* renamed from: if, reason: not valid java name */
    private T f6959if;

    /* renamed from: new, reason: not valid java name */
    private Stack<Object> f6960new;

    /* renamed from: this, reason: not valid java name */
    private Object f6961this;

    /* renamed from: try, reason: not valid java name */
    private Object f6962try;

    public uo0(Ccase<? super T> ccase) {
        this.f6957for = new Stack<>();
        this.f6960new = new Stack<>();
        this.f6954case = false;
        this.f6958goto = false;
        this.f6961this = null;
        this.f6955do = ccase;
    }

    /* renamed from: do, reason: not valid java name */
    private List<Object> m8522do(Object obj) {
        return (List) obj;
    }

    /* renamed from: implements, reason: not valid java name */
    public static uo0<Cdo> m8523implements() {
        uo0<Cdo> uo0Var = new uo0<>((Ccase<? super Cdo>) Cnew.f28214for.m31740do(Cdo.class));
        uo0Var.m8542for();
        return uo0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: import, reason: not valid java name */
    private uo0<?> m8524import(String str, Object obj) {
        this.f6954case = true;
        StringBuilder sb = new StringBuilder();
        sb.append("Error: ");
        sb.append(str);
        sb.append(" at ");
        sb.append(m8537default());
        if (obj != null) {
            if (obj instanceof Integer) {
                sb.append('[');
                sb.append(obj);
                sb.append(']');
            } else {
                sb.append(Attributes.InternalPrefix);
                sb.append(obj);
            }
        }
        this.f6956else = sb.toString();
        return this;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static uo0<Cif> m8525instanceof() {
        uo0<Cif> uo0Var = new uo0<>((Ccase<? super Cif>) Cnew.f28214for.m31740do(Cif.class));
        uo0Var.a();
        return uo0Var;
    }

    private void l() {
        Object objPeek = this.f6957for.peek();
        if (m8526protected(objPeek)) {
            m8527synchronized(objPeek).put((String) this.f6961this, this.f6962try);
            return;
        }
        if (m8529volatile(objPeek)) {
            int iIntValue = ((Number) this.f6961this).intValue();
            List<Object> listM8522do = m8522do(objPeek);
            while (listM8522do.size() <= iIntValue) {
                listM8522do.add(null);
            }
            listM8522do.set(iIntValue, this.f6962try);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private boolean m8526protected(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj instanceof Map;
    }

    /* renamed from: synchronized, reason: not valid java name */
    private Map<String, Object> m8527synchronized(Object obj) {
        return (Map) obj;
    }

    /* renamed from: transient, reason: not valid java name */
    public static uo0<JSONAwareEx> m8528transient() {
        return new uo0<>(Cnew.f28214for.f28354for);
    }

    /* renamed from: volatile, reason: not valid java name */
    private boolean m8529volatile(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj instanceof List;
    }

    public uo0<T> a() {
        if (this.f6954case) {
            return this;
        }
        if (this.f6962try == null && this.f6958goto) {
            m8524import("Can not create Object child in readonly", null);
        }
        if (this.f6962try == null) {
            this.f6962try = this.f6955do.createObject();
        } else {
            if (m8545interface()) {
                return this;
            }
            if (m8553strictfp()) {
                m8524import("can not use Object feature on Array.", null);
            }
            m8524import("Can not use current possition as Object", null);
        }
        if (this.f6959if == null) {
            this.f6959if = (T) this.f6962try;
        } else {
            l();
        }
        return this;
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m8530abstract() {
        return this.f6954case;
    }

    public uo0<T> b() {
        this.f6962try = this.f6959if;
        this.f6957for.clear();
        this.f6960new.clear();
        this.f6954case = false;
        this.f6961this = null;
        this.f6956else = null;
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public int m8531break() {
        Object obj = this.f6962try;
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return 0;
    }

    public uo0<T> c(Boolean bool) {
        if (this.f6954case) {
            return this;
        }
        this.f6962try = bool;
        l();
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public double m8532case() {
        Object obj = this.f6962try;
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        return Double.NaN;
    }

    /* renamed from: catch, reason: not valid java name */
    public Integer m8533catch() {
        Object obj = this.f6962try;
        if (obj != null && (obj instanceof Number)) {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            if (obj instanceof Long) {
                Long l = (Long) obj;
                if (l.longValue() == l.intValue()) {
                    return Integer.valueOf(l.intValue());
                }
            }
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public long m8534class() {
        Object obj = this.f6962try;
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        return 0L;
    }

    /* renamed from: const, reason: not valid java name */
    public Long m8535const() {
        Object obj = this.f6962try;
        if (obj != null && (obj instanceof Number)) {
            if (obj instanceof Long) {
                return (Long) obj;
            }
            if (obj instanceof Integer) {
                return Long.valueOf(((Number) obj).longValue());
            }
        }
        return null;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m8536continue(String str) {
        if (m8545interface()) {
            return m8527synchronized(this.f6962try).containsKey(str);
        }
        return false;
    }

    public uo0<T> d(Number number) {
        if (this.f6954case) {
            return this;
        }
        this.f6962try = number;
        l();
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public String m8537default() {
        StringBuilder sb = new StringBuilder();
        Iterator<Object> it = this.f6960new.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof String) {
                sb.append(Attributes.InternalPrefix);
                sb.append(next.toString());
            } else {
                sb.append('[');
                sb.append(next.toString());
                sb.append(']');
            }
        }
        return sb.toString();
    }

    public uo0<T> e(String str) {
        if (this.f6954case) {
            return this;
        }
        this.f6962try = str;
        l();
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Double m8538else() {
        Object obj = this.f6962try;
        if (obj == null) {
            return null;
        }
        return obj instanceof Number ? obj instanceof Double ? (Double) obj : Double.valueOf(((Number) obj).doubleValue()) : Double.valueOf(Double.NaN);
    }

    /* renamed from: extends, reason: not valid java name */
    public Collection<String> m8539extends() {
        Object obj = this.f6962try;
        if (obj instanceof Map) {
            return ((Map) obj).keySet();
        }
        return null;
    }

    public uo0<T> f(String str, double d) {
        return j(str, Double.valueOf(d));
    }

    /* renamed from: final, reason: not valid java name */
    public String m8540final() {
        Object obj = this.f6962try;
        if (obj == null) {
            return null;
        }
        return obj instanceof String ? (String) obj : obj.toString();
    }

    /* renamed from: finally, reason: not valid java name */
    public T m8541finally() {
        return this.f6959if;
    }

    /* renamed from: for, reason: not valid java name */
    public uo0<T> m8542for() {
        if (this.f6954case) {
            return this;
        }
        if (this.f6962try == null && this.f6958goto) {
            m8524import("Can not create Array child in readonly", null);
        }
        if (this.f6962try == null) {
            this.f6962try = this.f6955do.createArray();
        } else {
            if (m8553strictfp()) {
                return this;
            }
            if (m8545interface()) {
                m8524import("can not use Object feature on Array.", null);
            }
            m8524import("Can not use current possition as Object", null);
        }
        if (this.f6959if == null) {
            this.f6959if = (T) this.f6962try;
        } else {
            l();
        }
        return this;
    }

    public uo0<T> g(String str, float f) {
        return j(str, Float.valueOf(f));
    }

    /* renamed from: goto, reason: not valid java name */
    public double m8543goto() {
        if (this.f6962try instanceof Number) {
            return ((Number) r0).floatValue();
        }
        return Double.NaN;
    }

    public uo0<T> h(String str, int i) {
        return j(str, Integer.valueOf(i));
    }

    public uo0<T> i(String str, long j) {
        return j(str, Long.valueOf(j));
    }

    /* renamed from: if, reason: not valid java name */
    public uo0<T> m8544if(Object... objArr) {
        m8542for();
        if (this.f6954case) {
            return this;
        }
        List<Object> listM8522do = m8522do(this.f6962try);
        for (Object obj : objArr) {
            listM8522do.add(obj);
        }
        return this;
    }

    /* renamed from: interface, reason: not valid java name */
    public boolean m8545interface() {
        return m8526protected(this.f6962try);
    }

    public uo0<T> j(String str, Number number) {
        a();
        if (this.f6954case) {
            return this;
        }
        m8527synchronized(this.f6962try).put(str, number);
        return this;
    }

    public uo0<T> k(String str, String str2) {
        a();
        if (this.f6954case) {
            return this;
        }
        m8527synchronized(this.f6962try).put(str, str2);
        return this;
    }

    public String m(Cfor cfor) {
        return this.f6954case ? Cnew.m31612instanceof(this.f6956else, cfor) : Cnew.m31612instanceof(this.f6959if, cfor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public uo0<?> n() {
        if (this.f6957for.size() > 0) {
            this.f6962try = this.f6957for.pop();
            this.f6960new.pop();
        }
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Object m8546native(int i) {
        if (this.f6954case) {
            return this;
        }
        if (!m8553strictfp()) {
            m8542for();
        }
        Object obj = this.f6962try;
        return !(obj instanceof List) ? m8524import("current node is not an List", Integer.valueOf(i)) : m8522do(obj).get(i);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m8547new() {
        Object obj = this.f6962try;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public uo0<?> o(int i) {
        while (true) {
            int i2 = i - 1;
            if (i <= 0 || this.f6957for.size() <= 0) {
                break;
            }
            this.f6962try = this.f6957for.pop();
            this.f6960new.pop();
            i = i2;
        }
        return this;
    }

    /* renamed from: package, reason: not valid java name */
    public int m8548package() {
        if (this.f6962try == null) {
            return 0;
        }
        if (m8553strictfp()) {
            return ((List) this.f6962try).size();
        }
        if (m8545interface()) {
            return ((Map) this.f6962try).size();
        }
        return 1;
    }

    /* renamed from: private, reason: not valid java name */
    public String m8549private(String str) {
        if (!m8536continue(str)) {
            return null;
        }
        m8557throw(str);
        String strM8540final = m8540final();
        n();
        return strM8540final;
    }

    /* renamed from: public, reason: not valid java name */
    public Object m8550public(String str) {
        if (this.f6954case) {
            return this;
        }
        if (!m8545interface()) {
            a();
        }
        Object obj = this.f6962try;
        return !(obj instanceof Map) ? m8524import("current node is not an Object", str) : m8527synchronized(obj).get(str);
    }

    /* renamed from: return, reason: not valid java name */
    public Object m8551return() {
        return this.f6962try;
    }

    /* renamed from: static, reason: not valid java name */
    public double m8552static(String str) {
        if (!m8536continue(str)) {
            return 0.0d;
        }
        m8557throw(str);
        double dM8532case = m8532case();
        n();
        return dM8532case;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public boolean m8553strictfp() {
        return m8529volatile(this.f6962try);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: super, reason: not valid java name */
    public uo0<?> m8554super(int i) {
        if (this.f6954case) {
            return this;
        }
        Object obj = this.f6962try;
        if (!(obj instanceof List)) {
            return m8524import("current node is not an Array", Integer.valueOf(i));
        }
        List list = (List) obj;
        if (i < 0 && (i = i + list.size()) < 0) {
            i = 0;
        }
        if (i < list.size()) {
            Object obj2 = list.get(i);
            this.f6957for.add(this.f6962try);
            this.f6960new.add(Integer.valueOf(i));
            this.f6962try = obj2;
            return this;
        }
        if (this.f6958goto) {
            return m8524import("Out of bound exception for index", Integer.valueOf(i));
        }
        this.f6957for.add(this.f6962try);
        this.f6960new.add(Integer.valueOf(i));
        this.f6962try = null;
        this.f6961this = Integer.valueOf(i);
        return this;
    }

    /* renamed from: switch, reason: not valid java name */
    public int m8555switch(String str) {
        if (!m8536continue(str)) {
            return 0;
        }
        m8557throw(str);
        int iM8531break = m8531break();
        n();
        return iM8531break;
    }

    /* renamed from: this, reason: not valid java name */
    public Float m8556this() {
        Object obj = this.f6962try;
        if (obj == null) {
            return null;
        }
        return obj instanceof Number ? obj instanceof Float ? (Float) obj : Float.valueOf(((Number) obj).floatValue()) : Float.valueOf(Float.NaN);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: throw, reason: not valid java name */
    public uo0<?> m8557throw(String str) {
        if (this.f6954case) {
            return this;
        }
        if (!m8545interface()) {
            a();
        }
        Object obj = this.f6962try;
        if (!(obj instanceof Map)) {
            return m8524import("current node is not an Object", str);
        }
        if (m8527synchronized(obj).containsKey(str)) {
            Object obj2 = m8527synchronized(this.f6962try).get(str);
            this.f6957for.add(this.f6962try);
            this.f6960new.add(str);
            this.f6962try = obj2;
            return this;
        }
        if (this.f6958goto) {
            return m8524import("current Object have no key named " + str, str);
        }
        this.f6957for.add(this.f6962try);
        this.f6960new.add(str);
        this.f6962try = null;
        this.f6961this = str;
        return this;
    }

    /* renamed from: throws, reason: not valid java name */
    public Integer m8558throws(String str) {
        if (!m8536continue(str)) {
            return null;
        }
        m8557throw(str);
        Integer numM8533catch = m8533catch();
        n();
        return numM8533catch;
    }

    public String toString() {
        return this.f6954case ? Cnew.m31612instanceof(this.f6956else, f6953break) : Cnew.m31610implements(this.f6959if);
    }

    /* renamed from: try, reason: not valid java name */
    public Boolean m8559try() {
        Object obj = this.f6962try;
        if (obj != null && (obj instanceof Boolean)) {
            return (Boolean) obj;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: while, reason: not valid java name */
    public uo0<?> m8560while() {
        if (this.f6954case) {
            return this;
        }
        Object obj = this.f6962try;
        return !(obj instanceof List) ? m8524import("current node is not an Array", null) : m8554super(((List) obj).size());
    }

    public uo0(String str) {
        this.f6957for = new Stack<>();
        this.f6960new = new Stack<>();
        this.f6954case = false;
        this.f6958goto = false;
        this.f6961this = null;
        T t = (T) Cnew.m31611import(str);
        this.f6959if = t;
        this.f6962try = t;
        this.f6958goto = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public uo0(String str, Ccase<T> ccase) {
        this.f6957for = new Stack<>();
        this.f6960new = new Stack<>();
        this.f6954case = false;
        this.f6958goto = false;
        this.f6961this = null;
        T t = (T) Cnew.m31620return(str, ccase);
        this.f6959if = t;
        this.f6955do = ccase;
        this.f6962try = t;
        this.f6958goto = true;
    }

    public uo0(String str, Class<T> cls) {
        this.f6957for = new Stack<>();
        this.f6960new = new Stack<>();
        this.f6954case = false;
        this.f6958goto = false;
        this.f6961this = null;
        this.f6959if = (T) Cnew.m31614native(str, cls);
        this.f6955do = Cnew.f28214for.m31740do(cls);
        this.f6962try = this.f6959if;
        this.f6958goto = true;
    }
}
