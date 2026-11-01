package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class z00 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f8412do;

    /* renamed from: for, reason: not valid java name */
    private fr f8413for;

    /* renamed from: if, reason: not valid java name */
    private b1 f8414if;

    /* renamed from: new, reason: not valid java name */
    private Cclass f8415new;

    public z00(b1 b1Var, fr frVar, byte[] bArr) {
        this.f8412do = new Cgoto(0L);
        this.f8414if = b1Var;
        this.f8413for = frVar;
        this.f8415new = new org.bouncycastle.asn1.j(bArr);
    }

    private z00(Csuper csuper) {
        this.f8412do = (Cgoto) csuper.mo33075final(0);
        this.f8414if = b1.m418try(csuper.mo33075final(1));
        this.f8413for = fr.m2388case(csuper.mo33075final(2));
        this.f8415new = Cclass.m32796catch(csuper.mo33075final(3));
    }

    /* renamed from: else, reason: not valid java name */
    public static z00 m10004else(Object obj) {
        if (obj instanceof z00) {
            return (z00) obj;
        }
        if (obj != null) {
            return new z00(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static z00 m10005goto(Cimport cimport, boolean z) {
        return m10004else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public fr m10006case() {
        return this.f8413for;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m10007new() {
        return this.f8415new.mo5490const();
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m10008this() {
        return this.f8412do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8412do);
        cimport.m3516do(this.f8414if);
        cimport.m3516do(this.f8413for);
        cimport.m3516do(this.f8415new);
        return new Cpackage(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m10009try() {
        return this.f8414if;
    }
}
