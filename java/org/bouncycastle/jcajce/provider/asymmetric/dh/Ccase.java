package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.a4;
import android.support.v4.a7;
import android.support.v4.bc1;
import android.support.v4.bl0;
import android.support.v4.cl0;
import android.support.v4.du;
import android.support.v4.e80;
import android.support.v4.gq0;
import android.support.v4.gu;
import android.support.v4.ju;
import android.support.v4.ku;
import android.support.v4.ou;
import android.support.v4.pi0;
import android.support.v4.ru;
import android.support.v4.tn0;
import android.support.v4.u00;
import android.support.v4.w5;
import android.support.v4.wt;
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
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.KeyEncoder;
import org.bouncycastle.crypto.engines.Cfinal;
import org.bouncycastle.jcajce.provider.asymmetric.util.Ctry;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.IESKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends CipherSpi {

    /* renamed from: break, reason: not valid java name */
    private boolean f30991break;

    /* renamed from: case, reason: not valid java name */
    private AlgorithmParameters f30992case;

    /* renamed from: catch, reason: not valid java name */
    private a4 f30993catch;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f30994do;

    /* renamed from: else, reason: not valid java name */
    private zk0 f30995else;

    /* renamed from: for, reason: not valid java name */
    private Cfinal f30996for;

    /* renamed from: goto, reason: not valid java name */
    private a4 f30997goto;

    /* renamed from: if, reason: not valid java name */
    private final int f30998if;

    /* renamed from: new, reason: not valid java name */
    private int f30999new;

    /* renamed from: this, reason: not valid java name */
    private SecureRandom f31000this;

    /* renamed from: try, reason: not valid java name */
    private ByteArrayOutputStream f31001try;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.case$do, reason: invalid class name */
    public class Cdo implements KeyEncoder {
        public Cdo() {
        }

        @Override // org.bouncycastle.crypto.KeyEncoder
        public byte[] getEncoded(a4 a4Var) {
            int iBitLength = (((ku) a4Var).m4512if().m5757case().bitLength() + 7) / 8;
            byte[] bArr = new byte[iBitLength];
            byte[] bArrM36313if = org.bouncycastle.util.Cdo.m36313if(((ru) a4Var).m7126for());
            if (bArrM36313if.length > iBitLength) {
                throw new IllegalArgumentException("Senders's public key longer than expected.");
            }
            System.arraycopy(bArrM36313if, 0, bArr, iBitLength - bArrM36313if.length, bArrM36313if.length);
            return bArr;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.case$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        public Cfor() {
            super(new Cfinal(new du(), new gq0(u00.m8176if()), new pi0(u00.m8176if()), new org.bouncycastle.crypto.paddings.Cnew(new org.bouncycastle.crypto.modes.Cdo(new android.support.v4.Ccase()))), 16);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.case$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(new Cfinal(new du(), new gq0(u00.m8176if()), new pi0(u00.m8176if())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.case$new, reason: invalid class name */
    public static class Cnew extends Ccase {
        public Cnew() {
            super(new Cfinal(new du(), new gq0(u00.m8176if()), new pi0(u00.m8176if()), new org.bouncycastle.crypto.paddings.Cnew(new org.bouncycastle.crypto.modes.Cdo(new wt()))), 8);
        }
    }

    public Ccase(Cfinal cfinal) {
        this.f30994do = new w5();
        this.f30999new = -1;
        this.f31001try = new ByteArrayOutputStream();
        this.f30992case = null;
        this.f30995else = null;
        this.f30991break = false;
        this.f30993catch = null;
        this.f30996for = cfinal;
        this.f30998if = 0;
    }

    public Ccase(Cfinal cfinal, int i) {
        this.f30994do = new w5();
        this.f30999new = -1;
        this.f31001try = new ByteArrayOutputStream();
        this.f30992case = null;
        this.f30995else = null;
        this.f30991break = false;
        this.f30993catch = null;
        this.f30996for = cfinal;
        this.f30998if = i;
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
            this.f31001try.write(bArr, i, i2);
        }
        byte[] byteArray = this.f31001try.toByteArray();
        this.f31001try.reset();
        CipherParameters cl0Var = new cl0(this.f30995else.m10231if(), this.f30995else.m10230for(), this.f30995else.m10232new(), this.f30995else.m10228do());
        if (this.f30995else.m10233try() != null) {
            cl0Var = new bc1(cl0Var, this.f30995else.m10233try());
        }
        ou ouVarM4512if = ((ku) this.f30997goto).m4512if();
        a4 a4Var = this.f30993catch;
        if (a4Var != null) {
            try {
                int i3 = this.f30999new;
                if (i3 == 1 || i3 == 3) {
                    this.f30996for.m33502this(true, a4Var, this.f30997goto, cl0Var);
                } else {
                    this.f30996for.m33502this(false, this.f30997goto, a4Var, cl0Var);
                }
                return this.f30996for.m33497break(byteArray, 0, byteArray.length);
            } catch (Exception e) {
                throw new a7("unable to process block", e);
            }
        }
        int i4 = this.f30999new;
        if (i4 == 1 || i4 == 3) {
            org.bouncycastle.crypto.generators.Ccase ccase = new org.bouncycastle.crypto.generators.Ccase();
            ccase.init(new ju(this.f31000this, ouVarM4512if));
            try {
                this.f30996for.m33499else(this.f30997goto, cl0Var, new e80(ccase, new Cdo()));
                return this.f30996for.m33497break(byteArray, 0, byteArray.length);
            } catch (Exception e2) {
                throw new a7("unable to process block", e2);
            }
        }
        if (i4 != 2 && i4 != 4) {
            throw new IllegalStateException("IESCipher not initialised");
        }
        try {
            Cfinal cfinal = this.f30996for;
            a4 a4Var2 = this.f30997goto;
            cfinal.m33500goto(a4Var2, cl0Var, new gu(((ku) a4Var2).m4512if()));
            return this.f30996for.m33497break(byteArray, 0, byteArray.length);
        } catch (tn0 e3) {
            throw new a7("unable to process block", e3);
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        if (this.f30996for.m33501new() != null) {
            return this.f30996for.m33501new().m33681if();
        }
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        zk0 zk0Var = this.f30995else;
        if (zk0Var != null) {
            return zk0Var.m10233try();
        }
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        if (key instanceof DHKey) {
            return ((DHKey) key).getParams().getP().bitLength();
        }
        throw new IllegalArgumentException("not a DH key");
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        int size;
        org.bouncycastle.crypto.Cif cifM33501new;
        if (this.f30997goto == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int macSize = this.f30996for.m33498case().getMacSize();
        int iBitLength = this.f30993catch == null ? (((((ku) this.f30997goto).m4512if().m5757case().bitLength() + 7) * 2) / 8) + 1 : 0;
        if (this.f30996for.m33501new() != null) {
            int i2 = this.f30999new;
            if (i2 == 1 || i2 == 3) {
                cifM33501new = this.f30996for.m33501new();
            } else {
                if (i2 != 2 && i2 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                cifM33501new = this.f30996for.m33501new();
                i = (i - macSize) - iBitLength;
            }
            i = cifM33501new.mo7553for(i);
        }
        int i3 = this.f30999new;
        if (i3 == 1 || i3 == 3) {
            size = this.f31001try.size() + macSize + iBitLength;
        } else {
            if (i3 != 2 && i3 != 4) {
                throw new IllegalStateException("IESCipher not initialised");
            }
            size = (this.f31001try.size() - macSize) - iBitLength;
        }
        return size + i;
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f30992case == null && this.f30995else != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.f30994do.createAlgorithmParameters("IES");
                this.f30992case = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.f30995else);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f30992case;
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
        this.f30992case = algorithmParameters;
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
        a4 a4VarM34756if;
        PrivateKey privateKey;
        if (algorithmParameterSpec == null) {
            byte[] bArr = null;
            int i2 = this.f30998if;
            if (i2 != 0 && i == 1) {
                bArr = new byte[i2];
                secureRandom.nextBytes(bArr);
            }
            zk0VarM564do = bl0.m564do(this.f30996for.m33501new(), bArr);
        } else {
            if (!(algorithmParameterSpec instanceof zk0)) {
                throw new InvalidAlgorithmParameterException("must be passed IES parameters");
            }
            zk0VarM564do = (zk0) algorithmParameterSpec;
        }
        this.f30995else = zk0VarM564do;
        byte[] bArrM10233try = this.f30995else.m10233try();
        int i3 = this.f30998if;
        if (i3 != 0 && (bArrM10233try == null || bArrM10233try.length != i3)) {
            throw new InvalidAlgorithmParameterException("NONCE in IES Parameters needs to be " + this.f30998if + " bytes long");
        }
        if (i == 1 || i == 3) {
            if (!(key instanceof DHPublicKey)) {
                if (!(key instanceof IESKey)) {
                    throw new InvalidKeyException("must be passed recipient's public DH key for encryption");
                }
                IESKey iESKey = (IESKey) key;
                this.f30997goto = Ctry.m34756if(iESKey.getPublic());
                this.f30993catch = Ctry.m34755do(iESKey.getPrivate());
                this.f31000this = secureRandom;
                this.f30999new = i;
                this.f31001try.reset();
            }
            a4VarM34756if = Ctry.m34756if((PublicKey) key);
        } else {
            if (i != 2 && i != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (key instanceof DHPrivateKey) {
                privateKey = (PrivateKey) key;
            } else {
                if (!(key instanceof IESKey)) {
                    throw new InvalidKeyException("must be passed recipient's private DH key for decryption");
                }
                IESKey iESKey2 = (IESKey) key;
                this.f30993catch = Ctry.m34756if(iESKey2.getPublic());
                privateKey = iESKey2.getPrivate();
            }
            a4VarM34756if = Ctry.m34755do(privateKey);
        }
        this.f30997goto = a4VarM34756if;
        this.f31000this = secureRandom;
        this.f30999new = i;
        this.f31001try.reset();
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
        this.f30991break = z;
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
        this.f31001try.write(bArr, i, i2);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.f31001try.write(bArr, i, i2);
        return null;
    }
}
