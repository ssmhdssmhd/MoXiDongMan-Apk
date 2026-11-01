package freemarker.core;

import freemarker.template.utility.Csuper;

@Deprecated
/* loaded from: classes.dex */
public final class o extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final String f24020class;

    public o(String str) {
        this.f24020class = str;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#--...--";
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
            return f3.f23754continue;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) {
        return null;
    }

    public String r() {
        return this.f24020class;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        if (!z) {
            return "comment " + Csuper.m29330synchronized(this.f24020class.trim());
        }
        return "<#--" + this.f24020class + "-->";
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24020class;
        }
        throw new IndexOutOfBoundsException();
    }
}
