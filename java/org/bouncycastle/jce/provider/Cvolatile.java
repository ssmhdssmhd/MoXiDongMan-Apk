package org.bouncycastle.jce.provider;

import android.support.v4.ky1;
import android.support.v4.x12;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.x509.Cimport;
import org.bouncycastle.x509.Csuper;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.jce.provider.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cvolatile extends Csuper {

    /* renamed from: new, reason: not valid java name */
    private static final Cstatic f31703new = new Cstatic("ATTRIBUTE CERTIFICATE");

    /* renamed from: do, reason: not valid java name */
    private Cthrow f31704do = null;

    /* renamed from: if, reason: not valid java name */
    private int f31706if = 0;

    /* renamed from: for, reason: not valid java name */
    private InputStream f31705for = null;

    /* renamed from: case, reason: not valid java name */
    private X509AttributeCertificate m35155case(InputStream inputStream) throws IOException {
        org.bouncycastle.asn1.Csuper csuperM35109if = f31703new.m35109if(inputStream);
        if (csuperM35109if != null) {
            return new Cimport(csuperM35109if.getEncoded());
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private X509AttributeCertificate m35156new() throws IOException {
        if (this.f31704do == null) {
            return null;
        }
        while (this.f31706if < this.f31704do.size()) {
            Cthrow cthrow = this.f31704do;
            int i = this.f31706if;
            this.f31706if = i + 1;
            ASN1Encodable aSN1EncodableM33158super = cthrow.m33158super(i);
            if (aSN1EncodableM33158super instanceof org.bouncycastle.asn1.Cimport) {
                org.bouncycastle.asn1.Cimport cimport = (org.bouncycastle.asn1.Cimport) aSN1EncodableM33158super;
                if (cimport.getTagNo() == 2) {
                    return new Cimport(org.bouncycastle.asn1.Csuper.m33130class(cimport, false).getEncoded());
                }
            }
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    private X509AttributeCertificate m35157try(InputStream inputStream) throws IOException {
        org.bouncycastle.asn1.Csuper csuper = (org.bouncycastle.asn1.Csuper) new Celse(inputStream).m33002break();
        if (csuper.size() <= 1 || !(csuper.mo33075final(0) instanceof Ccatch) || !csuper.mo33075final(0).equals(PKCSObjectIdentifiers.signedData)) {
            return new Cimport(csuper.getEncoded());
        }
        this.f31704do = new ky1(org.bouncycastle.asn1.Csuper.m33130class((org.bouncycastle.asn1.Cimport) csuper.mo33075final(1), true)).m4542try();
        return m35156new();
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: do */
    public void mo35048do(InputStream inputStream) {
        this.f31705for = inputStream;
        this.f31704do = null;
        this.f31706if = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.f31705for = new BufferedInputStream(this.f31705for);
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: for */
    public Collection mo35049for() throws x12 {
        ArrayList arrayList = new ArrayList();
        while (true) {
            X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) mo35050if();
            if (x509AttributeCertificate == null) {
                return arrayList;
            }
            arrayList.add(x509AttributeCertificate);
        }
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: if */
    public Object mo35050if() throws x12, IOException {
        try {
            Cthrow cthrow = this.f31704do;
            if (cthrow != null) {
                if (this.f31706if != cthrow.size()) {
                    return m35156new();
                }
                this.f31704do = null;
                this.f31706if = 0;
                return null;
            }
            this.f31705for.mark(10);
            int i = this.f31705for.read();
            if (i == -1) {
                return null;
            }
            if (i != 48) {
                this.f31705for.reset();
                return m35155case(this.f31705for);
            }
            this.f31705for.reset();
            return m35157try(this.f31705for);
        } catch (Exception e) {
            throw new x12(e.toString(), e);
        }
    }
}
