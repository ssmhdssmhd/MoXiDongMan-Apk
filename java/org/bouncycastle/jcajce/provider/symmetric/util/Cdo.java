package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.w5;
import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends AlgorithmParameterGeneratorSpi {

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31498do = new w5();

    /* renamed from: for, reason: not valid java name */
    public int f31499for = 1024;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f31500if;

    /* renamed from: do, reason: not valid java name */
    public final AlgorithmParameters m34892do(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f31498do.createAlgorithmParameters(str);
    }

    @Override // java.security.AlgorithmParameterGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        this.f31499for = i;
        this.f31500if = secureRandom;
    }
}
