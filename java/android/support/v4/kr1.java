package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class kr1 {

    /* renamed from: do, reason: not valid java name */
    public BigInteger f3460do;

    /* renamed from: for, reason: not valid java name */
    public Digest f3461for;

    /* renamed from: if, reason: not valid java name */
    public BigInteger f3462if;

    /* renamed from: do, reason: not valid java name */
    public BigInteger m4479do(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return this.f3462if.modPow(jr1.m4075case(this.f3461for, this.f3460do, bArr, bArr2, bArr3), this.f3460do);
    }

    /* renamed from: for, reason: not valid java name */
    public void m4480for(BigInteger bigInteger, BigInteger bigInteger2, Digest digest) {
        this.f3460do = bigInteger;
        this.f3462if = bigInteger2;
        this.f3461for = digest;
    }

    /* renamed from: if, reason: not valid java name */
    public void m4481if(gr1 gr1Var, Digest digest) {
        this.f3460do = gr1Var.m2772if();
        this.f3462if = gr1Var.m2771do();
        this.f3461for = digest;
    }
}
