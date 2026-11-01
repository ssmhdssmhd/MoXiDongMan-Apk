package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v00 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private byte[] f7026do;

    /* renamed from: if, reason: not valid java name */
    private b1 f7027if;

    public v00(b1 b1Var, byte[] bArr) {
        this.f7026do = q3.m6371final(bArr);
        this.f7027if = b1Var;
    }

    public v00(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f7027if = b1.m418try(enumerationMo33076super.nextElement());
        this.f7026do = Cclass.m32796catch(enumerationMo33076super.nextElement()).mo5490const();
    }

    /* renamed from: case, reason: not valid java name */
    public static v00 m8707case(Object obj) {
        if (obj instanceof v00) {
            return (v00) obj;
        }
        if (obj != null) {
            return new v00(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static v00 m8708else(Cimport cimport, boolean z) {
        return m8707case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m8709new() {
        return this.f7027if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7027if);
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f7026do));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m8710try() {
        return q3.m6371final(this.f7026do);
    }
}
