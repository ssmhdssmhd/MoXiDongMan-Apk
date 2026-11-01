package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class gj1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f2153do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f2154if;

    public gj1(int i, byte[] bArr) {
        this.f2153do = new Cgoto(i);
        this.f2154if = new org.bouncycastle.asn1.j(bArr);
    }

    private gj1(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.size() == 1) {
            this.f2153do = null;
            aSN1EncodableMo33075final = csuper.mo33075final(0);
        } else {
            this.f2153do = (Cgoto) csuper.mo33075final(0);
            aSN1EncodableMo33075final = csuper.mo33075final(1);
        }
        this.f2154if = (Cclass) aSN1EncodableMo33075final;
    }

    public gj1(byte[] bArr) {
        this.f2153do = null;
        this.f2154if = new org.bouncycastle.asn1.j(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static gj1 m2716try(Object obj) {
        if (obj instanceof gj1) {
            return (gj1) obj;
        }
        if (obj != null) {
            return new gj1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m2717case() {
        Cgoto cgoto = this.f2153do;
        if (cgoto == null) {
            return null;
        }
        return cgoto.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m2718new() {
        return this.f2154if.mo5490const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cgoto cgoto = this.f2153do;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        cimport.m3516do(this.f2154if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
