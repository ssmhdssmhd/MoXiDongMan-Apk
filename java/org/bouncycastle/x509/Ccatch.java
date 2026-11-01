package org.bouncycastle.x509;

import android.support.v4.s42;
import android.support.v4.tg0;
import android.support.v4.v42;
import android.support.v4.x42;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.util.Selector;

/* renamed from: org.bouncycastle.x509.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements Selector {

    /* renamed from: do, reason: not valid java name */
    private Cdo f32698do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f32700for;

    /* renamed from: if, reason: not valid java name */
    private Cif f32701if;

    /* renamed from: new, reason: not valid java name */
    private Date f32702new;

    /* renamed from: try, reason: not valid java name */
    private X509AttributeCertificate f32703try;

    /* renamed from: case, reason: not valid java name */
    private Collection f32697case = new HashSet();

    /* renamed from: else, reason: not valid java name */
    private Collection f32699else = new HashSet();

    /* renamed from: try, reason: not valid java name */
    private Set m36424try(Collection collection) throws IOException {
        if (collection == null || collection.isEmpty()) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        for (Object objM7877try : collection) {
            if (!(objM7877try instanceof tg0)) {
                objM7877try = tg0.m7877try(Cfinal.m33015else((byte[]) objM7877try));
            }
            hashSet.add(objM7877try);
        }
        return hashSet;
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m36425break() {
        return this.f32700for;
    }

    /* renamed from: case, reason: not valid java name */
    public X509AttributeCertificate m36426case() {
        return this.f32703try;
    }

    /* renamed from: catch, reason: not valid java name */
    public Collection m36427catch() {
        return Collections.unmodifiableCollection(this.f32699else);
    }

    /* renamed from: class, reason: not valid java name */
    public Collection m36428class() {
        return Collections.unmodifiableCollection(this.f32697case);
    }

    @Override // org.bouncycastle.util.Selector, java.security.cert.CertSelector
    public Object clone() {
        Ccatch ccatch = new Ccatch();
        ccatch.f32703try = this.f32703try;
        ccatch.f32702new = m36431else();
        ccatch.f32698do = this.f32698do;
        ccatch.f32701if = this.f32701if;
        ccatch.f32700for = this.f32700for;
        ccatch.f32699else = m36427catch();
        ccatch.f32697case = m36428class();
        return ccatch;
    }

    /* renamed from: const, reason: not valid java name */
    public void m36429const(X509AttributeCertificate x509AttributeCertificate) {
        this.f32703try = x509AttributeCertificate;
    }

    /* renamed from: do, reason: not valid java name */
    public void m36430do(tg0 tg0Var) {
        this.f32699else.add(tg0Var);
    }

    /* renamed from: else, reason: not valid java name */
    public Date m36431else() {
        if (this.f32702new != null) {
            return new Date(this.f32702new.getTime());
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public void m36432final(Date date) {
        if (date != null) {
            this.f32702new = new Date(date.getTime());
        } else {
            this.f32702new = null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m36433for(tg0 tg0Var) {
        this.f32697case.add(tg0Var);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdo m36434goto() {
        return this.f32698do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m36435if(byte[] bArr) throws IOException {
        m36430do(tg0.m7877try(Cfinal.m33015else(bArr)));
    }

    /* renamed from: import, reason: not valid java name */
    public void m36436import(Collection collection) throws IOException {
        this.f32699else = m36424try(collection);
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        byte[] extensionValue;
        x42[] x42VarArrM8751try;
        if (!(obj instanceof X509AttributeCertificate)) {
            return false;
        }
        X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) obj;
        X509AttributeCertificate x509AttributeCertificate2 = this.f32703try;
        if (x509AttributeCertificate2 != null && !x509AttributeCertificate2.equals(x509AttributeCertificate)) {
            return false;
        }
        if (this.f32700for != null && !x509AttributeCertificate.getSerialNumber().equals(this.f32700for)) {
            return false;
        }
        if (this.f32698do != null && !x509AttributeCertificate.getHolder().equals(this.f32698do)) {
            return false;
        }
        if (this.f32701if != null && !x509AttributeCertificate.getIssuer().equals(this.f32701if)) {
            return false;
        }
        Date date = this.f32702new;
        if (date != null) {
            try {
                x509AttributeCertificate.checkValidity(date);
            } catch (CertificateExpiredException | CertificateNotYetValidException unused) {
                return false;
            }
        }
        if ((!this.f32697case.isEmpty() || !this.f32699else.isEmpty()) && (extensionValue = x509AttributeCertificate.getExtensionValue(Cif.f29322interface.m32795super())) != null) {
            try {
                x42VarArrM8751try = v42.m8750new(new Celse(((j) Cfinal.m33015else(extensionValue)).mo5490const()).m33002break()).m8751try();
                if (!this.f32697case.isEmpty()) {
                    boolean z = false;
                    for (x42 x42Var : x42VarArrM8751try) {
                        s42[] s42VarArrM9393try = x42Var.m9393try();
                        int i = 0;
                        while (true) {
                            if (i >= s42VarArrM9393try.length) {
                                break;
                            }
                            if (this.f32697case.contains(tg0.m7877try(s42VarArrM9393try[i].m7264case()))) {
                                z = true;
                                break;
                            }
                            i++;
                        }
                    }
                    if (!z) {
                        return false;
                    }
                }
            } catch (IOException | IllegalArgumentException unused2) {
            }
            if (!this.f32699else.isEmpty()) {
                boolean z2 = false;
                for (x42 x42Var2 : x42VarArrM8751try) {
                    s42[] s42VarArrM9393try2 = x42Var2.m9393try();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= s42VarArrM9393try2.length) {
                            break;
                        }
                        if (this.f32699else.contains(tg0.m7877try(s42VarArrM9393try2[i2].m7265try()))) {
                            z2 = true;
                            break;
                        }
                        i2++;
                    }
                }
                if (!z2) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: native, reason: not valid java name */
    public void m36437native(Collection collection) throws IOException {
        this.f32697case = m36424try(collection);
    }

    /* renamed from: new, reason: not valid java name */
    public void m36438new(byte[] bArr) throws IOException {
        m36433for(tg0.m7877try(Cfinal.m33015else(bArr)));
    }

    /* renamed from: super, reason: not valid java name */
    public void m36439super(Cdo cdo) {
        this.f32698do = cdo;
    }

    /* renamed from: this, reason: not valid java name */
    public Cif m36440this() {
        return this.f32701if;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m36441throw(Cif cif) {
        this.f32701if = cif;
    }

    /* renamed from: while, reason: not valid java name */
    public void m36442while(BigInteger bigInteger) {
        this.f32700for = bigInteger;
    }
}
