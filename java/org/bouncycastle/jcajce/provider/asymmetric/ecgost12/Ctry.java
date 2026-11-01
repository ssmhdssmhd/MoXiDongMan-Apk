package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import android.support.v4.a4;
import android.support.v4.e40;
import android.support.v4.fc1;
import android.support.v4.h50;
import android.support.v4.kg0;
import android.support.v4.ld2;
import android.support.v4.lg0;
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

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends org.bouncycastle.jcajce.provider.asymmetric.util.Cdo {

    /* renamed from: const, reason: not valid java name */
    private static final yh2 f31148const = new yh2();

    /* renamed from: break, reason: not valid java name */
    private e40 f31149break;

    /* renamed from: catch, reason: not valid java name */
    private m50 f31150catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f31151class;

    /* renamed from: this, reason: not valid java name */
    private String f31152this;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.try$do, reason: invalid class name */
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

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.try$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super("ECGOST3410-2012-512", new m50(new lg0()), null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.try$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super("ECGOST3410-2012-256", new m50(new kg0()), null);
        }
    }

    public Ctry(String str, m50 m50Var, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31152this = str;
        this.f31150catch = m50Var;
    }

    /* renamed from: case, reason: not valid java name */
    public static a4 m34694case(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof org.bouncycastle.jcajce.provider.asymmetric.ecgost12.Cif ? ((org.bouncycastle.jcajce.provider.asymmetric.ecgost12.Cif) publicKey).engineGetKeyParameters() : Celse.m34743try(publicKey);
    }

    /* renamed from: else, reason: not valid java name */
    private static String m34695else(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m34696goto(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException {
        if (key instanceof PrivateKey) {
            h50 h50Var = (h50) Celse.m34740new((PrivateKey) key);
            this.f31149break = h50Var.m7258if();
            byte[] bArrM4644do = algorithmParameterSpec instanceof ld2 ? ((ld2) algorithmParameterSpec).m4644do() : null;
            this.f31246for = bArrM4644do;
            this.f31150catch.m4847new(new fc1(h50Var, bArrM4644do));
            return;
        }
        throw new InvalidKeyException(this.f31152this + " key agreement requires " + m34695else(ECPrivateKey.class) + " for initialisation");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo
    /* renamed from: do */
    public byte[] mo9261do() {
        return this.f31151class;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) throws IllegalStateException, InvalidKeyException {
        if (this.f31149break == null) {
            throw new IllegalStateException(this.f31152this + " not initialised.");
        }
        if (!z) {
            throw new IllegalStateException(this.f31152this + " can only be between two parties.");
        }
        if (!(key instanceof PublicKey)) {
            throw new InvalidKeyException(this.f31152this + " key agreement requires " + m34695else(ECPublicKey.class) + " for doPhase");
        }
        try {
            this.f31151class = this.f31150catch.m4845do(m34694case((PublicKey) key));
            return null;
        } catch (Exception e) {
            throw new Cdo("calculation failed: " + e.getMessage(), e);
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        m34696goto(key, null);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof ld2)) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        m34696goto(key, algorithmParameterSpec);
    }
}
