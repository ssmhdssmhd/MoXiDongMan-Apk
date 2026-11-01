package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.ai2;
import android.support.v4.bi2;
import android.support.v4.ci2;
import android.support.v4.gq0;
import android.support.v4.kg2;
import android.support.v4.ld2;
import android.support.v4.lq;
import android.support.v4.pg2;
import android.support.v4.tu;
import android.support.v4.u00;
import android.support.v4.zh2;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.RawAgreement;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends org.bouncycastle.jcajce.provider.asymmetric.util.Cdo {

    /* renamed from: break, reason: not valid java name */
    private tu f31181break;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f31182catch;

    /* renamed from: this, reason: not valid java name */
    private RawAgreement f31183this;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$break, reason: invalid class name */
    public static class Cbreak extends Ctry {
        public Cbreak() {
            super("X448UwithSHA512KDF", new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$case, reason: invalid class name */
    public static class Ccase extends Ctry {
        public Ccase() {
            super("X25519withSHA384CKDF", new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$catch, reason: invalid class name */
    public static final class Ccatch extends Ctry {
        public Ccatch() {
            super("X448withSHA256CKDF", new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$class, reason: invalid class name */
    public static class Cclass extends Ctry {
        public Cclass() {
            super("X448withSHA384CKDF", new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$const, reason: invalid class name */
    public static final class Cconst extends Ctry {
        public Cconst() {
            super("X448withSHA512CKDF", new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$do, reason: invalid class name */
    public static final class Cdo extends Ctry {
        public Cdo() {
            super(zh2.f8562if);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$else, reason: invalid class name */
    public static class Celse extends Ctry {
        public Celse() {
            super("X25519withSHA512CKDF", new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$final, reason: invalid class name */
    public static final class Cfinal extends Ctry {
        public Cfinal() {
            super("X448withSHA512KDF", new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super("X25519UwithSHA256KDF", new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$goto, reason: invalid class name */
    public static final class Cgoto extends Ctry {
        public Cgoto() {
            super(zh2.f8561for);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super("X25519UwithSHA256CKDF", new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$new, reason: invalid class name */
    public static final class Cnew extends Ctry {
        public Cnew() {
            super("X25519withSHA256CKDF", new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$super, reason: invalid class name */
    public static final class Csuper extends Ctry {
        public Csuper() {
            super("XDH");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$this, reason: invalid class name */
    public static class Cthis extends Ctry {
        public Cthis() {
            super("X448UwithSHA512CKDF", new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.try$try, reason: invalid class name and collision with other inner class name */
    public static final class C0420try extends Ctry {
        public C0420try() {
            super("X25519withSHA256KDF", new gq0(u00.m8177new()));
        }
    }

    public Ctry(String str) {
        super(str, null);
    }

    public Ctry(String str, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
    }

    /* renamed from: case, reason: not valid java name */
    private RawAgreement m34708case(String str) throws InvalidKeyException {
        if (this.f31245do.equals("XDH") || this.f31245do.startsWith(str)) {
            int iIndexOf = this.f31245do.indexOf(85);
            boolean zStartsWith = str.startsWith(zh2.f8561for);
            return iIndexOf > 0 ? zStartsWith ? new ci2(new pg2()) : new ci2(new kg2()) : zStartsWith ? new pg2() : new kg2();
        }
        throw new InvalidKeyException("inappropriate key for " + this.f31245do);
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo
    /* renamed from: do */
    public byte[] mo9261do() {
        return this.f31182catch;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) throws IllegalStateException, InvalidKeyException {
        if (this.f31183this == null) {
            throw new IllegalStateException(this.f31245do + " not initialised.");
        }
        if (!z) {
            throw new IllegalStateException(this.f31245do + " can only be between two parties.");
        }
        if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew)) {
            throw new InvalidKeyException("cannot identify XDH private key");
        }
        a4 a4VarEngineGetKeyParameters = ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew) key).engineGetKeyParameters();
        byte[] bArr = new byte[this.f31183this.getAgreementSize()];
        this.f31182catch = bArr;
        tu tuVar = this.f31181break;
        if (tuVar != null) {
            this.f31183this.calculateAgreement(new bi2(a4VarEngineGetKeyParameters, ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew) tuVar.m8128for()).engineGetKeyParameters()), this.f31182catch, 0);
            return null;
        }
        this.f31183this.calculateAgreement(a4VarEngineGetKeyParameters, bArr, 0);
        return null;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor)) {
            throw new InvalidKeyException("cannot identify XDH private key");
        }
        a4 a4VarEngineGetKeyParameters = ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor) key).engineGetKeyParameters();
        this.f31183this = m34708case(a4VarEngineGetKeyParameters instanceof org.bouncycastle.crypto.params.Cthis ? zh2.f8561for : zh2.f8562if);
        this.f31183this.init(a4VarEngineGetKeyParameters);
        if (this.f31247if != null) {
            this.f31246for = new byte[0];
        } else {
            this.f31246for = null;
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (!(key instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor)) {
            throw new InvalidKeyException("cannot identify XDH private key");
        }
        a4 a4VarEngineGetKeyParameters = ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor) key).engineGetKeyParameters();
        this.f31183this = m34708case(a4VarEngineGetKeyParameters instanceof org.bouncycastle.crypto.params.Cthis ? zh2.f8561for : zh2.f8562if);
        this.f31246for = null;
        if (!(algorithmParameterSpec instanceof tu)) {
            this.f31183this.init(a4VarEngineGetKeyParameters);
            if (!(algorithmParameterSpec instanceof ld2)) {
                throw new InvalidAlgorithmParameterException("unknown ParameterSpec");
            }
            if (this.f31247if == null) {
                throw new InvalidAlgorithmParameterException("no KDF specified for UserKeyingMaterialSpec");
            }
            this.f31246for = ((ld2) algorithmParameterSpec).m4644do();
        } else {
            if (this.f31245do.indexOf(85) < 0) {
                throw new InvalidAlgorithmParameterException("agreement algorithm not DHU based");
            }
            tu tuVar = (tu) algorithmParameterSpec;
            this.f31181break = tuVar;
            this.f31246for = tuVar.m8130new();
            this.f31183this.init(new ai2(a4VarEngineGetKeyParameters, ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cfor) this.f31181break.m8127do()).engineGetKeyParameters(), ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cnew) this.f31181break.m8129if()).engineGetKeyParameters()));
        }
        if (this.f31247if == null || this.f31246for != null) {
            return;
        }
        this.f31246for = new byte[0];
    }
}
