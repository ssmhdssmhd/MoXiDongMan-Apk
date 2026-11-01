package org.bouncycastle.jce.provider;

import android.support.v4.tg;
import android.support.v4.x12;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateParsingException;
import java.util.ArrayList;
import java.util.Collection;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.x509.Cclass;
import org.bouncycastle.x509.Csuper;

/* renamed from: org.bouncycastle.jce.provider.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimplements extends Csuper {

    /* renamed from: do, reason: not valid java name */
    private InputStream f31637do = null;

    /* renamed from: new, reason: not valid java name */
    private Cclass m35047new(InputStream inputStream) throws CertificateParsingException, IOException {
        return new Cclass(tg.m7867try((org.bouncycastle.asn1.Csuper) new Celse(inputStream).m33002break()));
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: do, reason: not valid java name */
    public void mo35048do(InputStream inputStream) {
        this.f31637do = inputStream;
        if (inputStream.markSupported()) {
            return;
        }
        this.f31637do = new BufferedInputStream(this.f31637do);
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: for, reason: not valid java name */
    public Collection mo35049for() throws x12 {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Cclass cclass = (Cclass) mo35050if();
            if (cclass == null) {
                return arrayList;
            }
            arrayList.add(cclass);
        }
    }

    @Override // org.bouncycastle.x509.Csuper
    /* renamed from: if, reason: not valid java name */
    public Object mo35050if() throws x12, IOException {
        try {
            this.f31637do.mark(10);
            if (this.f31637do.read() == -1) {
                return null;
            }
            this.f31637do.reset();
            return m35047new(this.f31637do);
        } catch (Exception e) {
            throw new x12(e.toString(), e);
        }
    }
}
