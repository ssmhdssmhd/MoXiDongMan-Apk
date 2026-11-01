package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class zz1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f8693do;

    /* renamed from: if, reason: not valid java name */
    private tg0 f8694if;

    /* renamed from: for, reason: not valid java name */
    public static final Cgoto f8690for = new Cgoto(0);

    /* renamed from: new, reason: not valid java name */
    public static final Cgoto f8691new = new Cgoto(1);

    /* renamed from: try, reason: not valid java name */
    public static final Cgoto f8692try = new Cgoto(2);

    /* renamed from: case, reason: not valid java name */
    public static final Cgoto f8689case = new Cgoto(3);

    public zz1(Cgoto cgoto, tg0 tg0Var) {
        this.f8693do = cgoto;
        this.f8694if = tg0Var;
    }

    private zz1(Csuper csuper) {
        this.f8693do = Cgoto.m33040catch(csuper.mo33075final(0));
        if (csuper.size() == 2) {
            this.f8694if = tg0.m7877try(csuper.mo33075final(1));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static zz1 m10331new(Object obj) {
        if (obj instanceof zz1) {
            return (zz1) obj;
        }
        if (obj != null) {
            return new zz1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cgoto m10332case() {
        return this.f8693do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8693do);
        tg0 tg0Var = this.f8694if;
        if (tg0Var != null) {
            cimport.m3516do(tg0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public tg0 m10333try() {
        return this.f8694if;
    }
}
