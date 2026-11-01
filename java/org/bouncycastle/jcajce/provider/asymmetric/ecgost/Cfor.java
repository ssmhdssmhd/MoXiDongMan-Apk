package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import android.support.v4.a4;
import android.support.v4.e40;
import android.support.v4.fc1;
import android.support.v4.h50;
import android.support.v4.ig0;
import android.support.v4.ld2;
import android.support.v4.m50;
import android.support.v4.yh2;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends org.bouncycastle.jcajce.provider.asymmetric.util.Cdo {

    /* renamed from: const, reason: not valid java name */
    private static final yh2 f31110const = new yh2();

    /* renamed from: break, reason: not valid java name */
    private e40 f31111break;

    /* renamed from: catch, reason: not valid java name */
    private m50 f31112catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f31113class;

    /* renamed from: this, reason: not valid java name */
    private String f31114this;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost.for$do, reason: invalid class name */
    public class Cdo extends InvalidKeyException {
        public final /* synthetic */ Exception val$e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, Exception exc) {
            super(str);
            this.val$e = exc;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.val$e;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost.for$if, reason: invalid class name */
    public static class Cif extends Cfor {
        public Cif() {
            super("ECGOST3410", new m50(new ig0()), null);
        }
    }

    public Cfor(String str, m50 m50Var, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31114this = str;
        this.f31112catch = m50Var;
    }

    /* renamed from: case, reason: not valid java name */
    public static a4 m34677case(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof org.bouncycastle.jcajce.provider.asymmetric.ec.Cfor ? ((org.bouncycastle.jcajce.provider.asymmetric.ecgost.Cif) publicKey).engineGetKeyParameters() : Celse.m34743try(publicKey);
    }

    /* renamed from: else, reason: not valid java name */
    private static String m34678else(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m34679goto(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException {
        if (key instanceof PrivateKey) {
            h50 h50Var = (h50) Celse.m34740new((PrivateKey) key);
            this.f31111break = h50Var.m7258if();
            byte[] bArrM4644do = algorithmParameterSpec instanceof ld2 ? ((ld2) algorithmParameterSpec).m4644do() : null;
            this.f31246for = bArrM4644do;
            this.f31112catch.m4847new(new fc1(h50Var, bArrM4644do));
            return;
        }
        throw new InvalidKeyException(this.f31114this + " key agreement requires " + m34678else(ECPrivateKey.class) + " for initialisation");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo
    /* renamed from: do */
    public byte[] mo9261do() {
        return this.f31113class;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) throws IllegalStateException, InvalidKeyException {
        if (this.f31111break == null) {
            throw new IllegalStateException(this.f31114this + " not initialised.");
        }
        if (!z) {
            throw new IllegalStateException(this.f31114this + " can only be between two parties.");
        }
        if (!(key instanceof PublicKey)) {
            throw new InvalidKeyException(this.f31114this + " key agreement requires " + m34678else(ECPublicKey.class) + " for doPhase");
        }
        try {
            this.f31113class = this.f31112catch.m4845do(m34677case((PublicKey) key));
            return null;
        } catch (Exception e) {
            throw new Cdo("calculation failed: " + e.getMessage(), e);
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        m34679goto(key, null);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof ld2)) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        m34679goto(key, algorithmParameterSpec);
    }
}
