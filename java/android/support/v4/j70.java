package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.Cvolatile;

/* loaded from: classes3.dex */
public class j70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f3023do;

    /* renamed from: for, reason: not valid java name */
    private Cthrow f3024for;

    /* renamed from: if, reason: not valid java name */
    private h70 f3025if;

    public j70(h70 h70Var) {
        this(h70Var, null);
    }

    public j70(h70 h70Var, Cthrow cthrow) {
        this.f3023do = new Cgoto(cthrow == null ? 0L : 2L);
        this.f3025if = h70Var;
        this.f3024for = cthrow;
    }

    private j70(Csuper csuper) {
        this.f3023do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f3025if = h70.m2959else(csuper.mo33075final(1));
        if (csuper.size() == 3) {
            this.f3024for = Cthrow.m33152const((Cimport) csuper.mo33075final(2), false);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static j70 m3736try(Object obj) {
        if (obj instanceof j70) {
            return (j70) obj;
        }
        if (obj != null) {
            return new j70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cthrow m3737case() {
        return this.f3024for;
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m3738else() {
        return this.f3023do;
    }

    /* renamed from: new, reason: not valid java name */
    public h70 m3739new() {
        return this.f3025if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3023do);
        cimport.m3516do(this.f3025if);
        Cthrow cthrow = this.f3024for;
        if (cthrow != null) {
            cimport.m3516do(new Cvolatile(false, 1, cthrow));
        }
        return new Cpackage(cimport);
    }
}
