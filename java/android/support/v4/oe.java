package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class oe extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f4579do;

    /* renamed from: for, reason: not valid java name */
    private final ua1 f4580for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f4581if;

    public oe(b1 b1Var, byte[][] bArr, ua1 ua1Var) {
        this.f4579do = b1Var;
        Cimport cimport = new Cimport();
        for (int i = 0; i != bArr.length; i++) {
            cimport.m3516do(new org.bouncycastle.asn1.j(q3.m6371final(bArr[i])));
        }
        this.f4581if = new org.bouncycastle.asn1.n(cimport);
        this.f4580for = ua1Var;
    }

    private oe(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f4579do = b1.m418try(csuper.mo33075final(0));
        this.f4581if = Csuper.m33129catch(csuper.mo33075final(1));
        this.f4580for = ua1.m8314try(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static oe m5573case(Object obj) {
        if (obj instanceof oe) {
            return (oe) obj;
        }
        if (obj != null) {
            return new oe(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public ua1 m5574else() {
        return this.f4580for;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[][] m5575new() {
        int size = this.f4581if.size();
        byte[][] bArr = new byte[size][];
        for (int i = 0; i != size; i++) {
            bArr[i] = q3.m6371final(Cclass.m32796catch(this.f4581if.mo33075final(i)).mo5490const());
        }
        return bArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4579do);
        cimport.m3516do(this.f4581if);
        cimport.m3516do(this.f4580for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m5576try() {
        return this.f4579do;
    }
}
