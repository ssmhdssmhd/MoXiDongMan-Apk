package org.bouncycastle.jce.provider;

import android.support.v4.ky1;
import android.support.v4.rg;
import android.support.v4.x12;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.x509.Csuper;

/* renamed from: org.bouncycastle.jce.provider.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cinstanceof extends Csuper {

    /* renamed from: new, reason: not valid java name */
    private static final Cstatic f31638new = new Cstatic("CERTIFICATE");

    /* renamed from: do, reason: not valid java name */
    private Cthrow f31639do = null;

    /* renamed from: if, reason: not valid java name */
    private int f31641if = 0;

    /* renamed from: for, reason: not valid java name */
    private InputStream f31640for = null;

    /* renamed from: case, reason: not valid java name */
    private Certificate m35051case(InputStream inputStream) throws CertificateParsingException, IOException {
        org.bouncycastle.asn1.Csuper csuperM35109if = f31638new.m35109if(inputStream);
        if (csuperM35109if != null) {
            return new Csynchronized(rg.m6956try(csuperM35109if));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private Certificate m35052new() throws CertificateParsingException {
        if (this.f31639do == null) {
            return null;
        }
        while (this.f31641if < this.f31639do.size()) {
            Cthrow cthrow = this.f31639do;
            int i = this.f31641if;
            this.f31641if = i + 1;
            ASN1Encodable aSN1EncodableM33158super = cthrow.m33158super(i);
            if (aSN1EncodableM33158super instanceof org.bouncycastle.asn1.Csuper) {
                return new Csynchronized(rg.m6956try(aSN1EncodableM33158super));
            }
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    private Certificate m35053try(InputStream inputStream) throws CertificateParsingException, IOException {
        org.bouncycastle.asn1.Csuper csuper = (org.bouncycastle.asn1.Csuper) new Celse(inputStream).m33002break();
        if (csuper.size() <= 1 || !(csuper.mo33075final(0) instanceof Ccatch) || !csuper.mo33075final(0).equals(PKCSObjectIdentifiers.signedData)) {
            return new Csynchronized(rg.m6956try(csuper));
        }
        this.f31639do = new ky1(org.bouncycastle.asn1.Csuper.m33130class((Cimport) csuper.mo33075final(1), true)).m4542try();
        return m35052new();
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: do */
    public void mo35048do(InputStream inputStream) {
        this.f31640for = inputStream;
        this.f31639do = null;
        this.f31641if = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.f31640for = new BufferedInputStream(this.f31640for);
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: for */
    public Collection mo35049for() throws x12 {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Certificate certificate = (Certificate) mo35050if();
            if (certificate == null) {
                return arrayList;
            }
            arrayList.add(certificate);
        }
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: if */
    public Object mo35050if() throws x12, IOException {
        try {
            Cthrow cthrow = this.f31639do;
            if (cthrow != null) {
                if (this.f31641if != cthrow.size()) {
                    return m35052new();
                }
                this.f31639do = null;
                this.f31641if = 0;
                return null;
            }
            this.f31640for.mark(10);
            int i = this.f31640for.read();
            if (i == -1) {
                return null;
            }
            if (i != 48) {
                this.f31640for.reset();
                return m35051case(this.f31640for);
            }
            this.f31640for.reset();
            return m35053try(this.f31640for);
        } catch (Exception e) {
            throw new x12(e.toString(), e);
        }
    }
}
