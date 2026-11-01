package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class bt extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f529do;

    /* renamed from: if, reason: not valid java name */
    private rg[] f530if;

    private bt(Csuper csuper) {
        this.f529do = new Cgoto(0L);
        if (csuper == null || csuper.size() == 0) {
            throw new IllegalArgumentException("null or empty sequence passed.");
        }
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("Incorrect sequence size: " + csuper.size());
        }
        int i = 0;
        this.f529do = Cgoto.m33040catch(csuper.mo33075final(0));
        Cthrow cthrowM33151class = Cthrow.m33151class(csuper.mo33075final(1));
        this.f530if = new rg[cthrowM33151class.size()];
        while (true) {
            rg[] rgVarArr = this.f530if;
            if (i >= rgVarArr.length) {
                return;
            }
            rgVarArr[i] = rg.m6956try(cthrowM33151class.m33158super(i));
            i++;
        }
    }

    public bt(rg[] rgVarArr) {
        this.f529do = new Cgoto(0L);
        this.f530if = m638new(rgVarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static bt m637case(Object obj) {
        if (obj instanceof bt) {
            return (bt) obj;
        }
        if (obj != null) {
            return new bt(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private rg[] m638new(rg[] rgVarArr) {
        int length = rgVarArr.length;
        rg[] rgVarArr2 = new rg[length];
        for (int i = 0; i != length; i++) {
            rgVarArr2[i] = rgVarArr[i];
        }
        return rgVarArr2;
    }

    /* renamed from: else, reason: not valid java name */
    public int m639else() {
        return this.f529do.m33044final().intValue();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f529do);
        Cimport cimport2 = new Cimport();
        int i = 0;
        while (true) {
            rg[] rgVarArr = this.f530if;
            if (i >= rgVarArr.length) {
                cimport.m3516do(new org.bouncycastle.asn1.q(cimport2));
                return new org.bouncycastle.asn1.n(cimport);
            }
            cimport2.m3516do(rgVarArr[i]);
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public rg[] m640try() {
        return m638new(this.f530if);
    }
}
