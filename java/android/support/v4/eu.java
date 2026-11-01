package android.support.v4;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;

/* loaded from: classes3.dex */
public class eu extends DHParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final BigInteger f1584do;

    /* renamed from: for, reason: not valid java name */
    private final int f1585for;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f1586if;

    /* renamed from: new, reason: not valid java name */
    private xu f1587new;

    public eu(ou ouVar) {
        this(ouVar.m5757case(), ouVar.m5758else(), ouVar.m5761if(), ouVar.m5759for(), ouVar.m5763try(), ouVar.m5762new());
        this.f1587new = ouVar.m5760goto();
    }

    public eu(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, null, 0);
    }

    public eu(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) {
        this(bigInteger, bigInteger2, bigInteger3, null, i);
    }

    public eu(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, i);
    }

    public eu(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i, int i2) {
        super(bigInteger, bigInteger3, i2);
        this.f1584do = bigInteger2;
        this.f1586if = bigInteger4;
        this.f1585for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public ou m2021do() {
        return new ou(getP(), getG(), this.f1584do, this.f1585for, getL(), this.f1586if, this.f1587new);
    }

    /* renamed from: for, reason: not valid java name */
    public int m2022for() {
        return this.f1585for;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m2023if() {
        return this.f1586if;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m2024new() {
        return this.f1584do;
    }
}
