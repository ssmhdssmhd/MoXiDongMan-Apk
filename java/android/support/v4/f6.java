package android.support.v4;

import java.security.PublicKey;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;

/* loaded from: classes3.dex */
public class f6 implements PublicKey {
    private static final long serialVersionUID = 1;
    private short[][] coeffquadratic;
    private short[] coeffscalar;
    private short[][] coeffsingular;
    private int docLength;
    private uk1 rainbowParams;

    public f6(int i, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.docLength = i;
        this.coeffquadratic = sArr;
        this.coeffsingular = sArr2;
        this.coeffscalar = sArr3;
    }

    public f6(al1 al1Var) {
        this(al1Var.m272new(), al1Var.m269do(), al1Var.m270for(), al1Var.m271if());
    }

    public f6(zk1 zk1Var) {
        this(zk1Var.m7024if(), zk1Var.m10234for(), zk1Var.m10236try(), zk1Var.m10235new());
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof f6)) {
            return false;
        }
        f6 f6Var = (f6) obj;
        return this.docLength == f6Var.getDocLength() && cl1.m958break(this.coeffquadratic, f6Var.getCoeffQuadratic()) && cl1.m958break(this.coeffsingular, f6Var.getCoeffSingular()) && cl1.m967this(this.coeffscalar, f6Var.getCoeffScalar());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    public short[][] getCoeffQuadratic() {
        return this.coeffquadratic;
    }

    public short[] getCoeffScalar() {
        return q3.m6386return(this.coeffscalar);
    }

    public short[][] getCoeffSingular() {
        short[][] sArr = new short[this.coeffsingular.length][];
        int i = 0;
        while (true) {
            short[][] sArr2 = this.coeffsingular;
            if (i == sArr2.length) {
                return sArr;
            }
            sArr[i] = q3.m6386return(sArr2[i]);
            i++;
        }
    }

    public int getDocLength() {
        return this.docLength;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return mr0.m4985for(new b1(PQCObjectIdentifiers.rainbow, org.bouncycastle.asn1.h.f29080do), new yk1(this.docLength, this.coeffquadratic, this.coeffsingular, this.coeffscalar));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return (((((this.docLength * 37) + q3.x(this.coeffquadratic)) * 37) + q3.x(this.coeffsingular)) * 37) + q3.v(this.coeffscalar);
    }
}
