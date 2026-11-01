package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pl1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cclass f5110do;

    /* renamed from: for, reason: not valid java name */
    private u81 f5111for;

    /* renamed from: if, reason: not valid java name */
    private Ccase f5112if;

    public pl1(Cclass cclass, Ccase ccase, u81 u81Var) {
        this.f5110do = cclass;
        this.f5112if = ccase;
        this.f5111for = u81Var;
    }

    public pl1(Csuper csuper) {
        this.f5110do = Cclass.m32796catch(csuper.mo33075final(0));
        int size = csuper.size();
        if (size != 1) {
            if (size != 2) {
                if (size != 3) {
                    throw new IllegalArgumentException("Invalid RecipientKeyIdentifier");
                }
                this.f5112if = Ccase.m32773final(csuper.mo33075final(1));
            } else if (csuper.mo33075final(1) instanceof Ccase) {
                this.f5112if = Ccase.m32773final(csuper.mo33075final(1));
                return;
            }
            this.f5111for = u81.m8285new(csuper.mo33075final(2));
        }
    }

    public pl1(byte[] bArr) {
        this(bArr, (Ccase) null, (u81) null);
    }

    public pl1(byte[] bArr, Ccase ccase, u81 u81Var) {
        this.f5110do = new org.bouncycastle.asn1.j(bArr);
        this.f5112if = ccase;
        this.f5111for = u81Var;
    }

    /* renamed from: case, reason: not valid java name */
    public static pl1 m6111case(Cimport cimport, boolean z) {
        return m6112try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static pl1 m6112try(Object obj) {
        if (obj instanceof pl1) {
            return (pl1) obj;
        }
        if (obj != null) {
            return new pl1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public u81 m6113else() {
        return this.f5111for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cclass m6114goto() {
        return this.f5110do;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccase m6115new() {
        return this.f5112if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5110do);
        Ccase ccase = this.f5112if;
        if (ccase != null) {
            cimport.m3516do(ccase);
        }
        u81 u81Var = this.f5111for;
        if (u81Var != null) {
            cimport.m3516do(u81Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
