package android.support.v4;

import org.apache.commons.lang3.Ctry;
import org.objectweb.asm.Opcodes;

/* loaded from: classes3.dex */
public class iy1 extends hy1 {

    /* renamed from: case, reason: not valid java name */
    private boolean f2935case;

    /* renamed from: else, reason: not valid java name */
    private boolean f2936else;

    /* renamed from: goto, reason: not valid java name */
    private int f2937goto;

    /* renamed from: try, reason: not valid java name */
    private final StringBuffer f2938try;

    public iy1() {
        super(Opcodes.ASM5);
        this.f2938try = new StringBuffer();
    }

    /* renamed from: import, reason: not valid java name */
    private void m3634import() {
        if (this.f2937goto % 2 != 0) {
            this.f2938try.append(ca2.f702try);
        }
        this.f2937goto /= 2;
    }

    /* renamed from: while, reason: not valid java name */
    private void m3635while() {
        if (this.f2935case) {
            this.f2935case = false;
            this.f2938try.append(ca2.f702try);
        }
    }

    @Override // android.support.v4.hy1
    /* renamed from: break */
    public hy1 mo3156break() {
        this.f2938try.append(':');
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: case */
    public hy1 mo3157case() {
        this.f2938try.append('^');
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: catch */
    public hy1 mo3158catch() {
        m3635while();
        if (!this.f2936else) {
            this.f2936else = true;
            this.f2938try.append('(');
        }
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: class */
    public hy1 mo3159class() {
        m3635while();
        if (!this.f2936else) {
            this.f2938try.append('(');
        }
        this.f2938try.append(')');
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: const */
    public hy1 mo3160const() {
        m3635while();
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: do */
    public hy1 mo3161do() {
        this.f2938try.append('[');
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: else */
    public void mo3162else(String str) {
        if (!this.f2935case) {
            this.f2935case = true;
            this.f2938try.append(ca2.f687new);
        }
        this.f2938try.append(str);
        this.f2938try.append(':');
    }

    @Override // android.support.v4.hy1
    /* renamed from: final */
    public hy1 mo3163final(char c) {
        int i = this.f2937goto;
        if (i % 2 == 0) {
            this.f2937goto = i + 1;
            this.f2938try.append(ca2.f687new);
        }
        if (c != '=') {
            this.f2938try.append(c);
        }
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: for */
    public hy1 mo3164for() {
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: goto */
    public void mo3165goto(String str) {
        m3634import();
        this.f2938try.append(Ctry.f28883do);
        this.f2938try.append(str);
        this.f2937goto *= 2;
    }

    @Override // android.support.v4.hy1
    /* renamed from: if */
    public void mo3166if(char c) {
        this.f2938try.append(c);
    }

    @Override // android.support.v4.hy1
    /* renamed from: new */
    public void mo3167new(String str) {
        this.f2938try.append(ay0.f288try);
        this.f2938try.append(str);
        this.f2937goto *= 2;
    }

    @Override // android.support.v4.hy1
    /* renamed from: super */
    public void mo3168super() {
        int i = this.f2937goto;
        if (i % 2 == 0) {
            this.f2937goto = i + 1;
            this.f2938try.append(ca2.f687new);
        }
        this.f2938try.append('*');
    }

    @Override // android.support.v4.hy1
    /* renamed from: this */
    public hy1 mo3169this() {
        return this;
    }

    @Override // android.support.v4.hy1
    /* renamed from: throw */
    public void mo3170throw(String str) {
        this.f2938try.append('T');
        this.f2938try.append(str);
        this.f2938try.append(';');
    }

    public String toString() {
        return this.f2938try.toString();
    }

    @Override // android.support.v4.hy1
    /* renamed from: try */
    public void mo3171try() {
        m3634import();
        this.f2938try.append(';');
    }
}
