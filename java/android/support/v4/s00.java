package android.support.v4;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.builder.Ccase;

/* loaded from: classes3.dex */
public class s00 implements Iterable<r00<?>> {

    /* renamed from: case, reason: not valid java name */
    private static final String f5981case = "differs from";

    /* renamed from: try, reason: not valid java name */
    public static final String f5982try = "";

    /* renamed from: do, reason: not valid java name */
    private final List<r00<?>> f5983do;

    /* renamed from: for, reason: not valid java name */
    private final Object f5984for;

    /* renamed from: if, reason: not valid java name */
    private final Object f5985if;

    /* renamed from: new, reason: not valid java name */
    private final Ccase f5986new;

    public s00(Object obj, Object obj2, List<r00<?>> list, Ccase ccase) {
        if (obj == null) {
            throw new IllegalArgumentException("Left hand object cannot be null");
        }
        if (obj2 == null) {
            throw new IllegalArgumentException("Right hand object cannot be null");
        }
        if (list == null) {
            throw new IllegalArgumentException("List of differences cannot be null");
        }
        this.f5983do = list;
        this.f5985if = obj;
        this.f5984for = obj2;
        if (ccase == null) {
            this.f5986new = Ccase.DEFAULT_STYLE;
        } else {
            this.f5986new = ccase;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public List<r00<?>> m7216do() {
        return Collections.unmodifiableList(this.f5983do);
    }

    /* renamed from: for, reason: not valid java name */
    public Ccase m7217for() {
        return this.f5986new;
    }

    /* renamed from: if, reason: not valid java name */
    public int m7218if() {
        return this.f5983do.size();
    }

    @Override // java.lang.Iterable
    public Iterator<r00<?>> iterator() {
        return this.f5983do.iterator();
    }

    /* renamed from: new, reason: not valid java name */
    public String m7219new(Ccase ccase) {
        if (this.f5983do.size() == 0) {
            return "";
        }
        t72 t72Var = new t72(this.f5985if, ccase);
        t72 t72Var2 = new t72(this.f5984for, ccase);
        for (r00<?> r00Var : this.f5983do) {
            t72Var.m7752final(r00Var.getFieldName(), r00Var.getLeft());
            t72Var2.m7752final(r00Var.getFieldName(), r00Var.getRight());
        }
        return String.format("%s %s %s", t72Var.build(), f5981case, t72Var2.build());
    }

    public String toString() {
        return m7219new(this.f5986new);
    }
}
