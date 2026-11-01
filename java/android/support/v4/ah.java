package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ah extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private eg f173do;

    /* renamed from: for, reason: not valid java name */
    private ua1 f174for;

    /* renamed from: if, reason: not valid java name */
    private q70 f175if;

    public ah(eg egVar) {
        this(egVar, null, null);
    }

    public ah(eg egVar, q70 q70Var, ua1 ua1Var) {
        if (egVar == null) {
            throw new IllegalArgumentException("'certOrEncCert' cannot be null");
        }
        this.f173do = egVar;
        this.f175if = q70Var;
        this.f174for = ua1Var;
    }

    private ah(Csuper csuper) {
        Cfinal cfinalM33065const;
        this.f173do = eg.m1873case(csuper.mo33075final(0));
        if (csuper.size() >= 2) {
            if (csuper.size() == 2) {
                Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(1));
                int tagNo = cimportM33063catch.getTagNo();
                cfinalM33065const = cimportM33063catch.m33065const();
                if (tagNo == 0) {
                    this.f175if = q70.m6423else(cfinalM33065const);
                    return;
                }
            } else {
                this.f175if = q70.m6423else(Cimport.m33063catch(csuper.mo33075final(1)).m33065const());
                cfinalM33065const = Cimport.m33063catch(csuper.mo33075final(2)).m33065const();
            }
            this.f174for = ua1.m8314try(cfinalM33065const);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static ah m245try(Object obj) {
        if (obj instanceof ah) {
            return (ah) obj;
        }
        if (obj != null) {
            return new ah(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public q70 m246case() {
        return this.f175if;
    }

    /* renamed from: else, reason: not valid java name */
    public ua1 m247else() {
        return this.f174for;
    }

    /* renamed from: new, reason: not valid java name */
    public eg m248new() {
        return this.f173do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f173do);
        if (this.f175if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f175if));
        }
        if (this.f174for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f174for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
