package freemarker.core;

import android.support.v4.vm;

/* loaded from: classes.dex */
class c4 {

    /* renamed from: for, reason: not valid java name */
    public static final c4 f23539for = new c4(null, 0);

    /* renamed from: do, reason: not valid java name */
    private final b4[] f23540do;

    /* renamed from: if, reason: not valid java name */
    private final int f23541if;

    public c4(b4[] b4VarArr, int i) {
        this.f23540do = b4VarArr;
        this.f23541if = i;
    }

    /* renamed from: case, reason: not valid java name */
    public b4 m27885case() {
        b4[] b4VarArr = this.f23540do;
        if (b4VarArr != null) {
            return b4VarArr[this.f23541if - 1];
        }
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    public c2 m27886do() {
        c2 c2Var = new c2();
        if (this.f23541if != 0) {
            b4 b4Var = this.f23540do[0];
            c2Var.p(this);
            c2Var.m28068final(b4Var.getTemplate(), b4Var, m27885case());
        }
        return c2Var;
    }

    /* renamed from: for, reason: not valid java name */
    public b4[] m27887for() {
        return this.f23540do;
    }

    /* renamed from: if, reason: not valid java name */
    public b4 m27888if() {
        int i = this.f23541if;
        if (i == 0) {
            return new k4(vm.f7295for, false);
        }
        b4 b4Var = this.f23540do[0];
        if (i == 1) {
            return b4Var;
        }
        c2 c2Var = new c2();
        c2Var.p(this);
        c2Var.m28068final(b4Var.getTemplate(), b4Var, m27885case());
        return c2Var;
    }

    /* renamed from: new, reason: not valid java name */
    public int m27889new() {
        return this.f23541if;
    }

    /* renamed from: try, reason: not valid java name */
    public b4 m27890try() {
        b4[] b4VarArr = this.f23540do;
        if (b4VarArr != null) {
            return b4VarArr[0];
        }
        return null;
    }
}
