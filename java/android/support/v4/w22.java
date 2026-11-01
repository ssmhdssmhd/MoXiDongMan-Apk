package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class w22 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private byte[] f7378do;

    public w22(Cclass cclass) {
        this(cclass.mo5490const());
    }

    public w22(byte[] bArr) {
        this.f7378do = q3.m6371final(bArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static w22 m9021case(Cimport cimport, boolean z) {
        return m9023try(Cclass.m32797class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static w22 m9022new(y90 y90Var) {
        return m9023try(y90Var.m9791this(Cif.f29337try));
    }

    /* renamed from: try, reason: not valid java name */
    public static w22 m9023try(Object obj) {
        if (obj instanceof w22) {
            return (w22) obj;
        }
        if (obj != null) {
            return new w22(Cclass.m32796catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m9024else() {
        return q3.m6371final(this.f7378do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.j(m9024else());
    }
}
