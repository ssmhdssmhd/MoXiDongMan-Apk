package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class r4 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private k4 f5632case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f5633do;

    /* renamed from: else, reason: not valid java name */
    private Csuper f5634else;

    /* renamed from: for, reason: not valid java name */
    private j4 f5635for;

    /* renamed from: goto, reason: not valid java name */
    private Cinstanceof f5636goto;

    /* renamed from: if, reason: not valid java name */
    private rj0 f5637if;

    /* renamed from: new, reason: not valid java name */
    private b1 f5638new;

    /* renamed from: this, reason: not valid java name */
    private y90 f5639this;

    /* renamed from: try, reason: not valid java name */
    private Cgoto f5640try;

    private r4(Csuper csuper) {
        if (csuper.size() < 6 || csuper.size() > 9) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        int i = 0;
        if (csuper.mo33075final(0) instanceof Cgoto) {
            this.f5633do = Cgoto.m33040catch(csuper.mo33075final(0));
            i = 1;
        } else {
            this.f5633do = new Cgoto(0L);
        }
        this.f5637if = rj0.m6998case(csuper.mo33075final(i));
        this.f5635for = j4.m3715new(csuper.mo33075final(i + 1));
        this.f5638new = b1.m418try(csuper.mo33075final(i + 2));
        this.f5640try = Cgoto.m33040catch(csuper.mo33075final(i + 3));
        this.f5632case = k4.m4230new(csuper.mo33075final(i + 4));
        this.f5634else = Csuper.m33129catch(csuper.mo33075final(i + 5));
        for (int i2 = i + 6; i2 < csuper.size(); i2++) {
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(i2);
            if (aSN1EncodableMo33075final instanceof Cinstanceof) {
                this.f5636goto = Cinstanceof.m33068public(csuper.mo33075final(i2));
            } else if ((aSN1EncodableMo33075final instanceof Csuper) || (aSN1EncodableMo33075final instanceof y90)) {
                this.f5639this = y90.m9782break(csuper.mo33075final(i2));
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static r4 m6738goto(Object obj) {
        if (obj instanceof r4) {
            return (r4) obj;
        }
        if (obj != null) {
            return new r4(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public static r4 m6739this(Cimport cimport, boolean z) {
        return m6738goto(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public j4 m6740break() {
        return this.f5635for;
    }

    /* renamed from: case, reason: not valid java name */
    public y90 m6741case() {
        return this.f5639this;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cinstanceof m6742catch() {
        return this.f5636goto;
    }

    /* renamed from: class, reason: not valid java name */
    public Cgoto m6743class() {
        return this.f5640try;
    }

    /* renamed from: const, reason: not valid java name */
    public b1 m6744const() {
        return this.f5638new;
    }

    /* renamed from: else, reason: not valid java name */
    public rj0 m6745else() {
        return this.f5637if;
    }

    /* renamed from: final, reason: not valid java name */
    public Cgoto m6746final() {
        return this.f5633do;
    }

    /* renamed from: new, reason: not valid java name */
    public k4 m6747new() {
        return this.f5632case;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5633do.m33044final().intValue() != 0) {
            cimport.m3516do(this.f5633do);
        }
        cimport.m3516do(this.f5637if);
        cimport.m3516do(this.f5635for);
        cimport.m3516do(this.f5638new);
        cimport.m3516do(this.f5640try);
        cimport.m3516do(this.f5632case);
        cimport.m3516do(this.f5634else);
        Cinstanceof cinstanceof = this.f5636goto;
        if (cinstanceof != null) {
            cimport.m3516do(cinstanceof);
        }
        y90 y90Var = this.f5639this;
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Csuper m6748try() {
        return this.f5634else;
    }
}
