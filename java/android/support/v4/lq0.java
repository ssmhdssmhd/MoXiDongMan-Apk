package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class lq0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f3732do;

    /* renamed from: for, reason: not valid java name */
    private u81 f3733for;

    /* renamed from: if, reason: not valid java name */
    private Ccase f3734if;

    private lq0(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        this.f3732do = (Cclass) csuper.mo33075final(0);
        int size = csuper.size();
        if (size != 1) {
            if (size == 2) {
                boolean z = csuper.mo33075final(1) instanceof Ccase;
                aSN1EncodableMo33075final = csuper.mo33075final(1);
                if (z) {
                    this.f3734if = (Ccase) aSN1EncodableMo33075final;
                    return;
                }
            } else {
                if (size != 3) {
                    throw new IllegalArgumentException("Invalid KEKIdentifier");
                }
                this.f3734if = (Ccase) csuper.mo33075final(1);
                aSN1EncodableMo33075final = csuper.mo33075final(2);
            }
            this.f3733for = u81.m8285new(aSN1EncodableMo33075final);
        }
    }

    public lq0(byte[] bArr, Ccase ccase, u81 u81Var) {
        this.f3732do = new org.bouncycastle.asn1.j(bArr);
        this.f3734if = ccase;
        this.f3733for = u81Var;
    }

    /* renamed from: case, reason: not valid java name */
    public static lq0 m4733case(Cimport cimport, boolean z) {
        return m4734try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static lq0 m4734try(Object obj) {
        if (obj == null || (obj instanceof lq0)) {
            return (lq0) obj;
        }
        if (obj instanceof Csuper) {
            return new lq0((Csuper) obj);
        }
        throw new IllegalArgumentException("Invalid KEKIdentifier: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public Cclass m4735else() {
        return this.f3732do;
    }

    /* renamed from: goto, reason: not valid java name */
    public u81 m4736goto() {
        return this.f3733for;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m4737new() {
        return this.f3734if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3732do);
        Ccase ccase = this.f3734if;
        if (ccase != null) {
            cimport.m3516do(ccase);
        }
        u81 u81Var = this.f3733for;
        if (u81Var != null) {
            cimport.m3516do(u81Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
