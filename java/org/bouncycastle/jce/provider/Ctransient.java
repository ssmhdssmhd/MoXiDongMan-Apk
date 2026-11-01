package org.bouncycastle.jce.provider;

import android.support.v4.ky1;
import android.support.v4.x12;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Cdo;
import org.bouncycastle.x509.Csuper;

/* renamed from: org.bouncycastle.jce.provider.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctransient extends Csuper {

    /* renamed from: new, reason: not valid java name */
    private static final Cstatic f31680new = new Cstatic("CRL");

    /* renamed from: do, reason: not valid java name */
    private Cthrow f31681do = null;

    /* renamed from: if, reason: not valid java name */
    private int f31683if = 0;

    /* renamed from: for, reason: not valid java name */
    private InputStream f31682for = null;

    /* renamed from: case, reason: not valid java name */
    private CRL m35122case(InputStream inputStream) throws IOException, CRLException {
        org.bouncycastle.asn1.Csuper csuperM35109if = f31680new.m35109if(inputStream);
        if (csuperM35109if != null) {
            return new Cprotected(Cdo.m33207new(csuperM35109if));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private CRL m35123new() throws CRLException {
        Cthrow cthrow = this.f31681do;
        if (cthrow == null || this.f31683if >= cthrow.size()) {
            return null;
        }
        Cthrow cthrow2 = this.f31681do;
        int i = this.f31683if;
        this.f31683if = i + 1;
        return new Cprotected(Cdo.m33207new(cthrow2.m33158super(i)));
    }

    /* renamed from: try, reason: not valid java name */
    private CRL m35124try(InputStream inputStream) throws IOException, CRLException {
        org.bouncycastle.asn1.Csuper csuper = (org.bouncycastle.asn1.Csuper) new Celse(inputStream).m33002break();
        if (csuper.size() <= 1 || !(csuper.mo33075final(0) instanceof Ccatch) || !csuper.mo33075final(0).equals(PKCSObjectIdentifiers.signedData)) {
            return new Cprotected(Cdo.m33207new(csuper));
        }
        this.f31681do = new ky1(org.bouncycastle.asn1.Csuper.m33130class((Cimport) csuper.mo33075final(1), true)).m4540new();
        return m35123new();
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: do */
    public void mo35048do(InputStream inputStream) {
        this.f31682for = inputStream;
        this.f31681do = null;
        this.f31683if = 0;
        if (inputStream.markSupported()) {
            return;
        }
        this.f31682for = new BufferedInputStream(this.f31682for);
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: for */
    public Collection mo35049for() throws x12 {
        ArrayList arrayList = new ArrayList();
        while (true) {
            CRL crl = (CRL) mo35050if();
            if (crl == null) {
                return arrayList;
            }
            arrayList.add(crl);
        }
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: if */
    public Object mo35050if() throws x12, IOException {
        try {
            Cthrow cthrow = this.f31681do;
            if (cthrow != null) {
                if (this.f31683if != cthrow.size()) {
                    return m35123new();
                }
                this.f31681do = null;
                this.f31683if = 0;
                return null;
            }
            this.f31682for.mark(10);
            int i = this.f31682for.read();
            if (i == -1) {
                return null;
            }
            if (i != 48) {
                this.f31682for.reset();
                return m35122case(this.f31682for);
            }
            this.f31682for.reset();
            return m35124try(this.f31682for);
        } catch (Exception e) {
            throw new x12(e.toString(), e);
        }
    }
}
