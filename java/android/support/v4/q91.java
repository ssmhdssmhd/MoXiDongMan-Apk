package android.support.v4;

import javax.crypto.spec.PBEKeySpec;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class q91 extends PBEKeySpec {

    /* renamed from: if, reason: not valid java name */
    private static final b1 f5304if = new b1(PKCSObjectIdentifiers.id_hmacWithSHA1, org.bouncycastle.asn1.h.f29080do);

    /* renamed from: do, reason: not valid java name */
    private b1 f5305do;

    public q91(char[] cArr, byte[] bArr, int i, int i2, b1 b1Var) {
        super(cArr, bArr, i, i2);
        this.f5305do = b1Var;
    }

    /* renamed from: do, reason: not valid java name */
    public b1 m6447do() {
        return this.f5305do;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m6448if() {
        return f5304if.equals(this.f5305do);
    }
}
