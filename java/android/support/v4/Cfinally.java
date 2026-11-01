package android.support.v4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.antlr.v4.runtime.atn.Ccatch;

/* renamed from: android.support.v4.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfinally {

    /* renamed from: break, reason: not valid java name */
    public static final int f1835break = 2;

    /* renamed from: catch, reason: not valid java name */
    public static final int f1836catch = 3;

    /* renamed from: class, reason: not valid java name */
    public static final int f1837class = 4;

    /* renamed from: const, reason: not valid java name */
    public static final int f1838const = 5;

    /* renamed from: else, reason: not valid java name */
    public static final int f1839else = 4;

    /* renamed from: final, reason: not valid java name */
    public static final int f1840final = 6;

    /* renamed from: goto, reason: not valid java name */
    public static final int f1841goto = 0;

    /* renamed from: import, reason: not valid java name */
    public static final int f1842import = 10;

    /* renamed from: native, reason: not valid java name */
    public static final int f1843native = 11;

    /* renamed from: public, reason: not valid java name */
    public static final int f1844public = 12;

    /* renamed from: return, reason: not valid java name */
    public static final List<String> f1845return = Collections.unmodifiableList(Arrays.asList("INVALID", "BASIC", "RULE_START", "BLOCK_START", "PLUS_BLOCK_START", "STAR_BLOCK_START", "TOKEN_START", "RULE_STOP", "BLOCK_END", "STAR_LOOP_BACK", "STAR_LOOP_ENTRY", "PLUS_LOOP_BACK", "LOOP_END"));

    /* renamed from: static, reason: not valid java name */
    public static final int f1846static = -1;

    /* renamed from: super, reason: not valid java name */
    public static final int f1847super = 7;

    /* renamed from: this, reason: not valid java name */
    public static final int f1848this = 1;

    /* renamed from: throw, reason: not valid java name */
    public static final int f1849throw = 8;

    /* renamed from: while, reason: not valid java name */
    public static final int f1850while = 9;

    /* renamed from: case, reason: not valid java name */
    public sn0 f1851case;

    /* renamed from: for, reason: not valid java name */
    public int f1853for;

    /* renamed from: do, reason: not valid java name */
    public Cstatic f1852do = null;

    /* renamed from: if, reason: not valid java name */
    public int f1854if = -1;

    /* renamed from: new, reason: not valid java name */
    public boolean f1855new = false;

    /* renamed from: try, reason: not valid java name */
    public final List<Ccatch> f1856try = new ArrayList(4);

    /* renamed from: break, reason: not valid java name */
    public void m2304break(int i, Ccatch ccatch) {
        this.f1856try.set(i, ccatch);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m2305case() {
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccatch m2306catch(int i) {
        return this.f1856try.get(i);
    }

    /* renamed from: do, reason: not valid java name */
    public void m2307do(int i, Ccatch ccatch) {
        boolean z = true;
        if (this.f1856try.isEmpty()) {
            this.f1855new = ccatch.mo311if();
        } else if (this.f1855new != ccatch.mo311if()) {
            System.err.format(Locale.getDefault(), "ATN state %d has both epsilon and non-epsilon transitions.\n", Integer.valueOf(this.f1854if));
            this.f1855new = false;
        }
        Iterator<Ccatch> it = this.f1856try.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Ccatch next = it.next();
            if (next.f28465do.f1854if == ccatch.f28465do.f1854if && ((next.mo2573for() != null && ccatch.mo2573for() != null && next.mo2573for().equals(ccatch.mo2573for())) || (next.mo311if() && ccatch.mo311if()))) {
                break;
            }
        }
        if (z) {
            return;
        }
        this.f1856try.add(i, ccatch);
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m2308else() {
        return this.f1855new;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Cfinally) && this.f1854if == ((Cfinally) obj).f1854if;
    }

    /* renamed from: for, reason: not valid java name */
    public int m2309for() {
        return this.f1856try.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccatch m2310goto(int i) {
        return this.f1856try.remove(i);
    }

    public int hashCode() {
        return this.f1854if;
    }

    /* renamed from: if, reason: not valid java name */
    public void m2311if(Ccatch ccatch) {
        m2307do(this.f1856try.size(), ccatch);
    }

    /* renamed from: new */
    public abstract int mo822new();

    /* renamed from: this, reason: not valid java name */
    public void m2312this(int i) {
        this.f1853for = i;
    }

    public String toString() {
        return String.valueOf(this.f1854if);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch[] m2313try() {
        List<Ccatch> list = this.f1856try;
        return (Ccatch[]) list.toArray(new Ccatch[list.size()]);
    }
}
