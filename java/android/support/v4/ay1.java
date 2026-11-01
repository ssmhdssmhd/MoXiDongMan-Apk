package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ay1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f291do;

    /* renamed from: for, reason: not valid java name */
    private wx1 f292for;

    /* renamed from: if, reason: not valid java name */
    private s81 f293if;

    public ay1(Ccatch ccatch, s81 s81Var) {
        this(ccatch, s81Var, null);
    }

    public ay1(Ccatch ccatch, s81 s81Var, wx1 wx1Var) {
        this.f291do = ccatch;
        this.f293if = s81Var;
        this.f292for = wx1Var;
    }

    private ay1(Csuper csuper) {
        if (csuper.size() != 2 && csuper.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f291do = Ccatch.m32790throw(csuper.mo33075final(0));
        this.f293if = s81.m7302case(csuper.mo33075final(1));
        if (csuper.size() == 3) {
            this.f292for = wx1.m9299try(csuper.mo33075final(2));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ay1 m405new(Object obj) {
        if (obj instanceof ay1) {
            return (ay1) obj;
        }
        if (obj != null) {
            return new ay1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m406case() {
        return new Ccatch(this.f291do.m32795super());
    }

    /* renamed from: else, reason: not valid java name */
    public wx1 m407else() {
        return this.f292for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f291do);
        cimport.m3516do(this.f293if);
        wx1 wx1Var = this.f292for;
        if (wx1Var != null) {
            cimport.m3516do(wx1Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public s81 m408try() {
        return this.f293if;
    }
}
