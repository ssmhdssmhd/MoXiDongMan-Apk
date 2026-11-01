package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.a4;
import android.support.v4.a7;
import android.support.v4.bq1;
import android.support.v4.cc1;
import android.support.v4.ow0;
import android.support.v4.q3;
import android.support.v4.sj1;
import android.support.v4.w5;
import android.support.v4.wp1;
import android.support.v4.x9;
import android.support.v4.xf2;
import android.support.v4.xp1;
import android.support.v4.y9;
import android.support.v4.yp1;
import android.support.v4.zp1;
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
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.crypto.engines.Cextends;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.ECKey;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends CipherSpi {

    /* renamed from: case, reason: not valid java name */
    private SecureRandom f31097case;

    /* renamed from: if, reason: not valid java name */
    private Cextends f31100if;

    /* renamed from: try, reason: not valid java name */
    private a4 f31102try;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31098do = new w5();

    /* renamed from: for, reason: not valid java name */
    private int f31099for = -1;

    /* renamed from: new, reason: not valid java name */
    private Cdo f31101new = new Cdo();

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$break, reason: invalid class name */
    public static class Cbreak extends Ctry {
        public Cbreak() {
            super(new Cextends(new zp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$case, reason: invalid class name */
    public static class Ccase extends Ctry {
        public Ccase() {
            super(new Cextends(new sj1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$catch, reason: invalid class name */
    public static class Ccatch extends Ctry {
        public Ccatch() {
            super(new Cextends(new bq1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$class, reason: invalid class name */
    public static class Cclass extends Ctry {
        public Cclass() {
            super(new Cextends(new xf2()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$do, reason: invalid class name */
    public static final class Cdo extends ByteArrayOutputStream {
        /* renamed from: do, reason: not valid java name */
        public void m34671do() {
            q3.c(((ByteArrayOutputStream) this).buf, (byte) 0);
            reset();
        }

        /* renamed from: if, reason: not valid java name */
        public byte[] m34672if() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$else, reason: invalid class name */
    public static class Celse extends Ctry {
        public Celse() {
            super(new Cextends(new wp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super(new Cextends(new x9(512)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$goto, reason: invalid class name */
    public static class Cgoto extends Ctry {
        public Cgoto() {
            super(new Cextends(new xp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super(new Cextends());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        public Cnew() {
            super(new Cextends(new y9(256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$this, reason: invalid class name */
    public static class Cthis extends Ctry {
        public Cthis() {
            super(new Cextends(new yp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0418try extends Ctry {
        public C0418try() {
            super(new Cextends(new ow0()));
        }
    }

    public Ctry(Cextends cextends) {
        this.f31100if = cextends;
    }

    @Override // javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        byte[] bArrEngineDoFinal = engineDoFinal(bArr, i, i2);
        System.arraycopy(bArrEngineDoFinal, 0, bArr2, i3, bArrEngineDoFinal.length);
        return bArrEngineDoFinal.length;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrM33490break;
        if (i2 != 0) {
            this.f31101new.write(bArr, i, i2);
        }
        try {
            int i3 = this.f31099for;
            if (i3 == 1 || i3 == 3) {
                try {
                    this.f31100if.m33491case(true, new cc1(this.f31102try, this.f31097case));
                    bArrM33490break = this.f31100if.m33490break(this.f31101new.m34672if(), 0, this.f31101new.size());
                } catch (Exception e) {
                    throw new a7("unable to process block", e);
                }
            } else {
                if (i3 != 2 && i3 != 4) {
                    throw new IllegalStateException("cipher not initialised");
                }
                try {
                    this.f31100if.m33491case(false, this.f31102try);
                    bArrM33490break = this.f31100if.m33490break(this.f31101new.m34672if(), 0, this.f31101new.size());
                } catch (Exception e2) {
                    throw new a7("unable to process block", e2);
                }
            }
            return bArrM33490break;
        } finally {
            this.f31101new.m34671do();
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineGetIV() {
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
        int i2 = this.f31099for;
        if (i2 == 1 || i2 == 3 || i2 == 2 || i2 == 4) {
            return this.f31100if.m33493try(i);
        }
        throw new IllegalStateException("cipher not initialised");
    }

    @Override // javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
            return;
        }
        throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + algorithmParameters.getClass().getName());
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
        a4 a4VarM34667do;
        if (i == 1 || i == 3) {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("must be passed public EC key for encryption");
            }
            a4VarM34667do = org.bouncycastle.jcajce.provider.asymmetric.ec.Cnew.m34667do((PublicKey) key);
        } else {
            if (i != 2 && i != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException("must be passed private EC key for decryption");
            }
            a4VarM34667do = org.bouncycastle.jcajce.provider.asymmetric.util.Celse.m34740new((PrivateKey) key);
        }
        this.f31102try = a4VarM34667do;
        if (secureRandom != null) {
            this.f31097case = secureRandom;
        } else {
            this.f31097case = org.bouncycastle.crypto.Cfor.m33599case();
        }
        this.f31099for = i;
        this.f31101new.reset();
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        if (org.bouncycastle.util.Cfor.m36356final(str).equals("NONE")) {
            return;
        }
        throw new IllegalArgumentException("can't support mode " + str);
    }

    @Override // javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        if (!org.bouncycastle.util.Cfor.m36356final(str).equals("NOPADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    @Override // javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.f31101new.write(bArr, i, i2);
        return 0;
    }

    @Override // javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.f31101new.write(bArr, i, i2);
        return null;
    }
}
