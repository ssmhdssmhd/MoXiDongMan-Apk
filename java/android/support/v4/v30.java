package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v30 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f7042do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f7043for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f7044if;

    public v30(b1 b1Var, byte[] bArr) {
        this.f7042do = b1Var;
        this.f7044if = null;
        this.f7043for = q3.m6371final(bArr);
    }

    public v30(b1 b1Var, byte[] bArr, byte[] bArr2) {
        this.f7042do = b1Var;
        this.f7044if = q3.m6371final(bArr);
        this.f7043for = q3.m6371final(bArr2);
    }

    private v30(Csuper csuper) {
        this.f7042do = b1.m418try(csuper.mo33075final(0));
        if (csuper.size() == 2) {
            this.f7044if = null;
            this.f7043for = Cclass.m32797class((Cimport) csuper.mo33075final(1), true).mo5490const();
        } else {
            this.f7044if = Cclass.m32797class((Cimport) csuper.mo33075final(1), true).mo5490const();
            this.f7043for = Cclass.m32797class((Cimport) csuper.mo33075final(2), true).mo5490const();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static v30 m8728new(Object obj) {
        if (obj instanceof v30) {
            return (v30) obj;
        }
        if (obj != null) {
            return new v30(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static v30 m8729try(Cimport cimport, boolean z) {
        return m8728new(Csuper.m33130class(cimport, z));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7042do);
        if (this.f7044if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, new org.bouncycastle.asn1.j(this.f7044if)));
        }
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, new org.bouncycastle.asn1.j(this.f7043for)));
        return new org.bouncycastle.asn1.n(cimport);
    }
}
