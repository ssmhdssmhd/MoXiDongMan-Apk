package org.bouncycastle.asn1.x509;

import android.support.v4.b1;
import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;

/* renamed from: org.bouncycastle.asn1.x509.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f29355do;

    /* renamed from: if, reason: not valid java name */
    private Cinstanceof f29356if;

    public Ctry(b1 b1Var, ASN1Encodable aSN1Encodable) throws IOException {
        this.f29356if = new Cinstanceof(aSN1Encodable);
        this.f29355do = b1Var;
    }

    public Ctry(b1 b1Var, byte[] bArr) {
        this.f29356if = new Cinstanceof(bArr);
        this.f29355do = b1Var;
    }

    public Ctry(Csuper csuper) {
        if (csuper.size() == 2) {
            Enumeration enumerationMo33076super = csuper.mo33076super();
            this.f29355do = b1.m418try(enumerationMo33076super.nextElement());
            this.f29356if = Cinstanceof.m33068public(enumerationMo33076super.nextElement());
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Ctry m33291case(Object obj) {
        if (obj instanceof Ctry) {
            return (Ctry) obj;
        }
        if (obj != null) {
            return new Ctry(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static Ctry m33292else(Cimport cimport, boolean z) {
        return m33291case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cfinal m33293break() throws IOException {
        return Cfinal.m33015else(this.f29356if.m33059super());
    }

    /* renamed from: goto, reason: not valid java name */
    public Cfinal m33294goto() throws IOException {
        return Cfinal.m33015else(this.f29356if.m33059super());
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m33295new() {
        return this.f29355do;
    }

    /* renamed from: this, reason: not valid java name */
    public Cinstanceof m33296this() {
        return this.f29356if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        cimport.m3516do(this.f29355do);
        cimport.m3516do(this.f29356if);
        return new n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m33297try() {
        return this.f29355do;
    }
}
