package org.bouncycastle.asn1.eac;

import android.support.v4.Cimport;
import android.support.v4.Creturn;
import android.support.v4.q3;
import android.support.v4.sg;
import android.support.v4.xg;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Ctransient;
import org.bouncycastle.asn1.j;

/* renamed from: org.bouncycastle.asn1.eac.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    private static int f29000new = 1;

    /* renamed from: try, reason: not valid java name */
    private static int f29001try = 2;

    /* renamed from: do, reason: not valid java name */
    private Cfor f29002do;

    /* renamed from: for, reason: not valid java name */
    private int f29003for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f29004if;

    private Cdo(org.bouncycastle.asn1.Cdo cdo) throws IOException {
        m32933while(cdo);
    }

    public Cdo(Cfor cfor, byte[] bArr) throws IOException {
        this.f29002do = cfor;
        this.f29004if = q3.m6371final(bArr);
        int i = this.f29003for | f29000new;
        this.f29003for = i;
        this.f29003for = i | f29001try;
    }

    public Cdo(Celse celse) throws IOException {
        m32932throw(celse);
    }

    /* renamed from: const, reason: not valid java name */
    public static Cdo m32931const(Object obj) {
        if (obj instanceof Cdo) {
            return (Cdo) obj;
        }
        if (obj == null) {
            return null;
        }
        try {
            return new Cdo(org.bouncycastle.asn1.Cdo.m32915const(obj));
        } catch (IOException e) {
            throw new Creturn("unable to parse data: " + e.getMessage(), e);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m32932throw(Celse celse) throws IOException {
        while (true) {
            Cfinal cfinalM33002break = celse.m33002break();
            if (cfinalM33002break == null) {
                return;
            }
            if (!(cfinalM33002break instanceof org.bouncycastle.asn1.Cdo)) {
                throw new IOException("Invalid Input Stream for creating an Iso7816CertificateStructure");
            }
            m32933while((org.bouncycastle.asn1.Cdo) cfinalM33002break);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m32933while(org.bouncycastle.asn1.Cdo cdo) throws IOException {
        int i;
        int i2;
        this.f29003for = 0;
        if (cdo.m32918catch() != 33) {
            throw new IOException("not a CARDHOLDER_CERTIFICATE :" + cdo.m32918catch());
        }
        Celse celse = new Celse(cdo.m32919class());
        while (true) {
            Cfinal cfinalM33002break = celse.m33002break();
            if (cfinalM33002break == null) {
                celse.close();
                if (this.f29003for == (f29001try | f29000new)) {
                    return;
                }
                throw new IOException("invalid CARDHOLDER_CERTIFICATE :" + cdo.m32918catch());
            }
            if (!(cfinalM33002break instanceof org.bouncycastle.asn1.Cdo)) {
                throw new IOException("Invalid Object, not an Iso7816CertificateStructure");
            }
            org.bouncycastle.asn1.Cdo cdo2 = (org.bouncycastle.asn1.Cdo) cfinalM33002break;
            int iM32918catch = cdo2.m32918catch();
            if (iM32918catch == 55) {
                this.f29004if = cdo2.m32919class();
                i = this.f29003for;
                i2 = f29001try;
            } else {
                if (iM32918catch != 78) {
                    throw new IOException("Invalid tag, not an Iso7816CertificateStructure :" + cdo2.m32918catch());
                }
                this.f29002do = Cfor.m32948catch(cdo2);
                i = this.f29003for;
                i2 = f29000new;
            }
            this.f29003for = i | i2;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Ccase m32934break() throws IOException {
        return new Ccase(this.f29002do.m32960case().m32980new() & 31);
    }

    /* renamed from: case, reason: not valid java name */
    public int m32935case() {
        return this.f29002do.m32965this();
    }

    /* renamed from: catch, reason: not valid java name */
    public int m32936catch() throws IOException {
        return this.f29002do.m32960case().m32980new() & 192;
    }

    /* renamed from: class, reason: not valid java name */
    public sg m32937class() throws IOException {
        return this.f29002do.m32962else();
    }

    /* renamed from: else, reason: not valid java name */
    public Celse m32938else() throws IOException {
        return this.f29002do.m32964new();
    }

    /* renamed from: final, reason: not valid java name */
    public int m32939final() throws IOException {
        return this.f29002do.m32960case().m32980new();
    }

    /* renamed from: goto, reason: not valid java name */
    public Celse m32940goto() throws IOException {
        return this.f29002do.m32966try();
    }

    /* renamed from: new, reason: not valid java name */
    public xg m32941new() throws IOException {
        return this.f29002do.m32959break();
    }

    /* renamed from: super, reason: not valid java name */
    public byte[] m32942super() {
        return q3.m6371final(this.f29004if);
    }

    /* renamed from: this, reason: not valid java name */
    public Ccatch m32943this() throws IOException {
        return this.f29002do.m32960case().m32979case();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f29002do);
        try {
            cimport.m3516do(new Ctransient(false, 55, (ASN1Encodable) new j(this.f29004if)));
            return new Ctransient(33, cimport);
        } catch (IOException unused) {
            throw new IllegalStateException("unable to convert signature!");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Cfor m32944try() {
        return this.f29002do;
    }
}
