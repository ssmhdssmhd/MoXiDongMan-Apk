package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ch0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final tg0 f782do;

    /* renamed from: if, reason: not valid java name */
    private final BigInteger f783if;

    public ch0(tg0 tg0Var, BigInteger bigInteger) {
        this.f782do = tg0Var;
        this.f783if = bigInteger;
    }

    private ch0(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f782do = tg0.m7877try(csuper.mo33075final(0));
        this.f783if = Cgoto.m33040catch(csuper.mo33075final(1)).m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public static ch0 m924new(Object obj) {
        if (obj instanceof ch0) {
            return (ch0) obj;
        }
        if (obj != null) {
            return new ch0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m925case() {
        return this.f783if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f782do);
        cimport.m3516do(new Cgoto(this.f783if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public tg0 m926try() {
        return this.f782do;
    }
}
