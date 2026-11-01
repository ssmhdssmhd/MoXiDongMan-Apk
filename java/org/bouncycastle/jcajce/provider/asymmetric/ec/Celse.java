package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.Ccase;
import android.support.v4.a4;
import android.support.v4.a7;
import android.support.v4.bc1;
import android.support.v4.bl0;
import android.support.v4.cl0;
import android.support.v4.e40;
import android.support.v4.e80;
import android.support.v4.gq0;
import android.support.v4.k50;
import android.support.v4.p40;
import android.support.v4.pi0;
import android.support.v4.q40;
import android.support.v4.r40;
import android.support.v4.s40;
import android.support.v4.tn0;
import android.support.v4.u00;
import android.support.v4.w5;
import android.support.v4.wt;
import android.support.v4.x30;
import android.support.v4.zk0;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.KeyEncoder;
import org.bouncycastle.crypto.engines.Cfinal;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.ECKey;
import org.bouncycastle.jce.interfaces.IESKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends CipherSpi {

    /* renamed from: break, reason: not valid java name */
    private boolean f31067break;

    /* renamed from: case, reason: not valid java name */
    private AlgorithmParameters f31068case;

    /* renamed from: catch, reason: not valid java name */
    private a4 f31069catch;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31070do;

    /* renamed from: else, reason: not valid java name */
    private zk0 f31071else;

    /* renamed from: for, reason: not valid java name */
    private Cfinal f31072for;

    /* renamed from: goto, reason: not valid java name */
    private a4 f31073goto;

    /* renamed from: if, reason: not valid java name */
    private int f31074if;

    /* renamed from: new, reason: not valid java name */
    private int f31075new;

    /* renamed from: this, reason: not valid java name */
    private SecureRandom f31076this;

    /* renamed from: try, reason: not valid java name */
    private ByteArrayOutputStream f31077try;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.else$do, reason: invalid class name */
    public class Cdo implements KeyEncoder {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f31078do;

        public Cdo(boolean z) {
            this.f31078do = z;
        }

        @Override // org.bouncycastle.crypto.KeyEncoder
        public byte[] getEncoded(a4 a4Var) {
            return ((k50) a4Var).m4252for().m35459const(this.f31078do);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.else$for, reason: invalid class name */
    public static class Cfor extends Cnew {
        public Cfor() {
            super(new org.bouncycastle.crypto.modes.Cdo(new Ccase()), 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.else$if, reason: invalid class name */
    public static class Cif extends Celse {
        public Cif() {
            super(new Cfinal(new x30(), new gq0(u00.m8176if()), new pi0(u00.m8176if())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.else$new, reason: invalid class name */
    public static class Cnew extends Celse {
        public Cnew(BlockCipher blockCipher, int i) {
            super(new Cfinal(new x30(), new gq0(u00.m8176if()), new pi0(u00.m8176if()), new org.bouncycastle.crypto.paddings.Cnew(blockCipher)), i);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.else$try, reason: invalid class name */
    public static class Ctry extends Cnew {
        public Ctry() {
            super(new org.bouncycastle.crypto.modes.Cdo(new wt()), 8);
        }
    }

    public Celse(Cfinal cfinal) {
        this.f31070do = new w5();
        this.f31075new = -1;
        this.f31077try = new ByteArrayOutputStream();
        this.f31068case = null;
        this.f31071else = null;
        this.f31067break = false;
        this.f31069catch = null;
        this.f31072for = cfinal;
        this.f31074if = 0;
    }

    public Celse(Cfinal cfinal, int i) {
        this.f31070do = new w5();
        this.f31075new = -1;
        this.f31077try = new ByteArrayOutputStream();
        this.f31068case = null;
        this.f31071else = null;
        this.f31067break = false;
        this.f31069catch = null;
        this.f31072for = cfinal;
        this.f31074if = i;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        byte[] bArrEngineDoFinal = engineDoFinal(bArr, i, i2);
        System.arraycopy(bArrEngineDoFinal, 0, bArr2, i3, bArrEngineDoFinal.length);
        return bArrEngineDoFinal.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        if (i2 != 0) {
            this.f31077try.write(bArr, i, i2);
        }
        byte[] byteArray = this.f31077try.toByteArray();
        this.f31077try.reset();
        CipherParameters cl0Var = new cl0(this.f31071else.m10231if(), this.f31071else.m10230for(), this.f31071else.m10232new(), this.f31071else.m10228do());
        if (this.f31071else.m10233try() != null) {
            cl0Var = new bc1(cl0Var, this.f31071else.m10233try());
        }
        e40 e40VarM7258if = ((s40) this.f31073goto).m7258if();
        a4 a4Var = this.f31069catch;
        if (a4Var != null) {
            try {
                int i3 = this.f31075new;
                if (i3 == 1 || i3 == 3) {
                    this.f31072for.m33502this(true, a4Var, this.f31073goto, cl0Var);
                } else {
                    this.f31072for.m33502this(false, this.f31073goto, a4Var, cl0Var);
                }
                return this.f31072for.m33497break(byteArray, 0, byteArray.length);
            } catch (Exception e) {
                throw new a7("unable to process block", e);
            }
        }
        int i4 = this.f31075new;
        if (i4 == 1 || i4 == 3) {
            r40 r40Var = new r40();
            r40Var.init(new q40(e40VarM7258if, this.f31076this));
            try {
                this.f31072for.m33499else(this.f31073goto, cl0Var, new e80(r40Var, new Cdo(this.f31071else.m10227case())));
                return this.f31072for.m33497break(byteArray, 0, byteArray.length);
            } catch (Exception e2) {
                throw new a7("unable to process block", e2);
            }
        }
        if (i4 != 2 && i4 != 4) {
            throw new IllegalStateException("cipher not initialised");
        }
        try {
            this.f31072for.m33500goto(this.f31073goto, cl0Var, new p40(e40VarM7258if));
            return this.f31072for.m33497break(byteArray, 0, byteArray.length);
        } catch (tn0 e3) {
            throw new a7("unable to process block", e3);
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        if (this.f31072for.m33501new() != null) {
            return this.f31072for.m33501new().m33681if();
        }
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        zk0 zk0Var = this.f31071else;
        if (zk0Var != null) {
            return zk0Var.m10233try();
        }
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        if (key instanceof ECKey) {
            return ((ECKey) key).getParameters().m1142do().mo35334switch();
        }
        throw new IllegalArgumentException("not an EC key");
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        int size;
        org.bouncycastle.crypto.Cif cifM33501new;
        if (this.f31073goto == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int macSize = this.f31072for.m33498case().getMacSize();
        int iMo35334switch = this.f31069catch == null ? ((((s40) this.f31073goto).m7258if().m1646do().mo35334switch() + 7) / 8) * 2 : 0;
        if (this.f31072for.m33501new() != null) {
            int i2 = this.f31075new;
            if (i2 == 1 || i2 == 3) {
                cifM33501new = this.f31072for.m33501new();
            } else {
                if (i2 != 2 && i2 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                cifM33501new = this.f31072for.m33501new();
                i = (i - macSize) - iMo35334switch;
            }
            i = cifM33501new.mo7553for(i);
        }
        int i3 = this.f31075new;
        if (i3 == 1 || i3 == 3) {
            size = this.f31077try.size() + macSize + 1 + iMo35334switch;
        } else {
            if (i3 != 2 && i3 != 4) {
                throw new IllegalStateException("cipher not initialised");
            }
            size = (this.f31077try.size() - macSize) - iMo35334switch;
        }
        return size + i;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f31068case == null && this.f31071else != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.f31070do.createAlgorithmParameters("IES");
                this.f31068case = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.f31071else);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f31068case;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidParameterSpecException, InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec;
        if (algorithmParameters != null) {
            try {
                parameterSpec = algorithmParameters.getParameterSpec(zk0.class);
            } catch (Exception e) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e.toString());
            }
        } else {
            parameterSpec = null;
        }
        this.f31068case = algorithmParameters;
        engineInit(i, key, parameterSpec, secureRandom);
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new IllegalArgumentException("cannot handle supplied parameter spec: " + e.getMessage());
        }
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        zk0 zk0VarM564do;
        a4 a4VarM34667do;
        PrivateKey privateKey;
        byte[] bArr = null;
        this.f31069catch = null;
        if (algorithmParameterSpec == null) {
            int i2 = this.f31074if;
            if (i2 != 0 && i == 1) {
                bArr = new byte[i2];
                secureRandom.nextBytes(bArr);
            }
            zk0VarM564do = bl0.m564do(this.f31072for.m33501new(), bArr);
        } else {
            if (!(algorithmParameterSpec instanceof zk0)) {
                throw new InvalidAlgorithmParameterException("must be passed IES parameters");
            }
            zk0VarM564do = (zk0) algorithmParameterSpec;
        }
        this.f31071else = zk0VarM564do;
        byte[] bArrM10233try = this.f31071else.m10233try();
        int i3 = this.f31074if;
        if (i3 != 0 && (bArrM10233try == null || bArrM10233try.length != i3)) {
            throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.f31074if + " bytes long");
        }
        if (i == 1 || i == 3) {
            if (!(key instanceof PublicKey)) {
                if (!(key instanceof IESKey)) {
                    throw new InvalidKeyException("must be passed recipient's public EC key for encryption");
                }
                IESKey iESKey = (IESKey) key;
                this.f31073goto = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(iESKey.getPublic());
                this.f31069catch = org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(iESKey.getPrivate());
                this.f31076this = secureRandom;
                this.f31075new = i;
                this.f31077try.reset();
            }
            a4VarM34667do = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do((PublicKey) key);
        } else {
            if (i != 2 && i != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (key instanceof PrivateKey) {
                privateKey = (PrivateKey) key;
            } else {
                if (!(key instanceof IESKey)) {
                    throw new InvalidKeyException("must be passed recipient's private EC key for decryption");
                }
                IESKey iESKey2 = (IESKey) key;
                this.f31069catch = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do(iESKey2.getPublic());
                privateKey = iESKey2.getPrivate();
            }
            a4VarM34667do = org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new(privateKey);
        }
        this.f31073goto = a4VarM34667do;
        this.f31076this = secureRandom;
        this.f31075new = i;
        this.f31077try.reset();
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        boolean z;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NONE")) {
            z = false;
        } else {
            if (!strM36356final.equals("DHAES")) {
                throw new IllegalArgumentException("can't support mode " + str);
            }
            z = true;
        }
        this.f31067break = z;
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (!strM36356final.equals("NOPADDING") && !strM36356final.equals("PKCS5PADDING") && !strM36356final.equals("PKCS7PADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f31077try.write(bArr, i, i2);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.f31077try.write(bArr, i, i2);
        return null;
    }
}
