package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class q70 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private Cinstanceof f5276case;

    /* renamed from: do, reason: not valid java name */
    private b1 f5277do;

    /* renamed from: for, reason: not valid java name */
    private Cinstanceof f5278for;

    /* renamed from: if, reason: not valid java name */
    private b1 f5279if;

    /* renamed from: new, reason: not valid java name */
    private b1 f5280new;

    /* renamed from: try, reason: not valid java name */
    private Cclass f5281try;

    public q70(b1 b1Var, b1 b1Var2, Cinstanceof cinstanceof, b1 b1Var3, Cclass cclass, Cinstanceof cinstanceof2) {
        if (cinstanceof2 == null) {
            throw new IllegalArgumentException("'encValue' cannot be null");
        }
        this.f5277do = b1Var;
        this.f5279if = b1Var2;
        this.f5278for = cinstanceof;
        this.f5280new = b1Var3;
        this.f5281try = cclass;
        this.f5276case = cinstanceof2;
    }

    private q70(Csuper csuper) {
        int i = 0;
        while (csuper.mo33075final(i) instanceof Cimport) {
            Cimport cimport = (Cimport) csuper.mo33075final(i);
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f5277do = b1.m417case(cimport, false);
            } else if (tagNo == 1) {
                this.f5279if = b1.m417case(cimport, false);
            } else if (tagNo == 2) {
                this.f5278for = Cinstanceof.m33069return(cimport, false);
            } else if (tagNo == 3) {
                this.f5280new = b1.m417case(cimport, false);
            } else {
                if (tagNo != 4) {
                    throw new IllegalArgumentException("Unknown tag encountered: " + cimport.getTagNo());
                }
                this.f5281try = Cclass.m32797class(cimport, false);
            }
            i++;
        }
        this.f5276case = Cinstanceof.m33068public(csuper.mo33075final(i));
    }

    /* renamed from: else, reason: not valid java name */
    public static q70 m6423else(Object obj) {
        if (obj instanceof q70) {
            return (q70) obj;
        }
        if (obj != null) {
            return new q70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m6424new(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, i, aSN1Encodable));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public b1 m6425break() {
        return this.f5279if;
    }

    /* renamed from: case, reason: not valid java name */
    public Cinstanceof m6426case() {
        return this.f5276case;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cclass m6427catch() {
        return this.f5281try;
    }

    /* renamed from: goto, reason: not valid java name */
    public b1 m6428goto() {
        return this.f5277do;
    }

    /* renamed from: this, reason: not valid java name */
    public b1 m6429this() {
        return this.f5280new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        m6424new(cimport, 0, this.f5277do);
        m6424new(cimport, 1, this.f5279if);
        m6424new(cimport, 2, this.f5278for);
        m6424new(cimport, 3, this.f5280new);
        m6424new(cimport, 4, this.f5281try);
        cimport.m3516do(this.f5276case);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cinstanceof m6430try() {
        return this.f5278for;
    }
}
