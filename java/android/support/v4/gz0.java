package android.support.v4;

/* loaded from: classes3.dex */
public class gz0 extends dz0 {

    /* renamed from: break, reason: not valid java name */
    private fd1 f2271break;

    /* renamed from: case, reason: not valid java name */
    private se0 f2272case;

    /* renamed from: catch, reason: not valid java name */
    private qe0 f2273catch;

    /* renamed from: class, reason: not valid java name */
    private pe1[] f2274class;

    /* renamed from: else, reason: not valid java name */
    private pe1 f2275else;

    /* renamed from: for, reason: not valid java name */
    private String f2276for;

    /* renamed from: goto, reason: not valid java name */
    private qe0 f2277goto;

    /* renamed from: new, reason: not valid java name */
    private int f2278new;

    /* renamed from: this, reason: not valid java name */
    private fd1 f2279this;

    /* renamed from: try, reason: not valid java name */
    private int f2280try;

    public gz0(int i, int i2, se0 se0Var, pe1 pe1Var, fd1 fd1Var, fd1 fd1Var2, qe0 qe0Var) {
        super(true, null);
        this.f2280try = i2;
        this.f2278new = i;
        this.f2272case = se0Var;
        this.f2275else = pe1Var;
        this.f2277goto = qe0Var;
        this.f2279this = fd1Var;
        this.f2271break = fd1Var2;
        this.f2273catch = uh0.m8451if(se0Var, pe1Var);
        this.f2274class = new re1(se0Var, pe1Var).m6951for();
    }

    public gz0(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[][] bArr7) {
        super(true, null);
        this.f2278new = i;
        this.f2280try = i2;
        se0 se0Var = new se0(bArr);
        this.f2272case = se0Var;
        this.f2275else = new pe1(se0Var, bArr2);
        this.f2277goto = new qe0(bArr3);
        this.f2279this = new fd1(bArr4);
        this.f2271break = new fd1(bArr5);
        this.f2273catch = new qe0(bArr6);
        this.f2274class = new pe1[bArr7.length];
        for (int i3 = 0; i3 < bArr7.length; i3++) {
            this.f2274class[i3] = new pe1(this.f2272case, bArr7[i3]);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public pe1[] m2829break() {
        return this.f2274class;
    }

    /* renamed from: case, reason: not valid java name */
    public int m2830case() {
        return this.f2280try;
    }

    /* renamed from: catch, reason: not valid java name */
    public qe0 m2831catch() {
        return this.f2277goto;
    }

    /* renamed from: else, reason: not valid java name */
    public int m2832else() {
        return this.f2278new;
    }

    /* renamed from: for, reason: not valid java name */
    public se0 m2833for() {
        return this.f2272case;
    }

    /* renamed from: goto, reason: not valid java name */
    public fd1 m2834goto() {
        return this.f2279this;
    }

    /* renamed from: new, reason: not valid java name */
    public pe1 m2835new() {
        return this.f2275else;
    }

    /* renamed from: this, reason: not valid java name */
    public fd1 m2836this() {
        return this.f2271break;
    }

    /* renamed from: try, reason: not valid java name */
    public qe0 m2837try() {
        return this.f2273catch;
    }
}
