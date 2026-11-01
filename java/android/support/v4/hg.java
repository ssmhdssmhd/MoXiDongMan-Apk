package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class hg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f2397do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f2398if;

    private hg(Csuper csuper) {
        int i = 1;
        if (csuper.size() > 1) {
            this.f2397do = Csuper.m33130class((Cimport) csuper.mo33075final(0), true);
        } else {
            i = 0;
        }
        this.f2398if = Csuper.m33129catch(csuper.mo33075final(i));
    }

    public hg(se[] seVarArr, lg[] lgVarArr) {
        if (lgVarArr == null) {
            throw new IllegalArgumentException("'response' cannot be null");
        }
        if (seVarArr != null) {
            Cimport cimport = new Cimport();
            for (se seVar : seVarArr) {
                cimport.m3516do(seVar);
            }
            this.f2397do = new org.bouncycastle.asn1.n(cimport);
        }
        Cimport cimport2 = new Cimport();
        for (lg lgVar : lgVarArr) {
            cimport2.m3516do(lgVar);
        }
        this.f2398if = new org.bouncycastle.asn1.n(cimport2);
    }

    /* renamed from: try, reason: not valid java name */
    public static hg m3016try(Object obj) {
        if (obj instanceof hg) {
            return (hg) obj;
        }
        if (obj != null) {
            return new hg(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public lg[] m3017case() {
        int size = this.f2398if.size();
        lg[] lgVarArr = new lg[size];
        for (int i = 0; i != size; i++) {
            lgVarArr[i] = lg.m4648case(this.f2398if.mo33075final(i));
        }
        return lgVarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public se[] m3018new() {
        Csuper csuper = this.f2397do;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        se[] seVarArr = new se[size];
        for (int i = 0; i != size; i++) {
            seVarArr[i] = se.m7371new(this.f2397do.mo33075final(i));
        }
        return seVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f2397do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f2397do));
        }
        cimport.m3516do(this.f2398if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
