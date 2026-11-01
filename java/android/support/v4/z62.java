package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class z62 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public y90 f8455case;

    /* renamed from: do, reason: not valid java name */
    public Cgoto f8456do;

    /* renamed from: for, reason: not valid java name */
    public Ccatch f8457for;

    /* renamed from: if, reason: not valid java name */
    public uz0 f8458if;

    /* renamed from: new, reason: not valid java name */
    public Cgoto f8459new;

    /* renamed from: try, reason: not valid java name */
    public Cfor f8460try;

    public z62(uz0 uz0Var, Ccatch ccatch, Cgoto cgoto, Cfor cfor, y90 y90Var) {
        this.f8456do = new Cgoto(1L);
        this.f8458if = uz0Var;
        this.f8457for = ccatch;
        this.f8459new = cgoto;
        this.f8460try = cfor;
        this.f8455case = y90Var;
    }

    private z62(Csuper csuper) {
        int size = csuper.size();
        this.f8456do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f8458if = uz0.m8703case(csuper.mo33075final(1));
        for (int i = 2; i < size; i++) {
            if (csuper.mo33075final(i) instanceof Ccatch) {
                this.f8457for = Ccatch.m32790throw(csuper.mo33075final(i));
            } else if (csuper.mo33075final(i) instanceof Cgoto) {
                this.f8459new = Cgoto.m33040catch(csuper.mo33075final(i));
            } else if (csuper.mo33075final(i) instanceof Cfor) {
                this.f8460try = Cfor.m33019const(csuper.mo33075final(i));
            } else if (csuper.mo33075final(i) instanceof Cimport) {
                Cimport cimport = (Cimport) csuper.mo33075final(i);
                if (cimport.getTagNo() == 0) {
                    this.f8455case = y90.m9783catch(cimport, false);
                }
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static z62 m10074case(Object obj) {
        if (obj instanceof z62) {
            return (z62) obj;
        }
        if (obj != null) {
            return new z62(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m10075break() {
        return this.f8456do;
    }

    /* renamed from: else, reason: not valid java name */
    public uz0 m10076else() {
        return this.f8458if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m10077goto() {
        return this.f8459new;
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m10078new() {
        return this.f8460try;
    }

    /* renamed from: this, reason: not valid java name */
    public Ccatch m10079this() {
        return this.f8457for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8456do);
        cimport.m3516do(this.f8458if);
        Ccatch ccatch = this.f8457for;
        if (ccatch != null) {
            cimport.m3516do(ccatch);
        }
        Cgoto cgoto = this.f8459new;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        Cfor cfor = this.f8460try;
        if (cfor != null && cfor.m33022throw()) {
            cimport.m3516do(this.f8460try);
        }
        if (this.f8455case != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f8455case));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public y90 m10080try() {
        return this.f8455case;
    }
}
