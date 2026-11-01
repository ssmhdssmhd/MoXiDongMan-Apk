package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.b40;
import android.support.v4.c40;
import android.support.v4.e40;
import android.support.v4.gq0;
import android.support.v4.h50;
import android.support.v4.k50;
import android.support.v4.ld2;
import android.support.v4.lq;
import android.support.v4.q3;
import android.support.v4.sj1;
import android.support.v4.sw0;
import android.support.v4.tu;
import android.support.v4.u00;
import android.support.v4.u40;
import android.support.v4.uw0;
import android.support.v4.ww0;
import android.support.v4.x30;
import android.support.v4.y30;
import android.support.v4.yh2;
import android.support.v4.z30;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.interfaces.MQVPrivateKey;
import org.bouncycastle.jce.interfaces.MQVPublicKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends org.bouncycastle.jcajce.provider.asymmetric.util.Cdo {

    /* renamed from: super, reason: not valid java name */
    private static final yh2 f31083super = new yh2();

    /* renamed from: break, reason: not valid java name */
    private e40 f31084break;

    /* renamed from: catch, reason: not valid java name */
    private Object f31085catch;

    /* renamed from: class, reason: not valid java name */
    private sw0 f31086class;

    /* renamed from: const, reason: not valid java name */
    private tu f31087const;

    /* renamed from: final, reason: not valid java name */
    private byte[] f31088final;

    /* renamed from: this, reason: not valid java name */
    private String f31089this;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$a */
    public static class a extends Cgoto {
        public a() {
            super("ECMQVwithSHA224CKDF", new u40(), new lq(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$abstract, reason: invalid class name */
    public static class Cabstract extends Cgoto {
        public Cabstract() {
            super("ECKAEGwithRIPEMD160KDF", new x30(), new gq0(new sj1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$b */
    public static class b extends Cgoto {
        public b() {
            super("ECMQVwithSHA224KDF", new u40(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$break, reason: invalid class name */
    public static class Cbreak extends Cgoto {
        public Cbreak() {
            super("ECCDHUwithSHA1CKDF", new z30(), new lq(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$c */
    public static class c extends Cgoto {
        public c() {
            super("ECMQVwithSHA224KDF", new u40(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$case, reason: invalid class name */
    public static class Ccase extends Cgoto {
        public Ccase() {
            super("ECCDHwithSHA512KDF", new y30(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$catch, reason: invalid class name */
    public static class Ccatch extends Cgoto {
        public Ccatch() {
            super("ECCDHUwithSHA1KDF", new z30(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$class, reason: invalid class name */
    public static class Cclass extends Cgoto {
        public Cclass() {
            super("ECCDHUwithSHA224CKDF", new z30(), new lq(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$const, reason: invalid class name */
    public static class Cconst extends Cgoto {
        public Cconst() {
            super("ECCDHUwithSHA224KDF", new z30(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$continue, reason: invalid class name */
    public static class Ccontinue extends Cgoto {
        public Ccontinue() {
            super("ECKAEGwithSHA1KDF", new x30(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$d */
    public static class d extends Cgoto {
        public d() {
            super("ECMQVwithSHA256CKDF", new u40(), new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$default, reason: invalid class name */
    public static class Cdefault extends Cgoto {
        public Cdefault() {
            super("ECDHwithSHA256KDF", new x30(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$do, reason: invalid class name */
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

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$e */
    public static class e extends Cgoto {
        public e() {
            super("ECMQVwithSHA256KDF", new u40(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$else, reason: invalid class name */
    public static class Celse extends Cgoto {
        public Celse() {
            super("ECDH", new x30(), (DerivationFunction) null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$extends, reason: invalid class name */
    public static class Cextends extends Cgoto {
        public Cextends() {
            super("ECDHwithSHA384CKDF", new y30(), new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$f */
    public static class f extends Cgoto {
        public f() {
            super("ECMQVwithSHA256KDF", new u40(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$final, reason: invalid class name */
    public static class Cfinal extends Cgoto {
        public Cfinal() {
            super("ECCDHUwithSHA256CKDF", new z30(), new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$finally, reason: invalid class name */
    public static class Cfinally extends Cgoto {
        public Cfinally() {
            super("ECDHwithSHA384KDF", new x30(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$for, reason: invalid class name */
    public static class Cfor extends Cgoto {
        public Cfor() {
            super("ECCDHwithSHA224KDF", new y30(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$g */
    public static class g extends Cgoto {
        public g() {
            super("ECMQVwithSHA384CKDF", new u40(), new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$goto, reason: invalid class name and collision with other inner class name */
    public static class C0417goto extends Cgoto {
        public C0417goto() {
            super("ECDHC", new y30(), (DerivationFunction) null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$h */
    public static class h extends Cgoto {
        public h() {
            super("ECMQVwithSHA384KDF", new u40(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$i */
    public static class i extends Cgoto {
        public i() {
            super("ECMQVwithSHA384KDF", new u40(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$if, reason: invalid class name */
    public static class Cif extends Cgoto {
        public Cif() {
            super("ECCDHwithSHA1KDF", new y30(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$implements, reason: invalid class name */
    public static class Cimplements extends Cgoto {
        public Cimplements() {
            super("ECMQVwithSHA1CKDF", new u40(), new lq(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$import, reason: invalid class name */
    public static class Cimport extends Cgoto {
        public Cimport() {
            super("ECCDHUwithSHA512CKDF", new z30(), new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$instanceof, reason: invalid class name */
    public static class Cinstanceof extends Cgoto {
        public Cinstanceof() {
            super("ECMQVwithSHA1KDF", new u40(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$interface, reason: invalid class name */
    public static class Cinterface extends Cgoto {
        public Cinterface() {
            super("ECKAEGwithSHA384KDF", new x30(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$j */
    public static class j extends Cgoto {
        public j() {
            super("ECMQVwithSHA512CKDF", new u40(), new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$k */
    public static class k extends Cgoto {
        public k() {
            super("ECMQVwithSHA512KDF", new u40(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$l */
    public static class l extends Cgoto {
        public l() {
            super("ECMQVwithSHA512KDF", new u40(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$native, reason: invalid class name */
    public static class Cnative extends Cgoto {
        public Cnative() {
            super("ECCDHUwithSHA512KDF", new z30(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$new, reason: invalid class name */
    public static class Cnew extends Cgoto {
        public Cnew() {
            super("ECCDHwithSHA256KDF", new y30(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$package, reason: invalid class name */
    public static class Cpackage extends Cgoto {
        public Cpackage() {
            super("ECDHwithSHA512CKDF", new y30(), new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$private, reason: invalid class name */
    public static class Cprivate extends Cgoto {
        public Cprivate() {
            super("ECDHwithSHA512KDF", new x30(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$protected, reason: invalid class name */
    public static class Cprotected extends Cgoto {
        public Cprotected() {
            super("ECKAEGwithSHA512KDF", new x30(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$public, reason: invalid class name */
    public static class Cpublic extends Cgoto {
        public Cpublic() {
            super("ECDHwithSHA1CKDF", new y30(), new lq(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$return, reason: invalid class name */
    public static class Creturn extends Cgoto {
        public Creturn() {
            super("ECDHwithSHA1KDF", new x30(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$static, reason: invalid class name */
    public static class Cstatic extends Cgoto {
        public Cstatic() {
            super("ECDHwithSHA1KDF", new x30(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$strictfp, reason: invalid class name */
    public static class Cstrictfp extends Cgoto {
        public Cstrictfp() {
            super("ECKAEGwithSHA224KDF", new x30(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$super, reason: invalid class name */
    public static class Csuper extends Cgoto {
        public Csuper() {
            super("ECCDHUwithSHA256KDF", new z30(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$switch, reason: invalid class name */
    public static class Cswitch extends Cgoto {
        public Cswitch() {
            super("ECDHwithSHA224KDF", new x30(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$synchronized, reason: invalid class name */
    public static class Csynchronized extends Cgoto {
        public Csynchronized() {
            super("ECMQVwithSHA1KDF", new u40(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$this, reason: invalid class name */
    public static class Cthis extends Cgoto {
        public Cthis() {
            super("ECCDHU", new z30(), (DerivationFunction) null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$throw, reason: invalid class name */
    public static class Cthrow extends Cgoto {
        public Cthrow() {
            super("ECCDHUwithSHA384CKDF", new z30(), new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$throws, reason: invalid class name */
    public static class Cthrows extends Cgoto {
        public Cthrows() {
            super("ECDHwithSHA256CKDF", new y30(), new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$transient, reason: invalid class name */
    public static class Ctransient extends Cgoto {
        public Ctransient() {
            super("ECMQV", new u40(), (DerivationFunction) null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$try, reason: invalid class name */
    public static class Ctry extends Cgoto {
        public Ctry() {
            super("ECCDHwithSHA384KDF", new y30(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$volatile, reason: invalid class name */
    public static class Cvolatile extends Cgoto {
        public Cvolatile() {
            super("ECKAEGwithSHA256KDF", new x30(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.goto$while, reason: invalid class name */
    public static class Cwhile extends Cgoto {
        public Cwhile() {
            super("ECCDHUwithSHA384KDF", new z30(), new gq0(u00.m8179try()));
        }
    }

    public Cgoto(String str, z30 z30Var, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31089this = str;
        this.f31085catch = z30Var;
    }

    public Cgoto(String str, BasicAgreement basicAgreement, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31089this = str;
        this.f31085catch = basicAgreement;
    }

    /* renamed from: else, reason: not valid java name */
    private static String m34661else(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m34662goto(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        h50 h50Var;
        h50 h50Var2;
        Object obj = this.f31085catch;
        k50 k50Var = null;
        if (obj instanceof u40) {
            this.f31086class = null;
            boolean z = key instanceof MQVPrivateKey;
            if (!z && !(algorithmParameterSpec instanceof sw0)) {
                throw new InvalidAlgorithmParameterException(this.f31089this + " key agreement requires " + m34661else(sw0.class) + " for initialisation");
            }
            if (z) {
                MQVPrivateKey mQVPrivateKey = (MQVPrivateKey) key;
                h50Var2 = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(mQVPrivateKey.getStaticPrivateKey());
                h50Var = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(mQVPrivateKey.getEphemeralPrivateKey());
                if (mQVPrivateKey.getEphemeralPublicKey() != null) {
                    k50Var = (k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(mQVPrivateKey.getEphemeralPublicKey());
                }
            } else {
                sw0 sw0Var = (sw0) algorithmParameterSpec;
                h50 h50Var3 = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new((PrivateKey) key);
                h50Var = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(sw0Var.m7622do());
                k50Var = sw0Var.m7624if() != null ? (k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(sw0Var.m7624if()) : null;
                this.f31086class = sw0Var;
                this.f31246for = sw0Var.m7625new();
                h50Var2 = h50Var3;
            }
            uw0 uw0Var = new uw0(h50Var2, h50Var, k50Var);
            this.f31084break = h50Var2.m7258if();
            ((u40) this.f31085catch).init(uw0Var);
            return;
        }
        if (!(algorithmParameterSpec instanceof tu)) {
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException(this.f31089this + " key agreement requires " + m34661else(ECPrivateKey.class) + " for initialisation");
            }
            if (this.f31247if == null && (algorithmParameterSpec instanceof ld2)) {
                throw new InvalidAlgorithmParameterException("no KDF specified for UserKeyingMaterialSpec");
            }
            h50 h50Var4 = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new((PrivateKey) key);
            this.f31084break = h50Var4.m7258if();
            this.f31246for = algorithmParameterSpec instanceof ld2 ? ((ld2) algorithmParameterSpec).m4644do() : null;
            ((BasicAgreement) this.f31085catch).init(h50Var4);
            return;
        }
        if (!(obj instanceof z30)) {
            throw new InvalidAlgorithmParameterException(this.f31089this + " key agreement cannot be used with " + m34661else(tu.class));
        }
        tu tuVar = (tu) algorithmParameterSpec;
        h50 h50Var5 = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new((PrivateKey) key);
        h50 h50Var6 = (h50) org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(tuVar.m8127do());
        k50 k50Var2 = tuVar.m8129if() != null ? (k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(tuVar.m8129if()) : null;
        this.f31087const = tuVar;
        this.f31246for = tuVar.m8130new();
        b40 b40Var = new b40(h50Var5, h50Var6, k50Var2);
        this.f31084break = h50Var5.m7258if();
        ((z30) this.f31085catch).m10056for(b40Var);
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m34663case(BigInteger bigInteger) {
        yh2 yh2Var = f31083super;
        return yh2Var.m9871for(bigInteger, yh2Var.m9870do(this.f31084break.m1646do()));
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo
    /* renamed from: do */
    public byte[] mo9261do() {
        return q3.m6371final(this.f31088final);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) throws IllegalStateException, InvalidKeyException {
        CipherParameters cipherParametersM34667do;
        if (this.f31084break == null) {
            throw new IllegalStateException(this.f31089this + " not initialised.");
        }
        if (!z) {
            throw new IllegalStateException(this.f31089this + " can only be between two parties.");
        }
        Object obj = this.f31085catch;
        if (obj instanceof u40) {
            if (key instanceof MQVPublicKey) {
                MQVPublicKey mQVPublicKey = (MQVPublicKey) key;
                cipherParametersM34667do = new ww0((k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(mQVPublicKey.getStaticKey()), (k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(mQVPublicKey.getEphemeralKey()));
            } else {
                cipherParametersM34667do = new ww0((k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do((PublicKey) key), (k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(this.f31086class.m7623for()));
            }
        } else if (obj instanceof z30) {
            cipherParametersM34667do = new c40((k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do((PublicKey) key), (k50) org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(this.f31087const.m8128for()));
        } else {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException(this.f31089this + " key agreement requires " + m34661else(ECPublicKey.class) + " for doPhase");
            }
            cipherParametersM34667do = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do((PublicKey) key);
        }
        try {
            Object obj2 = this.f31085catch;
            if (obj2 instanceof BasicAgreement) {
                this.f31088final = m34663case(((BasicAgreement) obj2).calculateAgreement(cipherParametersM34667do));
                return null;
            }
            this.f31088final = ((z30) obj2).m10055do(cipherParametersM34667do);
            return null;
        } catch (Exception e2) {
            throw new Cdo("calculation failed: " + e2.getMessage(), e2);
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            m34662goto(key, null);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new InvalidKeyException(e2.getMessage());
        }
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof sw0) && !(algorithmParameterSpec instanceof ld2) && !(algorithmParameterSpec instanceof tu)) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        m34662goto(key, algorithmParameterSpec);
    }
}
