package freemarker.core;

import android.support.v4.ca2;

/* loaded from: classes.dex */
final class l extends b4 {

    /* renamed from: const, reason: not valid java name */
    public static final int f24003const = 0;

    /* renamed from: final, reason: not valid java name */
    public static final int f24004final = 1;

    /* renamed from: class, reason: not valid java name */
    public h0 f24005class;

    public l(h0 h0Var, c4 c4Var) {
        this.f24005class = h0Var;
        p(c4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f24005class != null ? "#case" : "#default";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23776super;
        }
        if (i == 1) {
            return f3.f23784while;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) {
        return m27837finally();
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        if (this.f24005class != null) {
            sb.append(' ');
            sb.append(this.f24005class.mo27815for());
        }
        if (z) {
            sb.append(ca2.f702try);
            sb.append(m27841private());
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24005class;
        }
        if (i == 1) {
            return Integer.valueOf(this.f24005class != null ? 0 : 1);
        }
        throw new IndexOutOfBoundsException();
    }
}
