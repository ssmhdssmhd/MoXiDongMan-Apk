package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class o80 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private static final Ccatch f4471case = new Ccatch("1.3.6.1.5.5.11.0.2.1");

    /* renamed from: do, reason: not valid java name */
    private Cgoto f4472do;

    /* renamed from: for, reason: not valid java name */
    private ys f4473for;

    /* renamed from: if, reason: not valid java name */
    private Csuper f4474if;

    /* renamed from: new, reason: not valid java name */
    private s70 f4475new;

    /* renamed from: try, reason: not valid java name */
    private g3 f4476try;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private o80(o80 o80Var, g3 g3Var, e3 e3Var) {
        Csuper nVar;
        this.f4472do = new Cgoto(1L);
        this.f4472do = o80Var.f4472do;
        if (e3Var != null) {
            b1 b1VarM1639try = e3Var.m1639try();
            Cimport cimport = new Cimport();
            Enumeration enumerationMo33076super = o80Var.f4474if.mo33076super();
            boolean z = false;
            while (true) {
                if (!enumerationMo33076super.hasMoreElements()) {
                    break;
                }
                b1 b1VarM418try = b1.m418try(enumerationMo33076super.nextElement());
                cimport.m3516do(b1VarM418try);
                if (b1VarM418try.equals(b1VarM1639try)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                nVar = o80Var.f4474if;
            } else {
                cimport.m3516do(b1VarM1639try);
                nVar = new org.bouncycastle.asn1.n(cimport);
            }
        }
        this.f4474if = nVar;
        this.f4473for = o80Var.f4473for;
        this.f4475new = o80Var.f4475new;
        this.f4476try = g3Var;
    }

    private o80(Csuper csuper) {
        this.f4472do = new Cgoto(1L);
        if (csuper.size() < 3 && csuper.size() > 5) {
            throw new IllegalArgumentException("wrong sequence size in constructor: " + csuper.size());
        }
        Cgoto cgotoM33040catch = Cgoto.m33040catch(csuper.mo33075final(0));
        if (!cgotoM33040catch.m33044final().equals(Cdo.f32646if)) {
            throw new IllegalArgumentException("incompatible version");
        }
        this.f4472do = cgotoM33040catch;
        this.f4474if = Csuper.m33129catch(csuper.mo33075final(1));
        for (int i = 2; i != csuper.size() - 1; i++) {
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(i);
            if (!(aSN1EncodableMo33075final instanceof Cimport)) {
                throw new IllegalArgumentException("unknown object in getInstance: " + aSN1EncodableMo33075final.getClass().getName());
            }
            Cimport cimport = (Cimport) aSN1EncodableMo33075final;
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f4473for = ys.m9933case(cimport, false);
            } else {
                if (tagNo != 1) {
                    throw new IllegalArgumentException("unknown tag in getInstance: " + cimport.getTagNo());
                }
                this.f4475new = s70.m7283try(cimport, false);
            }
        }
        this.f4476try = g3.m2554case(csuper.mo33075final(csuper.size() - 1));
    }

    public o80(b1[] b1VarArr, ys ysVar, s70 s70Var, g3 g3Var) {
        this.f4472do = new Cgoto(1L);
        this.f4474if = new org.bouncycastle.asn1.n(b1VarArr);
        this.f4473for = ysVar;
        this.f4475new = s70Var;
        this.f4476try = g3Var;
    }

    /* renamed from: else, reason: not valid java name */
    public static o80 m5498else(Object obj) {
        if (obj instanceof o80) {
            return (o80) obj;
        }
        if (obj != null) {
            return new o80(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1[] m5499case() {
        int size = this.f4474if.size();
        b1[] b1VarArr = new b1[size];
        for (int i = 0; i != size; i++) {
            b1VarArr[i] = b1.m418try(this.f4474if.mo33075final(i));
        }
        return b1VarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public o80 m5500new(e3 e3Var, boolean z) {
        if (z) {
            return new o80(this, this.f4476try.m2555new(new f3(e3Var)), e3Var);
        }
        f3[] f3VarArrM2556try = this.f4476try.m2556try();
        f3VarArrM2556try[f3VarArrM2556try.length - 1] = f3VarArrM2556try[f3VarArrM2556try.length - 1].m2126new(e3Var);
        return new o80(this, new g3(f3VarArrM2556try), null);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4472do);
        cimport.m3516do(this.f4474if);
        ys ysVar = this.f4473for;
        if (ysVar != null) {
            cimport.m3516do(ysVar);
        }
        s70 s70Var = this.f4475new;
        if (s70Var != null) {
            cimport.m3516do(s70Var);
        }
        cimport.m3516do(this.f4476try);
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        return "EvidenceRecord: Oid(" + f4471case + ")";
    }

    /* renamed from: try, reason: not valid java name */
    public g3 m5501try() {
        return this.f4476try;
    }
}
