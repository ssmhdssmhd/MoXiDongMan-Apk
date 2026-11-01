package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bh0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final tg2 f434do;

    /* renamed from: for, reason: not valid java name */
    private Ccase f435for;

    /* renamed from: if, reason: not valid java name */
    private tg0 f436if;

    /* renamed from: new, reason: not valid java name */
    private ll1 f437new;

    public bh0(tg2 tg2Var, tg0 tg0Var, Ccase ccase, ll1 ll1Var) {
        this.f434do = tg2Var;
        this.f436if = tg0Var;
        this.f435for = ccase;
        this.f437new = ll1Var;
    }

    private bh0(Csuper csuper) {
        int i = 1;
        if (csuper.size() < 1 || csuper.size() > 4) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f434do = tg2.m7884else(csuper.mo33075final(0));
        if (csuper.size() > 1 && (csuper.mo33075final(1).toASN1Primitive() instanceof Cimport)) {
            this.f436if = tg0.m7877try(csuper.mo33075final(1));
            i = 2;
        }
        if (csuper.size() > i && (csuper.mo33075final(i).toASN1Primitive() instanceof Ccase)) {
            this.f435for = Ccase.m32773final(csuper.mo33075final(i));
            i++;
        }
        if (csuper.size() <= i || !(csuper.mo33075final(i).toASN1Primitive() instanceof Cinstanceof)) {
            return;
        }
        this.f437new = new ll1(Cinstanceof.m33068public(csuper.mo33075final(i)));
    }

    /* renamed from: new, reason: not valid java name */
    public static bh0 m537new(Object obj) {
        if (obj instanceof bh0) {
            return (bh0) obj;
        }
        if (obj != null) {
            return new bh0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ll1 m538case() {
        return this.f437new;
    }

    /* renamed from: else, reason: not valid java name */
    public Ccase m539else() {
        return this.f435for;
    }

    /* renamed from: goto, reason: not valid java name */
    public tg0 m540goto() {
        return this.f436if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f434do);
        tg0 tg0Var = this.f436if;
        if (tg0Var != null) {
            cimport.m3516do(tg0Var);
        }
        Ccase ccase = this.f435for;
        if (ccase != null) {
            cimport.m3516do(ccase);
        }
        ll1 ll1Var = this.f437new;
        if (ll1Var != null) {
            cimport.m3516do(ll1Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public tg2 m541try() {
        return this.f434do;
    }
}
