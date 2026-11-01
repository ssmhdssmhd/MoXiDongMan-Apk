package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class vg1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f7207do;

    /* renamed from: for, reason: not valid java name */
    private final Csuper f7208for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f7209if;

    public vg1(BigInteger bigInteger, b1 b1Var, byte[][] bArr) {
        this.f7207do = new Cgoto(bigInteger);
        this.f7209if = b1Var;
        Cimport cimport = new Cimport();
        for (int i = 0; i != bArr.length; i++) {
            cimport.m3516do(new org.bouncycastle.asn1.j(q3.m6371final(bArr[i])));
        }
        this.f7208for = new org.bouncycastle.asn1.n(cimport);
    }

    private vg1(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f7207do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f7209if = b1.m418try(csuper.mo33075final(1));
        this.f7208for = Csuper.m33129catch(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static vg1 m8853case(Object obj) {
        if (obj instanceof vg1) {
            return (vg1) obj;
        }
        if (obj != null) {
            return new vg1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m8854else() {
        return this.f7207do.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public byte[][] m8855new() {
        int size = this.f7208for.size();
        byte[][] bArr = new byte[size][];
        for (int i = 0; i != size; i++) {
            bArr[i] = q3.m6371final(Cclass.m32796catch(this.f7208for.mo33075final(i)).mo5490const());
        }
        return bArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7207do);
        cimport.m3516do(this.f7209if);
        cimport.m3516do(this.f7208for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m8856try() {
        return this.f7209if;
    }
}
