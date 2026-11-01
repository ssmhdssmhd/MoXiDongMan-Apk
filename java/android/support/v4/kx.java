package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class kx extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f3495for = 1;

    /* renamed from: if, reason: not valid java name */
    public static final int f3496if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f3497new = 2;

    /* renamed from: do, reason: not valid java name */
    private Cimport f3498do;

    public kx(int i) {
        this.f3498do = new org.bouncycastle.asn1.u(false, 0, new Cgoto(i));
    }

    public kx(Ccase ccase) {
        this.f3498do = new org.bouncycastle.asn1.u(false, 2, ccase);
    }

    private kx(Cimport cimport) {
        if (cimport.getTagNo() <= 2) {
            this.f3498do = cimport;
            return;
        }
        throw new IllegalArgumentException("Bad tag number: " + cimport.getTagNo());
    }

    public kx(boolean z, String str) {
        if (str.length() > 2) {
            throw new IllegalArgumentException("country can only be 2 characters");
        }
        if (z) {
            this.f3498do = new org.bouncycastle.asn1.u(false, 1, new org.bouncycastle.asn1.n(new org.bouncycastle.asn1.m(str, true)));
            return;
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(Cfor.f29067new);
        cimport.m3516do(new org.bouncycastle.asn1.m(str, true));
        this.f3498do = new org.bouncycastle.asn1.u(false, 1, new org.bouncycastle.asn1.n(cimport));
    }

    /* renamed from: case, reason: not valid java name */
    public static kx m4528case(Object obj) {
        if (obj == null || (obj instanceof kx)) {
            return (kx) obj;
        }
        if (obj instanceof Cimport) {
            return new kx((Cimport) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public int m4529else() {
        return this.f3498do.getTagNo();
    }

    /* renamed from: goto, reason: not valid java name */
    public int m4530goto() {
        if (this.f3498do.getTagNo() != 0) {
            return -1;
        }
        return Cgoto.m33041class(this.f3498do, false).m33044final().intValue();
    }

    /* renamed from: new, reason: not valid java name */
    public Csuper m4531new() {
        if (this.f3498do.getTagNo() != 1) {
            return null;
        }
        return Csuper.m33130class(this.f3498do, false);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f3498do;
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m4532try() {
        if (this.f3498do.getTagNo() != 2) {
            return null;
        }
        return Ccase.m32775super(this.f3498do, false);
    }
}
