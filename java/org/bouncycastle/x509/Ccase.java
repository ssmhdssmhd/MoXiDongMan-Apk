package org.bouncycastle.x509;

import android.support.v4.ah2;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.util.Selector;

/* renamed from: org.bouncycastle.x509.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Celse {

    /* renamed from: const, reason: not valid java name */
    private int f32695const;

    /* renamed from: final, reason: not valid java name */
    private Set f32696final;

    public Ccase(Set set, Selector selector) throws InvalidAlgorithmParameterException {
        super(set);
        this.f32695const = 5;
        this.f32696final = Collections.EMPTY_SET;
        m36476return(selector);
    }

    /* renamed from: case, reason: not valid java name */
    public static Celse m36418case(PKIXParameters pKIXParameters) throws InvalidAlgorithmParameterException {
        try {
            Ccase ccase = new Ccase(pKIXParameters.getTrustAnchors(), ah2.m251do((X509CertSelector) pKIXParameters.getTargetCertConstraints()));
            ccase.mo36422import(pKIXParameters);
            return ccase;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.x509.Celse, java.security.cert.PKIXParameters, java.security.cert.CertPathParameters
    public Object clone() throws InvalidAlgorithmParameterException {
        try {
            Ccase ccase = new Ccase(getTrustAnchors(), m36463break());
            ccase.mo36422import(this);
            return ccase;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: default, reason: not valid java name */
    public Set m36419default() {
        return Collections.unmodifiableSet(this.f32696final);
    }

    /* renamed from: extends, reason: not valid java name */
    public int m36420extends() {
        return this.f32695const;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m36421finally(Set set) {
        if (set == null) {
            Set set2 = Collections.EMPTY_SET;
        } else {
            this.f32696final = new HashSet(set);
        }
    }

    @Override // org.bouncycastle.x509.Celse
    /* renamed from: import, reason: not valid java name */
    public void mo36422import(PKIXParameters pKIXParameters) throws InvalidAlgorithmParameterException {
        super.mo36422import(pKIXParameters);
        if (pKIXParameters instanceof Ccase) {
            Ccase ccase = (Ccase) pKIXParameters;
            this.f32695const = ccase.f32695const;
            this.f32696final = new HashSet(ccase.f32696final);
        }
        if (pKIXParameters instanceof PKIXBuilderParameters) {
            this.f32695const = ((PKIXBuilderParameters) pKIXParameters).getMaxPathLength();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void m36423package(int i) {
        if (i < -1) {
            throw new InvalidParameterException("The maximum path length parameter can not be less than -1.");
        }
        this.f32695const = i;
    }
}
