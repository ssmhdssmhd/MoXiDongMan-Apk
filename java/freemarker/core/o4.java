package freemarker.core;

import android.support.v4.ca2;

/* loaded from: classes.dex */
final class o4 extends b4 {

    /* renamed from: final, reason: not valid java name */
    public static final int f24040final = 0;

    /* renamed from: super, reason: not valid java name */
    public static final int f24041super = 1;

    /* renamed from: throw, reason: not valid java name */
    public static final int f24042throw = 2;

    /* renamed from: while, reason: not valid java name */
    public static final int f24043while = 3;

    /* renamed from: class, reason: not valid java name */
    public final boolean f24044class;

    /* renamed from: const, reason: not valid java name */
    public final boolean f24045const;

    public o4(boolean z, boolean z2) {
        this.f24044class = z;
        this.f24045const = z2;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        boolean z = this.f24044class;
        return (z && this.f24045const) ? "#t" : z ? "#lt" : this.f24045const ? "#rt" : "#nt";
    }

    @Override // freemarker.core.b4
    public boolean d(boolean z) {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.b4
    public boolean g() {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23784while;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) {
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        if (z) {
            sb.append("/>");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i != 0) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = this.f24044class;
        return Integer.valueOf((z && this.f24045const) ? 0 : z ? 1 : this.f24045const ? 2 : 3);
    }
}
