package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cif;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class zx1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f8678do;

    /* renamed from: for, reason: not valid java name */
    private final Cif f8679for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f8680if;

    public zx1(b1 b1Var, byte[] bArr) {
        this.f8678do = b1Var;
        this.f8680if = null;
        this.f8679for = new Cinstanceof(q3.m6371final(bArr));
    }

    public zx1(b1 b1Var, rg[] rgVarArr, byte[] bArr) {
        this.f8678do = b1Var;
        this.f8680if = new org.bouncycastle.asn1.n(rgVarArr);
        this.f8679for = new Cinstanceof(q3.m6371final(bArr));
    }

    private zx1(Csuper csuper) {
        this.f8678do = b1.m418try(csuper.mo33075final(0));
        int i = 1;
        if (csuper.mo33075final(1) instanceof Cimport) {
            this.f8680if = Csuper.m33129catch(Cimport.m33063catch(csuper.mo33075final(1)).m33065const());
            i = 2;
        } else {
            this.f8680if = null;
        }
        this.f8679for = Cinstanceof.m33068public(csuper.mo33075final(i));
    }

    /* renamed from: try, reason: not valid java name */
    public static zx1 m10321try(Object obj) {
        if (obj instanceof zx1) {
            return (zx1) obj;
        }
        if (obj != null) {
            return new zx1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cif m10322case() {
        return new Cinstanceof(q3.m6371final(this.f8679for.m33057const()), this.f8679for.m33060throw());
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m10323else() {
        return this.f8678do;
    }

    /* renamed from: new, reason: not valid java name */
    public rg[] m10324new() {
        Csuper csuper = this.f8680if;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        rg[] rgVarArr = new rg[size];
        for (int i = 0; i != size; i++) {
            rgVarArr[i] = rg.m6956try(this.f8680if.mo33075final(i));
        }
        return rgVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8678do);
        if (this.f8680if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f8680if));
        }
        cimport.m3516do(this.f8679for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
