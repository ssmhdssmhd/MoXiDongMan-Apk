package android.support.v4;

/* loaded from: classes3.dex */
public class xy0 extends ty0 {

    /* renamed from: case, reason: not valid java name */
    private pe1 f8055case;

    /* renamed from: else, reason: not valid java name */
    private fd1 f8056else;

    /* renamed from: for, reason: not valid java name */
    private int f8057for;

    /* renamed from: goto, reason: not valid java name */
    private qe0 f8058goto;

    /* renamed from: new, reason: not valid java name */
    private int f8059new;

    /* renamed from: this, reason: not valid java name */
    private pe1[] f8060this;

    /* renamed from: try, reason: not valid java name */
    private se0 f8061try;

    public xy0(int i, int i2, se0 se0Var, pe1 pe1Var, fd1 fd1Var, String str) {
        this(i, i2, se0Var, pe1Var, uh0.m8451if(se0Var, pe1Var), fd1Var, str);
    }

    public xy0(int i, int i2, se0 se0Var, pe1 pe1Var, qe0 qe0Var, fd1 fd1Var, String str) {
        super(true, str);
        this.f8057for = i;
        this.f8059new = i2;
        this.f8061try = se0Var;
        this.f8055case = pe1Var;
        this.f8058goto = qe0Var;
        this.f8056else = fd1Var;
        this.f8060this = new re1(se0Var, pe1Var).m6951for();
    }

    /* renamed from: break, reason: not valid java name */
    public int m9619break() {
        return this.f8055case.m5983final();
    }

    /* renamed from: case, reason: not valid java name */
    public int m9620case() {
        return this.f8059new;
    }

    /* renamed from: else, reason: not valid java name */
    public int m9621else() {
        return this.f8057for;
    }

    /* renamed from: for, reason: not valid java name */
    public se0 m9622for() {
        return this.f8061try;
    }

    /* renamed from: goto, reason: not valid java name */
    public fd1 m9623goto() {
        return this.f8056else;
    }

    /* renamed from: new, reason: not valid java name */
    public pe1 m9624new() {
        return this.f8055case;
    }

    /* renamed from: this, reason: not valid java name */
    public pe1[] m9625this() {
        return this.f8060this;
    }

    /* renamed from: try, reason: not valid java name */
    public qe0 m9626try() {
        return this.f8058goto;
    }
}
