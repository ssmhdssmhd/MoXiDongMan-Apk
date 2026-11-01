package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class qu extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f5522do;

    public qu(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new IllegalArgumentException("'y' cannot be null");
        }
        this.f5522do = new Cgoto(bigInteger);
    }

    private qu(Cgoto cgoto) {
        if (cgoto == null) {
            throw new IllegalArgumentException("'y' cannot be null");
        }
        this.f5522do = cgoto;
    }

    /* renamed from: new, reason: not valid java name */
    public static qu m6665new(Object obj) {
        if (obj == null || (obj instanceof qu)) {
            return (qu) obj;
        }
        if (obj instanceof Cgoto) {
            return new qu((Cgoto) obj);
        }
        throw new IllegalArgumentException("Invalid DHPublicKey: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static qu m6666try(Cimport cimport, boolean z) {
        return m6665new(Cgoto.m33041class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m6667case() {
        return this.f5522do.m33043const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f5522do;
    }
}
