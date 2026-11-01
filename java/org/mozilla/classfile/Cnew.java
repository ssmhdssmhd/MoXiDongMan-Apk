package org.mozilla.classfile;

/* renamed from: org.mozilla.classfile.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew {

    /* renamed from: case, reason: not valid java name */
    private int f33890case;

    /* renamed from: do, reason: not valid java name */
    private int f33891do;

    /* renamed from: for, reason: not valid java name */
    private long f33892for;

    /* renamed from: if, reason: not valid java name */
    private int f33893if;

    /* renamed from: new, reason: not valid java name */
    private String f33894new;

    /* renamed from: try, reason: not valid java name */
    private String f33895try;

    public Cnew(int i, int i2, String str, String str2) {
        this.f33891do = i;
        this.f33893if = i2;
        this.f33894new = str;
        this.f33895try = str2;
        this.f33890case = i ^ (i2 + (str.hashCode() * str2.hashCode()));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        int i = this.f33891do;
        if (i != cnew.f33891do) {
            return false;
        }
        if (i == 3 || i == 4) {
            return this.f33893if == cnew.f33893if;
        }
        if (i == 5 || i == 6) {
            return this.f33892for == cnew.f33892for;
        }
        if (i == 12) {
            return this.f33894new.equals(cnew.f33894new) && this.f33895try.equals(cnew.f33895try);
        }
        if (i == 18) {
            return this.f33893if == cnew.f33893if && this.f33894new.equals(cnew.f33894new) && this.f33895try.equals(cnew.f33895try);
        }
        throw new RuntimeException("unsupported constant type");
    }

    public int hashCode() {
        return this.f33890case;
    }
}
