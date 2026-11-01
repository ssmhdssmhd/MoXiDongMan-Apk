package android.support.v4;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.Cclass;
import org.jsoup.select.Elements;
import org.mozilla.javascript.ES6Iterator;

/* loaded from: classes3.dex */
public class dj2 implements Comparable<dj2> {

    /* renamed from: do, reason: not valid java name */
    private Object f1066do;

    /* renamed from: if, reason: not valid java name */
    private boolean f1068if = false;

    /* renamed from: for, reason: not valid java name */
    private boolean f1067for = false;

    public dj2(Object obj) {
        this.f1066do = obj;
    }

    /* renamed from: break, reason: not valid java name */
    public static dj2 m1362break(Object obj) {
        return new dj2(obj);
    }

    /* renamed from: case, reason: not valid java name */
    public Long m1363case() {
        Object obj = this.f1066do;
        if (obj instanceof String) {
            return Long.valueOf(new BigDecimal((String) this.f1066do).setScale(0, 4).longValue());
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        throw new hj2("cast to number fail. vale = " + this.f1066do);
    }

    /* renamed from: catch, reason: not valid java name */
    public dj2 m1364catch() {
        this.f1067for = true;
        this.f1066do = Cclass.E0(Cclass.E0(Cclass.H0(Cclass.H0(String.valueOf(this.f1066do), "'"), "\""), "'"), "\"");
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m1365class() {
        return this.f1068if;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m1366const() {
        return this.f1066do instanceof Boolean;
    }

    /* renamed from: do, reason: not valid java name */
    public Boolean m1367do() {
        Object obj = this.f1066do;
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        return Boolean.valueOf((obj == null || Cclass.z(m1368else())) ? false : true);
    }

    /* renamed from: else, reason: not valid java name */
    public String m1368else() {
        Object obj = this.f1066do;
        return obj instanceof List ? Cclass.J((List) obj, ",") : String.valueOf(obj).trim();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f1066do, ((dj2) obj).f1066do);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m1369final() {
        return this.f1066do instanceof Date;
    }

    /* renamed from: for, reason: not valid java name */
    public Double m1370for() {
        Object obj = this.f1066do;
        if (obj instanceof String) {
            return Double.valueOf(new BigDecimal((String) this.f1066do).doubleValue());
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        throw new hj2("cast to number fail. vale = " + this.f1066do);
    }

    /* renamed from: goto, reason: not valid java name */
    public dj2 m1371goto() {
        this.f1068if = true;
        return this;
    }

    public int hashCode() {
        return Objects.hashCode(this.f1066do);
    }

    /* renamed from: if, reason: not valid java name */
    public Date m1372if() {
        Object obj = this.f1066do;
        if (obj instanceof String) {
            try {
                return ax.f275for.parse((String) obj);
            } catch (ParseException unused) {
                throw new hj2("cast to date fail. vale = " + this.f1066do);
            }
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        throw new hj2("cast to date fail. vale = " + this.f1066do);
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m1373import() {
        return this.f1066do instanceof Number;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m1374native() {
        return this.f1066do instanceof String;
    }

    /* renamed from: new, reason: not valid java name */
    public Elements m1375new() {
        return (Elements) this.f1066do;
    }

    /* renamed from: public, reason: not valid java name */
    public Class m1376public() {
        Object obj = this.f1066do;
        return obj == null ? Object.class : obj.getClass();
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m1377super() {
        return this.f1066do instanceof Elements;
    }

    @Override // java.lang.Comparable
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public int compareTo(dj2 dj2Var) {
        if (equals(dj2Var)) {
            return 0;
        }
        if (dj2Var == null || dj2Var.f1066do == null) {
            return 1;
        }
        if (this.f1066do == null) {
            return -1;
        }
        if (m1374native()) {
            return m1368else().compareTo(dj2Var.m1368else());
        }
        if (m1373import()) {
            return m1370for().compareTo(dj2Var.m1370for());
        }
        throw new hj2("Unsupported comparable XValue = " + toString());
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m1379throw() {
        return this.f1067for;
    }

    public String toString() {
        return new t72(this).m7752final(ES6Iterator.VALUE_PROPERTY, this.f1066do).m7779while("isAttr", this.f1068if).m7779while("isExprStr", this.f1067for).toString();
    }

    /* renamed from: try, reason: not valid java name */
    public List<String> m1380try() {
        return (List) this.f1066do;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m1381while() {
        return this.f1066do instanceof List;
    }
}
