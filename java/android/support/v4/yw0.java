package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yw0 extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f8354new = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    public v00 f8355do;

    /* renamed from: for, reason: not valid java name */
    public BigInteger f8356for;

    /* renamed from: if, reason: not valid java name */
    public byte[] f8357if;

    public yw0(v00 v00Var, byte[] bArr, int i) {
        this.f8355do = v00Var;
        this.f8357if = q3.m6371final(bArr);
        this.f8356for = BigInteger.valueOf(i);
    }

    private yw0(Csuper csuper) {
        this.f8355do = v00.m8707case(csuper.mo33075final(0));
        this.f8357if = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(1)).mo5490const());
        this.f8356for = csuper.size() == 3 ? Cgoto.m33040catch(csuper.mo33075final(2)).m33044final() : f8354new;
    }

    /* renamed from: new, reason: not valid java name */
    public static yw0 m9974new(Object obj) {
        if (obj instanceof yw0) {
            return (yw0) obj;
        }
        if (obj != null) {
            return new yw0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public v00 m9975case() {
        return this.f8355do;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m9976else() {
        return q3.m6371final(this.f8357if);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8355do);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f8357if));
        if (!this.f8356for.equals(f8354new)) {
            cimport.m3516do(new Cgoto(this.f8356for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m9977try() {
        return this.f8356for;
    }
}
