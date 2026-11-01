package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ur0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.asn1.m f6969do;

    /* renamed from: if, reason: not valid java name */
    private org.bouncycastle.asn1.m f6970if;

    public ur0(String str, String str2) {
        this.f6969do = new org.bouncycastle.asn1.m(str);
        this.f6970if = new org.bouncycastle.asn1.m(str2);
    }

    private ur0(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("sequence wrong size for LDSVersionInfo");
        }
        this.f6969do = org.bouncycastle.asn1.m.m33078catch(csuper.mo33075final(0));
        this.f6970if = org.bouncycastle.asn1.m.m33078catch(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static ur0 m8633new(Object obj) {
        if (obj instanceof ur0) {
            return (ur0) obj;
        }
        if (obj != null) {
            return new ur0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public String m8634case() {
        return this.f6970if.getString();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6969do);
        cimport.m3516do(this.f6970if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public String m8635try() {
        return this.f6969do.getString();
    }
}
