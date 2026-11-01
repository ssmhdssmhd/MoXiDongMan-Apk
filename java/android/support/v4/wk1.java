package android.support.v4;

/* loaded from: classes3.dex */
public class wk1 extends rk1 {

    /* renamed from: case, reason: not valid java name */
    private short[] f7549case;

    /* renamed from: else, reason: not valid java name */
    private int[] f7550else;

    /* renamed from: for, reason: not valid java name */
    private short[][] f7551for;

    /* renamed from: goto, reason: not valid java name */
    private ds0[] f7552goto;

    /* renamed from: new, reason: not valid java name */
    private short[] f7553new;

    /* renamed from: try, reason: not valid java name */
    private short[][] f7554try;

    public wk1(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, ds0[] ds0VarArr) {
        super(true, iArr[iArr.length - 1] - iArr[0]);
        this.f7551for = sArr;
        this.f7553new = sArr2;
        this.f7554try = sArr3;
        this.f7549case = sArr4;
        this.f7550else = iArr;
        this.f7552goto = ds0VarArr;
    }

    /* renamed from: case, reason: not valid java name */
    public short[][] m9202case() {
        return this.f7554try;
    }

    /* renamed from: else, reason: not valid java name */
    public ds0[] m9203else() {
        return this.f7552goto;
    }

    /* renamed from: for, reason: not valid java name */
    public short[] m9204for() {
        return this.f7553new;
    }

    /* renamed from: goto, reason: not valid java name */
    public int[] m9205goto() {
        return this.f7550else;
    }

    /* renamed from: new, reason: not valid java name */
    public short[] m9206new() {
        return this.f7549case;
    }

    /* renamed from: try, reason: not valid java name */
    public short[][] m9207try() {
        return this.f7551for;
    }
}
