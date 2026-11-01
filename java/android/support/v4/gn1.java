package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class gn1 extends Cbreak implements ASN1Choice {

    /* renamed from: case, reason: not valid java name */
    public static final int f2172case = 1;

    /* renamed from: new, reason: not valid java name */
    public static final int f2173new = -1;

    /* renamed from: try, reason: not valid java name */
    public static final int f2174try = 0;

    /* renamed from: do, reason: not valid java name */
    private rg f2175do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f2176for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f2177if;

    public gn1(int i, byte[] bArr) {
        this(new org.bouncycastle.asn1.u(i, new org.bouncycastle.asn1.j(bArr)));
    }

    public gn1(rg rgVar) {
        this.f2175do = rgVar;
    }

    private gn1(Cimport cimport) {
        if (cimport.getTagNo() == 0) {
            this.f2177if = Cclass.m32797class(cimport, true).mo5490const();
        } else {
            if (cimport.getTagNo() == 1) {
                this.f2176for = Cclass.m32797class(cimport, true).mo5490const();
                return;
            }
            throw new IllegalArgumentException("unknown tag number: " + cimport.getTagNo());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static gn1 m2745case(Cimport cimport, boolean z) {
        if (z) {
            return m2746try(cimport.m33065const());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    /* renamed from: try, reason: not valid java name */
    public static gn1 m2746try(Object obj) {
        if (obj == null || (obj instanceof gn1)) {
            return (gn1) obj;
        }
        if (obj instanceof Csuper) {
            return new gn1(rg.m6956try(obj));
        }
        if (obj instanceof Cimport) {
            return new gn1((Cimport) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public int m2747else() {
        if (this.f2175do != null) {
            return -1;
        }
        return this.f2177if != null ? 0 : 1;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m2748new() {
        rg rgVar = this.f2175do;
        if (rgVar == null) {
            byte[] bArr = this.f2177if;
            return bArr != null ? q3.m6371final(bArr) : q3.m6371final(this.f2176for);
        }
        try {
            return rgVar.getEncoded();
        } catch (IOException e) {
            throw new IllegalStateException("can't decode certificate: " + e);
        }
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2177if != null ? new org.bouncycastle.asn1.u(0, new org.bouncycastle.asn1.j(this.f2177if)) : this.f2176for != null ? new org.bouncycastle.asn1.u(1, new org.bouncycastle.asn1.j(this.f2176for)) : this.f2175do.toASN1Primitive();
    }
}
