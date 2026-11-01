package android.support.v4;

import org.objectweb.asm.Cbreak;

/* loaded from: classes3.dex */
public abstract class xz0 {

    /* renamed from: do, reason: not valid java name */
    public final int f8064do;

    /* renamed from: if, reason: not valid java name */
    public xz0 f8065if;

    public xz0(int i) {
        this(i, null);
    }

    public xz0(int i, xz0 xz0Var) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.f8064do = i;
        this.f8065if = xz0Var;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void mo9627abstract(int i, String str) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9627abstract(i, str);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public d2 mo9628break(int i, p92 p92Var, String str, boolean z) {
        if (this.f8064do < 327680) {
            throw new RuntimeException();
        }
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9628break(i, p92Var, str, z);
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public void mo9629case(int i, String str, String str2, String str3) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9629case(i, str, str2, str3);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void mo9630catch(int i, int i2) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9630catch(i, i2);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void mo9631class(String str, String str2, ti0 ti0Var, Object... objArr) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9631class(str, str2, ti0Var, objArr);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void mo9632const(int i, Cbreak cbreak) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9632const(i, cbreak);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public void mo9633continue(int i, int i2) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9633continue(i, i2);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public d2 mo9634default(int i, String str, boolean z) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9634default(i, str, z);
        }
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    public d2 mo9635do(String str, boolean z) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9635do(str, z);
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public void mo9636else(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9636else(i, i2, objArr, i3, objArr2);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void mo9637extends(int i, int i2, Cbreak cbreak, Cbreak... cbreakArr) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9637extends(i, i2, cbreak, cbreakArr);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void mo9638final(Cbreak cbreak) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9638final(cbreak);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public d2 mo9639finally(int i, p92 p92Var, String str, boolean z) {
        if (this.f8064do < 327680) {
            throw new RuntimeException();
        }
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9639finally(i, p92Var, str, z);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public void mo9640for(o4 o4Var) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9640for(o4Var);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void mo9641goto(int i, int i2) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9641goto(i, i2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public d2 mo9642if() {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9642if();
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    public d2 mo9643import(int i, p92 p92Var, Cbreak[] cbreakArr, Cbreak[] cbreakArr2, int[] iArr, String str, boolean z) {
        if (this.f8064do < 327680) {
            throw new RuntimeException();
        }
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9643import(i, p92Var, cbreakArr, cbreakArr2, iArr, str, z);
        }
        return null;
    }

    /* renamed from: native, reason: not valid java name */
    public void mo9644native(Cbreak cbreak, int[] iArr, Cbreak[] cbreakArr) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9644native(cbreak, iArr, cbreakArr);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void mo9645new() {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9645new();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void mo9646package(Cbreak cbreak, Cbreak cbreak2, Cbreak cbreak3, String str) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9646package(cbreak, cbreak2, cbreak3, str);
        }
    }

    /* renamed from: private, reason: not valid java name */
    public d2 mo9647private(int i, p92 p92Var, String str, boolean z) {
        if (this.f8064do < 327680) {
            throw new RuntimeException();
        }
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            return xz0Var.mo9647private(i, p92Var, str, z);
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public void mo9648public(int i, int i2) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9648public(i, i2);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m9649return(int i, String str, String str2, String str3) {
        if (this.f8064do >= 327680) {
            mo9650static(i, str, str2, str3, i == 185);
            return;
        }
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.m9649return(i, str, str2, str3);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void mo9650static(int i, String str, String str2, String str3, boolean z) {
        if (this.f8064do < 327680) {
            if (z != (i == 185)) {
                throw new IllegalArgumentException("INVOKESPECIAL/STATIC on interfaces require ASM 5");
            }
            m9649return(i, str, str2, str3);
        } else {
            xz0 xz0Var = this.f8065if;
            if (xz0Var != null) {
                xz0Var.mo9650static(i, str, str2, str3, z);
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void mo9651super(Object obj) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9651super(obj);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void mo9652switch(String str, int i) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9652switch(str, i);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void mo9653this(int i) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9653this(i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void mo9654throw(int i, Cbreak cbreak) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9654throw(i, cbreak);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void mo9655throws(String str, int i) {
        if (this.f8064do < 327680) {
            throw new RuntimeException();
        }
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9655throws(str, i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void mo9656try() {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9656try();
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void mo9657while(String str, String str2, String str3, Cbreak cbreak, Cbreak cbreak2, int i) {
        xz0 xz0Var = this.f8065if;
        if (xz0Var != null) {
            xz0Var.mo9657while(str, str2, str3, cbreak, cbreak2, i);
        }
    }
}
