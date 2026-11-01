package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimplements;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class g10 extends Cbreak implements ASN1Choice, ASN1String {

    /* renamed from: do, reason: not valid java name */
    private ASN1String f2039do;

    public g10(String str) {
        this.f2039do = new org.bouncycastle.asn1.v(str);
    }

    private g10(Cimplements cimplements) {
        this.f2039do = cimplements;
    }

    private g10(org.bouncycastle.asn1.m mVar) {
        this.f2039do = mVar;
    }

    private g10(org.bouncycastle.asn1.s sVar) {
        this.f2039do = sVar;
    }

    private g10(org.bouncycastle.asn1.v vVar) {
        this.f2039do = vVar;
    }

    private g10(org.bouncycastle.asn1.w wVar) {
        this.f2039do = wVar;
    }

    /* renamed from: new, reason: not valid java name */
    public static g10 m2502new(Object obj) {
        if (obj == null || (obj instanceof g10)) {
            return (g10) obj;
        }
        if (obj instanceof org.bouncycastle.asn1.s) {
            return new g10((org.bouncycastle.asn1.s) obj);
        }
        if (obj instanceof org.bouncycastle.asn1.m) {
            return new g10((org.bouncycastle.asn1.m) obj);
        }
        if (obj instanceof org.bouncycastle.asn1.w) {
            return new g10((org.bouncycastle.asn1.w) obj);
        }
        if (obj instanceof org.bouncycastle.asn1.v) {
            return new g10((org.bouncycastle.asn1.v) obj);
        }
        if (obj instanceof Cimplements) {
            return new g10((Cimplements) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static g10 m2503try(Cimport cimport, boolean z) {
        if (z) {
            return m2502new(cimport.m33065const());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return this.f2039do.getString();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return ((ASN1Encodable) this.f2039do).toASN1Primitive();
    }

    public String toString() {
        return this.f2039do.getString();
    }
}
