package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ov extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private int f4754do;

    /* renamed from: for, reason: not valid java name */
    private int f4755for;

    /* renamed from: if, reason: not valid java name */
    private int f4756if;

    /* renamed from: new, reason: not valid java name */
    private int f4757new;

    public ov(int i, int i2) {
        this(i, i2, 0, 0);
    }

    public ov(int i, int i2, int i3, int i4) {
        this.f4754do = i;
        this.f4756if = i2;
        this.f4755for = i3;
        this.f4757new = i4;
    }

    private ov(Csuper csuper) {
        this.f4754do = Cgoto.m33040catch(csuper.mo33075final(0)).m33043const().intValue();
        if (csuper.mo33075final(1) instanceof Cgoto) {
            this.f4756if = ((Cgoto) csuper.mo33075final(1)).m33043const().intValue();
        } else {
            if (!(csuper.mo33075final(1) instanceof Csuper)) {
                throw new IllegalArgumentException("object parse error");
            }
            Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(1));
            this.f4756if = Cgoto.m33040catch(csuperM33129catch.mo33075final(0)).m33043const().intValue();
            this.f4755for = Cgoto.m33040catch(csuperM33129catch.mo33075final(1)).m33043const().intValue();
            this.f4757new = Cgoto.m33040catch(csuperM33129catch.mo33075final(2)).m33043const().intValue();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ov m5779new(Object obj) {
        if (obj instanceof ov) {
            return (ov) obj;
        }
        if (obj != null) {
            return new ov(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m5780case() {
        return this.f4755for;
    }

    /* renamed from: else, reason: not valid java name */
    public int m5781else() {
        return this.f4757new;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m5782goto() {
        return this.f4754do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f4754do));
        if (this.f4755for == 0) {
            cimport.m3516do(new Cgoto(this.f4756if));
        } else {
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(new Cgoto(this.f4756if));
            cimport2.m3516do(new Cgoto(this.f4755for));
            cimport2.m3516do(new Cgoto(this.f4757new));
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public int m5783try() {
        return this.f4756if;
    }
}
