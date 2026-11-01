package org.bouncycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Objects;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif extends AlgorithmParametersSpi {
    /* renamed from: do, reason: not valid java name */
    public boolean m34897do(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return mo1580if(cls);
    }

    /* renamed from: if */
    public abstract AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException;
}
