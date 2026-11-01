package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f426do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f427if;

    public bg(b1 b1Var, byte[] bArr) {
        this.f426do = b1Var;
        byte[] bArr2 = new byte[bArr.length];
        this.f427if = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    private bg(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f426do = b1.m418try(csuper.mo33075final(0));
            this.f427if = Cclass.m32796catch(csuper.mo33075final(1)).mo5490const();
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static bg m530case(Object obj) {
        if (obj == null || (obj instanceof bg)) {
            return (bg) obj;
        }
        if (obj instanceof Csuper) {
            return new bg((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m531new() {
        return q3.m6371final(this.f427if);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f426do);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f427if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m532try() {
        return this.f426do;
    }
}
