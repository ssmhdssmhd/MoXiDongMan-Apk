package android.support.v4;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* loaded from: classes3.dex */
public class e6 implements PrivateKey {
    private static final long serialVersionUID = 1;
    private short[][] A1inv;
    private short[][] A2inv;
    private short[] b1;
    private short[] b2;
    private ds0[] layers;
    private int[] vi;

    public e6(wk1 wk1Var) {
        this(wk1Var.m9207try(), wk1Var.m9204for(), wk1Var.m9202case(), wk1Var.m9206new(), wk1Var.m9205goto(), wk1Var.m9203else());
    }

    public e6(xk1 xk1Var) {
        this(xk1Var.m9526for(), xk1Var.m9525do(), xk1Var.m9528new(), xk1Var.m9527if(), xk1Var.m9524case(), xk1Var.m9529try());
    }

    public e6(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, ds0[] ds0VarArr) {
        this.A1inv = sArr;
        this.b1 = sArr2;
        this.A2inv = sArr3;
        this.b2 = sArr4;
        this.vi = iArr;
        this.layers = ds0VarArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof e6)) {
            return false;
        }
        e6 e6Var = (e6) obj;
        boolean zEquals = ((((cl1.m958break(this.A1inv, e6Var.getInvA1())) && cl1.m958break(this.A2inv, e6Var.getInvA2())) && cl1.m967this(this.b1, e6Var.getB1())) && cl1.m967this(this.b2, e6Var.getB2())) && Arrays.equals(this.vi, e6Var.getVi());
        if (this.layers.length != e6Var.getLayers().length) {
            return false;
        }
        for (int length = this.layers.length - 1; length >= 0; length--) {
            zEquals &= this.layers[length].equals(e6Var.getLayers()[length]);
        }
        return zEquals;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    public short[] getB1() {
        return this.b1;
    }

    public short[] getB2() {
        return this.b2;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new Cdo(new b1(PQCObjectIdentifiers.rainbow, org.bouncycastle.asn1.h.f29080do), new vk1(this.A1inv, this.b1, this.A2inv, this.b2, this.vi, this.layers)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public short[][] getInvA1() {
        return this.A1inv;
    }

    public short[][] getInvA2() {
        return this.A2inv;
    }

    public ds0[] getLayers() {
        return this.layers;
    }

    public int[] getVi() {
        return this.vi;
    }

    public int hashCode() {
        int length = (((((((((this.layers.length * 37) + q3.x(this.A1inv)) * 37) + q3.v(this.b1)) * 37) + q3.x(this.A2inv)) * 37) + q3.v(this.b2)) * 37) + q3.q(this.vi);
        for (int length2 = this.layers.length - 1; length2 >= 0; length2--) {
            length = (length * 37) + this.layers[length2].hashCode();
        }
        return length;
    }
}
