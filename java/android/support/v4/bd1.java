package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bd1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f415do;

    /* renamed from: if, reason: not valid java name */
    private final Ccase f416if;

    private bd1(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f415do = q3.m6371final(Cclass.m32796catch(csuper.mo33075final(0)).mo5490const());
        this.f416if = Ccase.m32773final(csuper.mo33075final(1));
    }

    public bd1(byte[] bArr, Ccase ccase) {
        this.f415do = q3.m6371final(bArr);
        this.f416if = ccase;
    }

    /* renamed from: new, reason: not valid java name */
    public static bd1 m516new(Object obj) {
        if (obj instanceof bd1) {
            return (bd1) obj;
        }
        if (obj != null) {
            return new bd1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m517case() {
        return q3.m6371final(this.f415do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f415do));
        cimport.m3516do(this.f416if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m518try() {
        return this.f416if;
    }
}
