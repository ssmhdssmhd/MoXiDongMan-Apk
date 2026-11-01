package freemarker.core;

/* renamed from: freemarker.core.native, reason: invalid class name */
/* loaded from: classes.dex */
final class Cnative extends b4 {
    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#break";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 0;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) {
        throw Cpublic.BREAK_INSTANCE;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        if (!z) {
            return mo27813case();
        }
        return "<" + mo27813case() + "/>";
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
