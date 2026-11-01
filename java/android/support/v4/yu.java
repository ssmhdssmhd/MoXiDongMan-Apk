package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yu extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cinstanceof f8327do;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f8328if;

    public yu(Cinstanceof cinstanceof, Cgoto cgoto) {
        if (cinstanceof == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        if (cgoto == null) {
            throw new IllegalArgumentException("'pgenCounter' cannot be null");
        }
        this.f8327do = cinstanceof;
        this.f8328if = cgoto;
    }

    private yu(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f8327do = Cinstanceof.m33068public(csuper.mo33075final(0));
            this.f8328if = Cgoto.m33040catch(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static yu m9941new(Object obj) {
        if (obj instanceof yu) {
            return (yu) obj;
        }
        if (obj != null) {
            return new yu(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static yu m9942try(Cimport cimport, boolean z) {
        return m9941new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public Cgoto m9943case() {
        return this.f8328if;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m9944else() {
        return this.f8327do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8327do);
        cimport.m3516do(this.f8328if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
