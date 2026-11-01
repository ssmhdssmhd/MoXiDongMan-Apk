package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cthis;

/* loaded from: classes3.dex */
public class rh2 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private Cfinal f5811do;

    public rh2(th2 th2Var) {
        this.f5811do = null;
        this.f5811do = th2Var.toASN1Primitive();
    }

    public rh2(Ccatch ccatch) {
        this.f5811do = null;
        this.f5811do = ccatch;
    }

    public rh2(Cfinal cfinal) {
        this.f5811do = null;
        this.f5811do = cfinal;
    }

    public rh2(Cthis cthis) {
        this.f5811do = null;
        this.f5811do = cthis;
    }

    /* renamed from: new, reason: not valid java name */
    public static rh2 m6988new(Object obj) {
        if (obj == null || (obj instanceof rh2)) {
            return (rh2) obj;
        }
        if (obj instanceof Cfinal) {
            return new rh2((Cfinal) obj);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance()");
        }
        try {
            return new rh2(Cfinal.m33015else((byte[]) obj));
        } catch (Exception e) {
            throw new IllegalArgumentException("unable to parse encoded data: " + e.getMessage());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static rh2 m6989try(Cimport cimport, boolean z) {
        return m6988new(cimport.m33065const());
    }

    /* renamed from: case, reason: not valid java name */
    public Cfinal m6990case() {
        return this.f5811do;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m6991else() {
        return this.f5811do instanceof Cthis;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m6992goto() {
        return this.f5811do instanceof Ccatch;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f5811do;
    }
}
