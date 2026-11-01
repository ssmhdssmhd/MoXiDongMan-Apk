package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.custom.sec.Cgoto;

/* loaded from: classes3.dex */
public class mu1 extends Cfor.Cif {

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f4034if = Cgoto.f31903import;

    /* renamed from: do, reason: not valid java name */
    public int[] f4035do;

    public mu1() {
        this.f4035do = j21.m3669break();
    }

    public mu1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f4034if) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.f4035do = lu1.m4789try(bigInteger);
    }

    public mu1(int[] iArr) {
        this.f4035do = iArr;
    }

    /* renamed from: default, reason: not valid java name */
    private static void m5003default(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        lu1.m4780else(iArr2, iArr, iArr2);
        lu1.m4790while(iArr2, iArr2);
        lu1.m4777class(iArr, iArr4);
        lu1.m4779do(iArr3, iArr4, iArr);
        lu1.m4780else(iArr3, iArr4, iArr3);
        lu1.m4776catch(q21.y(7, iArr3, 2, 0), iArr3);
    }

    /* renamed from: extends, reason: not valid java name */
    private static boolean m5004extends(int[] iArr) {
        int[] iArrM3669break = j21.m3669break();
        int[] iArrM3669break2 = j21.m3669break();
        j21.m3700this(iArr, iArrM3669break);
        for (int i = 0; i < 7; i++) {
            j21.m3700this(iArrM3669break, iArrM3669break2);
            lu1.m4778const(iArrM3669break, 1 << i, iArrM3669break);
            lu1.m4780else(iArrM3669break, iArrM3669break2, iArrM3669break);
        }
        lu1.m4778const(iArrM3669break, 95, iArrM3669break);
        return j21.m3685import(iArrM3669break);
    }

    /* renamed from: finally, reason: not valid java name */
    private static boolean m5005finally(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM3669break = j21.m3669break();
        j21.m3700this(iArr2, iArrM3669break);
        int[] iArrM3669break2 = j21.m3669break();
        iArrM3669break2[0] = 1;
        int[] iArrM3669break3 = j21.m3669break();
        m5007throws(iArr, iArrM3669break, iArrM3669break2, iArrM3669break3, iArr3);
        int[] iArrM3669break4 = j21.m3669break();
        int[] iArrM3669break5 = j21.m3669break();
        for (int i = 1; i < 96; i++) {
            j21.m3700this(iArrM3669break, iArrM3669break4);
            j21.m3700this(iArrM3669break2, iArrM3669break5);
            m5003default(iArrM3669break, iArrM3669break2, iArrM3669break3, iArr3);
            if (j21.m3688native(iArrM3669break)) {
                e01.m1572case(lu1.f3773if, iArrM3669break5, iArr3);
                lu1.m4780else(iArr3, iArrM3669break4, iArr3);
                return true;
            }
        }
        return false;
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m5006switch(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        lu1.m4780else(iArr5, iArr3, iArr7);
        lu1.m4780else(iArr7, iArr, iArr7);
        lu1.m4780else(iArr4, iArr2, iArr6);
        lu1.m4779do(iArr6, iArr7, iArr6);
        lu1.m4780else(iArr4, iArr3, iArr7);
        j21.m3700this(iArr6, iArr4);
        lu1.m4780else(iArr5, iArr2, iArr5);
        lu1.m4779do(iArr5, iArr7, iArr5);
        lu1.m4777class(iArr5, iArr6);
        lu1.m4780else(iArr6, iArr, iArr6);
    }

    /* renamed from: throws, reason: not valid java name */
    private static void m5007throws(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        j21.m3700this(iArr, iArr4);
        int[] iArrM3669break = j21.m3669break();
        int[] iArrM3669break2 = j21.m3669break();
        for (int i = 0; i < 7; i++) {
            j21.m3700this(iArr2, iArrM3669break);
            j21.m3700this(iArr3, iArrM3669break2);
            int i2 = 1 << i;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    m5003default(iArr2, iArr3, iArr4, iArr5);
                }
            }
            m5006switch(iArr, iArrM3669break, iArrM3669break2, iArr2, iArr3, iArr4, iArr5);
        }
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: break */
    public boolean mo328break() {
        return j21.m3688native(this.f4035do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: case */
    public String mo329case() {
        return "SecP224R1Field";
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: catch */
    public Cfor mo330catch(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        lu1.m4780else(this.f4035do, ((mu1) cfor).f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: do */
    public Cfor mo331do(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        lu1.m4779do(this.f4035do, ((mu1) cfor).f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: else */
    public int mo332else() {
        return f4034if.bitLength();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof mu1) {
            return j21.m3673const(this.f4035do, ((mu1) obj).f4035do);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: final */
    public Cfor mo333final() {
        int[] iArrM3669break = j21.m3669break();
        lu1.m4787this(this.f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: goto */
    public Cfor mo334goto() {
        int[] iArrM3669break = j21.m3669break();
        e01.m1572case(lu1.f3773if, this.f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    public int hashCode() {
        return f4034if.hashCode() ^ q3.r(this.f4035do, 0, 7);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: if */
    public Cfor mo335if() {
        int[] iArrM3669break = j21.m3669break();
        lu1.m4782for(this.f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: new */
    public Cfor mo336new(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        e01.m1572case(lu1.f3773if, ((mu1) cfor).f4035do, iArrM3669break);
        lu1.m4780else(iArrM3669break, this.f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: public */
    public Cfor mo337public(Cfor cfor) {
        int[] iArrM3669break = j21.m3669break();
        lu1.m4786super(this.f4035do, ((mu1) cfor).f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: return */
    public boolean mo338return() {
        return j21.m3697super(this.f4035do, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: static */
    public BigInteger mo339static() {
        return j21.m3699synchronized(this.f4035do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: super */
    public Cfor mo340super() {
        int[] iArr = this.f4035do;
        if (j21.m3688native(iArr) || j21.m3685import(iArr)) {
            return this;
        }
        int[] iArrM3669break = j21.m3669break();
        lu1.m4787this(iArr, iArrM3669break);
        int[] iArrM1574else = e01.m1574else(lu1.f3773if);
        int[] iArrM3669break2 = j21.m3669break();
        if (!m5004extends(iArr)) {
            return null;
        }
        while (!m5005finally(iArrM3669break, iArrM1574else, iArrM3669break2)) {
            lu1.m4782for(iArrM1574else, iArrM1574else);
        }
        lu1.m4777class(iArrM3669break2, iArrM1574else);
        if (j21.m3673const(iArr, iArrM1574else)) {
            return new mu1(iArrM3669break2);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: this */
    public boolean mo341this() {
        return j21.m3685import(this.f4035do);
    }

    @Override // org.bouncycastle.math.ec.Cfor
    /* renamed from: throw */
    public Cfor mo342throw() {
        int[] iArrM3669break = j21.m3669break();
        lu1.m4777class(this.f4035do, iArrM3669break);
        return new mu1(iArrM3669break);
    }
}
