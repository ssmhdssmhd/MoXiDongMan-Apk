package org.bouncycastle.jcajce.provider.asymmetric.util;

import android.support.v4.w5;
import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif extends AlgorithmParameterGeneratorSpi {

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31254do = new w5();

    /* renamed from: do, reason: not valid java name */
    public final AlgorithmParameters m34749do(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f31254do.createAlgorithmParameters(str);
    }
}
