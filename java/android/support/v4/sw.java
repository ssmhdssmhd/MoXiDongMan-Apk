package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class sw extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cgoto f6314do;

    /* renamed from: if, reason: not valid java name */
    public Cclass f6315if;

    public sw(int i, Cclass cclass) {
        this.f6314do = new Cgoto(i);
        this.f6315if = cclass;
    }

    private sw(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f6314do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f6315if = Cclass.m32796catch(enumerationMo33076super.nextElement());
    }

    /* renamed from: case, reason: not valid java name */
    public static sw m7619case(Object obj) {
        if (obj instanceof sw) {
            return (sw) obj;
        }
        if (obj != null) {
            return new sw(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m7620new() {
        return this.f6315if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6314do);
        cimport.m3516do(this.f6315if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public int m7621try() {
        return this.f6314do.m33044final().intValue();
    }
}
