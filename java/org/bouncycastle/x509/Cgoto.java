package org.bouncycastle.x509;

import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.util.Collection;
import java.util.Set;

/* renamed from: org.bouncycastle.x509.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cgoto implements Cloneable {
    public abstract Object clone();

    /* renamed from: do, reason: not valid java name */
    public abstract void m36516do(X509AttributeCertificate x509AttributeCertificate, CertPath certPath, CertPath certPath2, Collection collection) throws CertPathValidatorException;

    /* renamed from: if, reason: not valid java name */
    public abstract Set m36517if();
}
