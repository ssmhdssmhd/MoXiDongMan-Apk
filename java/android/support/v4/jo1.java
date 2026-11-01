package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cdo;

/* loaded from: classes3.dex */
public class jo1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f3164do;

    /* renamed from: for, reason: not valid java name */
    private z81 f3165for;

    /* renamed from: if, reason: not valid java name */
    private Csuper f3166if;

    private jo1(Csuper csuper) {
        if (csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                Csuper csuper2 = (Csuper) cimport.m33065const();
                Enumeration enumerationMo33076super2 = csuper2.mo33076super();
                while (enumerationMo33076super2.hasMoreElements()) {
                    Cdo.m33207new(enumerationMo33076super2.nextElement());
                }
                this.f3164do = csuper2;
            } else if (tagNo == 1) {
                Csuper csuper3 = (Csuper) cimport.m33065const();
                Enumeration enumerationMo33076super3 = csuper3.mo33076super();
                while (enumerationMo33076super3.hasMoreElements()) {
                    e8.m1681try(enumerationMo33076super3.nextElement());
                }
                this.f3166if = csuper3;
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("invalid tag: " + cimport.getTagNo());
                }
                this.f3165for = z81.m10107new(cimport.m33065const());
            }
        }
    }

    public jo1(Cdo[] cdoArr, e8[] e8VarArr, z81 z81Var) {
        if (cdoArr != null) {
            this.f3164do = new org.bouncycastle.asn1.n(cdoArr);
        }
        if (e8VarArr != null) {
            this.f3166if = new org.bouncycastle.asn1.n(e8VarArr);
        }
        this.f3165for = z81Var;
    }

    /* renamed from: try, reason: not valid java name */
    public static jo1 m3979try(Object obj) {
        if (obj instanceof jo1) {
            return (jo1) obj;
        }
        if (obj != null) {
            return new jo1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public e8[] m3980case() {
        Csuper csuper = this.f3166if;
        if (csuper == null) {
            return new e8[0];
        }
        int size = csuper.size();
        e8[] e8VarArr = new e8[size];
        for (int i = 0; i < size; i++) {
            e8VarArr[i] = e8.m1681try(this.f3166if.mo33075final(i));
        }
        return e8VarArr;
    }

    /* renamed from: else, reason: not valid java name */
    public z81 m3981else() {
        return this.f3165for;
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo[] m3982new() {
        Csuper csuper = this.f3164do;
        if (csuper == null) {
            return new Cdo[0];
        }
        int size = csuper.size();
        Cdo[] cdoArr = new Cdo[size];
        for (int i = 0; i < size; i++) {
            cdoArr[i] = Cdo.m33207new(this.f3164do.mo33075final(i));
        }
        return cdoArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f3164do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f3164do));
        }
        if (this.f3166if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f3166if));
        }
        if (this.f3165for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f3165for.toASN1Primitive()));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
