package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class o70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f4469do;

    /* renamed from: if, reason: not valid java name */
    private Cclass f4470if;

    public o70(b1 b1Var, byte[] bArr) {
        this.f4469do = b1Var;
        this.f4470if = new org.bouncycastle.asn1.j(bArr);
    }

    private o70(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f4469do = b1.m418try(enumerationMo33076super.nextElement());
        this.f4470if = Cclass.m32796catch(enumerationMo33076super.nextElement());
    }

    /* renamed from: case, reason: not valid java name */
    public static o70 m5495case(Object obj) {
        if (obj instanceof o70) {
            return (o70) obj;
        }
        if (obj != null) {
            return new o70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5496new() {
        return this.f4470if.mo5490const();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4469do);
        cimport.m3516do(this.f4470if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m5497try() {
        return this.f4469do;
    }
}
