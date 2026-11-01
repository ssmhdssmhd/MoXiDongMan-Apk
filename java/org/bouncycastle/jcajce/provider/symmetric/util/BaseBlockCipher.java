package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.Cfor;
import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.ca1;
import android.support.v4.cc1;
import android.support.v4.d6;
import android.support.v4.da1;
import android.support.v4.dc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.ij1;
import android.support.v4.me0;
import android.support.v4.mj1;
import android.support.v4.n91;
import android.support.v4.o91;
import android.support.v4.of0;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.zm1;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.engines.Ccase;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.modes.Cbreak;
import org.bouncycastle.crypto.modes.Ccatch;
import org.bouncycastle.crypto.modes.Cclass;
import org.bouncycastle.crypto.modes.Cfinal;
import org.bouncycastle.crypto.modes.Cimport;
import org.bouncycastle.crypto.modes.Cnative;
import org.bouncycastle.crypto.modes.Creturn;
import org.bouncycastle.crypto.modes.Cstatic;
import org.bouncycastle.crypto.modes.Csuper;
import org.bouncycastle.crypto.modes.Cthrow;
import org.bouncycastle.crypto.modes.Cthrows;
import org.bouncycastle.crypto.modes.Ctry;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;
import org.bouncycastle.jcajce.provider.symmetric.util.Celse;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;

/* loaded from: classes3.dex */
public class BaseBlockCipher extends Celse implements PBE {

    /* renamed from: package, reason: not valid java name */
    private static final Class f31466package = Cgoto.m34896do(BaseBlockCipher.class, "javax.crypto.spec.GCMParameterSpec");

    /* renamed from: const, reason: not valid java name */
    private Class[] f31467const;

    /* renamed from: default, reason: not valid java name */
    private PBEParameterSpec f31468default;

    /* renamed from: extends, reason: not valid java name */
    private String f31469extends;

    /* renamed from: final, reason: not valid java name */
    private BlockCipher f31470final;

    /* renamed from: finally, reason: not valid java name */
    private String f31471finally;

    /* renamed from: import, reason: not valid java name */
    private Cnew f31472import;

    /* renamed from: native, reason: not valid java name */
    private int f31473native;

    /* renamed from: public, reason: not valid java name */
    private int f31474public;

    /* renamed from: return, reason: not valid java name */
    private int f31475return;

    /* renamed from: static, reason: not valid java name */
    private int f31476static;

    /* renamed from: super, reason: not valid java name */
    private BlockCipherProvider f31477super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f31478switch;

    /* renamed from: throw, reason: not valid java name */
    private GenericBlockCipher f31479throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f31480throws;

    /* renamed from: while, reason: not valid java name */
    private bc1 f31481while;

    public interface GenericBlockCipher {
        int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException;

        String getAlgorithmName();

        int getOutputSize(int i);

        BlockCipher getUnderlyingCipher();

        int getUpdateOutputSize(int i);

        void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

        int processByte(byte b, byte[] bArr, int i) throws tw;

        int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw;

        void updateAAD(byte[] bArr, int i, int i2);

        boolean wrapOnNoPadding();
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$do, reason: invalid class name */
    public static class Cdo implements GenericBlockCipher {

        /* renamed from: if, reason: not valid java name */
        private static final Constructor f31482if;

        /* renamed from: do, reason: not valid java name */
        private AEADBlockCipher f31483do;

        static {
            Class clsM34896do = Cgoto.m34896do(BaseBlockCipher.class, "javax.crypto.AEADBadTagException");
            f31482if = clsM34896do != null ? m34883if(clsM34896do) : null;
        }

        public Cdo(AEADBlockCipher aEADBlockCipher) {
            this.f31483do = aEADBlockCipher;
        }

        /* renamed from: if, reason: not valid java name */
        private static Constructor m34883if(Class cls) {
            try {
                return cls.getConstructor(String.class);
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException {
            try {
                return this.f31483do.doFinal(bArr, i);
            } catch (tn0 e) {
                Constructor constructor = f31482if;
                if (constructor != null) {
                    BadPaddingException badPaddingException = null;
                    try {
                        badPaddingException = (BadPaddingException) constructor.newInstance(e.getMessage());
                    } catch (Exception unused) {
                    }
                    if (badPaddingException != null) {
                        throw badPaddingException;
                    }
                }
                throw new BadPaddingException(e.getMessage());
            }
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public String getAlgorithmName() {
            return this.f31483do.getUnderlyingCipher().getAlgorithmName();
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getOutputSize(int i) {
            return this.f31483do.getOutputSize(i);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public BlockCipher getUnderlyingCipher() {
            return this.f31483do.getUnderlyingCipher();
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getUpdateOutputSize(int i) {
            return this.f31483do.getUpdateOutputSize(i);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
            this.f31483do.init(z, cipherParameters);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processByte(byte b, byte[] bArr, int i) throws tw {
            return this.f31483do.processByte(b, bArr, i);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
            return this.f31483do.processBytes(bArr, i, i2, bArr2, i3);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void updateAAD(byte[] bArr, int i, int i2) {
            this.f31483do.processAADBytes(bArr, i, i2);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public boolean wrapOnNoPadding() {
            return false;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher$if, reason: invalid class name */
    public static class Cif implements GenericBlockCipher {

        /* renamed from: do, reason: not valid java name */
        private org.bouncycastle.crypto.Cif f31484do;

        public Cif(BlockCipher blockCipher) {
            this.f31484do = new org.bouncycastle.crypto.paddings.Cnew(blockCipher);
        }

        public Cif(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
            this.f31484do = new org.bouncycastle.crypto.paddings.Cnew(blockCipher, blockCipherPadding);
        }

        public Cif(org.bouncycastle.crypto.Cif cif) {
            this.f31484do = cif;
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException {
            try {
                return this.f31484do.mo7551do(bArr, i);
            } catch (tn0 e) {
                throw new BadPaddingException(e.getMessage());
            }
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public String getAlgorithmName() {
            return this.f31484do.m33682new().getAlgorithmName();
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getOutputSize(int i) {
            return this.f31484do.mo7553for(i);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public BlockCipher getUnderlyingCipher() {
            return this.f31484do.m33682new();
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getUpdateOutputSize(int i) {
            return this.f31484do.mo7556try(i);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
            this.f31484do.mo7550case(z, cipherParameters);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processByte(byte b, byte[] bArr, int i) throws tw {
            return this.f31484do.mo7552else(b, bArr, i);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws tw {
            return this.f31484do.mo7554goto(bArr, i, i2, bArr2, i3);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void updateAAD(byte[] bArr, int i, int i2) {
            throw new UnsupportedOperationException("AAD is not supported in the current mode.");
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public boolean wrapOnNoPadding() {
            return !(this.f31484do instanceof org.bouncycastle.crypto.modes.Cnew);
        }
    }

    public BaseBlockCipher(BlockCipher blockCipher) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        this.f31470final = blockCipher;
        this.f31479throw = new Cif(blockCipher);
    }

    public BaseBlockCipher(BlockCipher blockCipher, int i) {
        this(blockCipher, true, i);
    }

    public BaseBlockCipher(BlockCipher blockCipher, int i, int i2, int i3, int i4) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        this.f31470final = blockCipher;
        this.f31474public = i;
        this.f31475return = i2;
        this.f31473native = i3;
        this.f31476static = i4;
        this.f31479throw = new Cif(blockCipher);
    }

    public BaseBlockCipher(BlockCipher blockCipher, boolean z, int i) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        this.f31470final = blockCipher;
        this.f31480throws = z;
        this.f31479throw = new Cif(blockCipher);
        this.f31476static = i / 8;
    }

    public BaseBlockCipher(org.bouncycastle.crypto.Cif cif, int i) {
        this(cif, true, i);
    }

    public BaseBlockCipher(org.bouncycastle.crypto.Cif cif, boolean z, int i) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        this.f31470final = cif.m33682new();
        this.f31479throw = new Cif(cif);
        this.f31480throws = z;
        this.f31476static = i / 8;
    }

    public BaseBlockCipher(AEADBlockCipher aEADBlockCipher) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        BlockCipher underlyingCipher = aEADBlockCipher.getUnderlyingCipher();
        this.f31470final = underlyingCipher;
        this.f31476static = underlyingCipher.getBlockSize();
        this.f31479throw = new Cdo(aEADBlockCipher);
    }

    public BaseBlockCipher(AEADBlockCipher aEADBlockCipher, boolean z, int i) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        this.f31470final = aEADBlockCipher.getUnderlyingCipher();
        this.f31480throws = z;
        this.f31476static = i;
        this.f31479throw = new Cdo(aEADBlockCipher);
    }

    public BaseBlockCipher(BlockCipherProvider blockCipherProvider) {
        this.f31467const = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, f31466package, of0.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.f31474public = -1;
        this.f31476static = 0;
        this.f31480throws = true;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31471finally = null;
        this.f31470final = blockCipherProvider.get();
        this.f31477super = blockCipherProvider;
        this.f31479throw = new Cif(blockCipherProvider.get());
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m34880for(String str) {
        return "CCM".equals(str) || "EAX".equals(str) || "GCM".equals(str) || "OCB".equals(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    private CipherParameters m34881if(AlgorithmParameterSpec algorithmParameterSpec, CipherParameters cipherParameters) {
        dc1 dc1Var;
        bc1 bc1Var;
        if (cipherParameters instanceof bc1) {
            CipherParameters cipherParametersM515if = ((bc1) cipherParameters).m515if();
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                bc1Var = new bc1(cipherParametersM515if, ((IvParameterSpec) algorithmParameterSpec).getIV());
            } else {
                if (!(algorithmParameterSpec instanceof of0)) {
                    return cipherParameters;
                }
                of0 of0Var = (of0) algorithmParameterSpec;
                dc1 dc1Var2 = new dc1(cipherParameters, of0Var.m5622new());
                if (of0Var.m5620do() == null || this.f31476static == 0) {
                    return dc1Var2;
                }
                bc1Var = new bc1(cipherParametersM515if, of0Var.m5620do());
            }
            this.f31481while = bc1Var;
            return bc1Var;
        }
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            bc1 bc1Var2 = new bc1(cipherParameters, ((IvParameterSpec) algorithmParameterSpec).getIV());
            this.f31481while = bc1Var2;
            dc1Var = bc1Var2;
        } else {
            if (!(algorithmParameterSpec instanceof of0)) {
                return cipherParameters;
            }
            of0 of0Var2 = (of0) algorithmParameterSpec;
            dc1 dc1Var3 = new dc1(cipherParameters, of0Var2.m5622new());
            dc1Var = dc1Var3;
            if (of0Var2.m5620do() != null) {
                dc1Var = dc1Var3;
                if (this.f31476static != 0) {
                    return new bc1(dc1Var3, of0Var2.m5620do());
                }
            }
        }
        return dc1Var;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        int iProcessBytes;
        if (engineGetOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (i2 != 0) {
            try {
                iProcessBytes = this.f31479throw.processBytes(bArr, i, i2, bArr2, i3);
            } catch (f91 e) {
                throw new IllegalBlockSizeException(e.getMessage());
            } catch (tw e2) {
                throw new IllegalBlockSizeException(e2.getMessage());
            }
        } else {
            iProcessBytes = 0;
        }
        return iProcessBytes + this.f31479throw.doFinal(bArr2, i3 + iProcessBytes);
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws BadPaddingException, IllegalBlockSizeException {
        int iEngineGetOutputSize = engineGetOutputSize(i2);
        byte[] bArr2 = new byte[iEngineGetOutputSize];
        int iProcessBytes = i2 != 0 ? this.f31479throw.processBytes(bArr, i, i2, bArr2, 0) : 0;
        try {
            int iDoFinal = iProcessBytes + this.f31479throw.doFinal(bArr2, iProcessBytes);
            if (iDoFinal == iEngineGetOutputSize) {
                return bArr2;
            }
            byte[] bArr3 = new byte[iDoFinal];
            System.arraycopy(bArr2, 0, bArr3, 0, iDoFinal);
            return bArr3;
        } catch (tw e) {
            throw new IllegalBlockSizeException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineGetBlockSize() {
        return this.f31470final.getBlockSize();
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public byte[] engineGetIV() {
        Cnew cnew = this.f31472import;
        if (cnew != null) {
            return cnew.m5197new();
        }
        bc1 bc1Var = this.f31481while;
        if (bc1Var != null) {
            return bc1Var.m514do();
        }
        return null;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineGetOutputSize(int i) {
        return this.f31479throw.getOutputSize(i);
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException, IOException {
        if (this.f31502case == null) {
            if (this.f31468default != null) {
                try {
                    AlgorithmParameters algorithmParametersM34893do = m34893do(this.f31469extends);
                    this.f31502case = algorithmParametersM34893do;
                    algorithmParametersM34893do.init(this.f31468default);
                } catch (Exception unused) {
                    return null;
                }
            } else if (this.f31472import != null) {
                try {
                    AlgorithmParameters algorithmParametersM34893do2 = m34893do("GCM");
                    this.f31502case = algorithmParametersM34893do2;
                    algorithmParametersM34893do2.init(new me0(this.f31472import.m5197new(), this.f31472import.m5195for() / 8).getEncoded());
                } catch (Exception e) {
                    throw new RuntimeException(e.toString());
                }
            } else if (this.f31481while != null) {
                String algorithmName = this.f31479throw.getUnderlyingCipher().getAlgorithmName();
                if (algorithmName.indexOf(47) >= 0) {
                    algorithmName = algorithmName.substring(0, algorithmName.indexOf(47));
                }
                try {
                    AlgorithmParameters algorithmParametersM34893do3 = m34893do(algorithmName);
                    this.f31502case = algorithmParametersM34893do3;
                    algorithmParametersM34893do3.init(new IvParameterSpec(this.f31481while.m514do()));
                } catch (Exception e2) {
                    throw new RuntimeException(e2.toString());
                }
            }
        }
        return this.f31502case;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws NoSuchMethodException, InvalidParameterSpecException, InvalidKeyException, SecurityException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec parameterSpec = null;
        if (algorithmParameters != null) {
            int i2 = 0;
            while (true) {
                Class[] clsArr = this.f31467const;
                if (i2 == clsArr.length) {
                    break;
                }
                if (clsArr[i2] != null) {
                    try {
                        parameterSpec = algorithmParameters.getParameterSpec(clsArr[i2]);
                        break;
                    } catch (Exception unused) {
                        continue;
                    }
                }
                i2++;
            }
            if (parameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        }
        engineInit(i, key, parameterSpec, secureRandom);
        this.f31502case = algorithmParameters;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineInit(int i, Key key, SecureRandom secureRandom) throws NoSuchMethodException, InvalidKeyException, SecurityException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac A[PHI: r5
      0x00ac: PHI (r5v36 org.bouncycastle.crypto.CipherParameters) = 
      (r5v56 org.bouncycastle.crypto.CipherParameters)
      (r5v57 org.bouncycastle.crypto.CipherParameters)
      (r5v58 org.bouncycastle.crypto.CipherParameters)
      (r5v59 org.bouncycastle.crypto.CipherParameters)
     binds: [B:101:0x01fb, B:58:0x0143, B:47:0x00f7, B:32:0x00aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r2v70, types: [android.support.v4.bc1] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v10, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v16, types: [android.support.v4.mj1, org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARN: Type inference failed for: r5v19, types: [android.support.v4.ij1, org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23, types: [android.support.v4.dc1, org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARN: Type inference failed for: r5v26, types: [android.support.v4.bc1] */
    /* JADX WARN: Type inference failed for: r5v29, types: [org.bouncycastle.crypto.CipherParameters] */
    /* JADX WARN: Type inference failed for: r5v34, types: [android.support.v4.new] */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61 */
    /* JADX WARN: Type inference failed for: r5v62 */
    /* JADX WARN: Type inference failed for: r5v63 */
    /* JADX WARN: Type inference failed for: r5v64 */
    /* JADX WARN: Type inference failed for: r5v65 */
    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws NoSuchMethodException, InvalidKeyException, SecurityException, InvalidAlgorithmParameterException {
        CipherParameters cipherParametersM34888goto;
        bc1 bc1Var;
        CipherParameters cipherParameters;
        CipherParameters cipherParametersM34884case;
        gr0 mj1Var = 0;
        this.f31468default = null;
        this.f31469extends = null;
        this.f31502case = null;
        this.f31472import = null;
        if (!(key instanceof SecretKey)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Key for algorithm ");
            sb.append(key != null ? key.getAlgorithm() : null);
            sb.append(" not suitable for symmetric enryption.");
            throw new InvalidKeyException(sb.toString());
        }
        if (algorithmParameterSpec == null && this.f31470final.getAlgorithmName().startsWith("RC5-64")) {
            throw new InvalidAlgorithmParameterException("RC5 requires an RC5ParametersSpec to be passed in.");
        }
        int i2 = this.f31474public;
        if (i2 == 2 || (key instanceof ca1)) {
            try {
                SecretKey secretKey = (SecretKey) key;
                if (algorithmParameterSpec instanceof PBEParameterSpec) {
                    this.f31468default = (PBEParameterSpec) algorithmParameterSpec;
                }
                boolean z = secretKey instanceof PBEKey;
                if (z && this.f31468default == null) {
                    PBEKey pBEKey = (PBEKey) secretKey;
                    if (pBEKey.getSalt() == null) {
                        throw new InvalidAlgorithmParameterException("PBEKey requires parameters to specify salt");
                    }
                    this.f31468default = new PBEParameterSpec(pBEKey.getSalt(), pBEKey.getIterationCount());
                }
                if (this.f31468default == null && !z) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                if (key instanceof d6) {
                    CipherParameters param = ((d6) key).getParam();
                    if (!(param instanceof bc1)) {
                        if (param != null) {
                            throw new InvalidKeyException("Algorithm requires a PBE key suitable for PKCS12");
                        }
                        param = PBE.Cdo.m34888goto(secretKey.getEncoded(), 2, this.f31475return, this.f31473native, this.f31476static * 8, this.f31468default, this.f31479throw.getAlgorithmName());
                    }
                    cipherParametersM34888goto = param;
                } else {
                    cipherParametersM34888goto = PBE.Cdo.m34888goto(secretKey.getEncoded(), 2, this.f31475return, this.f31473native, this.f31476static * 8, this.f31468default, this.f31479throw.getAlgorithmName());
                }
                boolean z2 = cipherParametersM34888goto instanceof bc1;
                cipherParameters = cipherParametersM34888goto;
                mj1Var = cipherParametersM34888goto;
                if (z2) {
                    this.f31481while = (bc1) cipherParameters;
                    mj1Var = cipherParameters;
                }
            } catch (Exception unused) {
                throw new InvalidKeyException("PKCS12 requires a SecretKey/PBEKey");
            }
        } else if (key instanceof n91) {
            n91 n91Var = (n91) key;
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                this.f31468default = (PBEParameterSpec) algorithmParameterSpec;
            }
            if ((n91Var instanceof o91) && this.f31468default == null) {
                o91 o91Var = (o91) n91Var;
                this.f31468default = new PBEParameterSpec(o91Var.getSalt(), o91Var.getIterationCount());
            }
            CipherParameters cipherParametersM34888goto2 = PBE.Cdo.m34888goto(n91Var.getEncoded(), 0, this.f31475return, this.f31473native, this.f31476static * 8, this.f31468default, this.f31479throw.getAlgorithmName());
            boolean z3 = cipherParametersM34888goto2 instanceof bc1;
            cipherParameters = cipherParametersM34888goto2;
            mj1Var = cipherParametersM34888goto2;
            if (z3) {
            }
        } else if (key instanceof d6) {
            d6 d6Var = (d6) key;
            this.f31469extends = d6Var.getOID() != null ? d6Var.getOID().m32795super() : d6Var.getAlgorithm();
            if (d6Var.getParam() != null) {
                cipherParametersM34884case = m34881if(algorithmParameterSpec, d6Var.getParam());
            } else {
                if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                this.f31468default = (PBEParameterSpec) algorithmParameterSpec;
                cipherParametersM34884case = PBE.Cdo.m34884case(d6Var, algorithmParameterSpec, this.f31479throw.getUnderlyingCipher().getAlgorithmName());
            }
            boolean z4 = cipherParametersM34884case instanceof bc1;
            cipherParameters = cipherParametersM34884case;
            mj1Var = cipherParametersM34884case;
            if (z4) {
            }
        } else if (key instanceof PBEKey) {
            PBEKey pBEKey2 = (PBEKey) key;
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31468default = pBEParameterSpec;
            if ((pBEKey2 instanceof da1) && pBEParameterSpec == null) {
                this.f31468default = new PBEParameterSpec(pBEKey2.getSalt(), pBEKey2.getIterationCount());
            }
            CipherParameters cipherParametersM34888goto3 = PBE.Cdo.m34888goto(pBEKey2.getEncoded(), this.f31474public, this.f31475return, this.f31473native, this.f31476static * 8, this.f31468default, this.f31479throw.getAlgorithmName());
            boolean z5 = cipherParametersM34888goto3 instanceof bc1;
            cipherParameters = cipherParametersM34888goto3;
            mj1Var = cipherParametersM34888goto3;
            if (z5) {
            }
        } else if (!(key instanceof zm1)) {
            if (i2 == 0 || i2 == 4 || i2 == 1 || i2 == 5) {
                throw new InvalidKeyException("Algorithm requires a PBE key");
            }
            mj1Var = new gr0(key.getEncoded());
        }
        if (algorithmParameterSpec instanceof Cfor) {
            if (!m34880for(this.f31471finally) && !(this.f31479throw instanceof Cdo)) {
                throw new InvalidAlgorithmParameterException("AEADParameterSpec can only be used with AEAD modes.");
            }
            Cfor cfor = (Cfor) algorithmParameterSpec;
            mj1Var = new Cnew(mj1Var instanceof bc1 ? (gr0) ((bc1) mj1Var).m515if() : mj1Var, cfor.m2382if(), cfor.m2381for(), cfor.m2380do());
            this.f31472import = mj1Var;
        } else if (algorithmParameterSpec instanceof IvParameterSpec) {
            if (this.f31476static != 0) {
                IvParameterSpec ivParameterSpec = (IvParameterSpec) algorithmParameterSpec;
                if (ivParameterSpec.getIV().length != this.f31476static && !(this.f31479throw instanceof Cdo) && this.f31480throws) {
                    throw new InvalidAlgorithmParameterException("IV must be " + this.f31476static + " bytes long.");
                }
                mj1Var = mj1Var instanceof bc1 ? new bc1(((bc1) mj1Var).m515if(), ivParameterSpec.getIV()) : new bc1(mj1Var, ivParameterSpec.getIV());
                this.f31481while = mj1Var;
            } else {
                String str = this.f31471finally;
                if (str != null && str.equals("ECB")) {
                    throw new InvalidAlgorithmParameterException("ECB mode does not use an IV");
                }
            }
        } else if (algorithmParameterSpec instanceof of0) {
            of0 of0Var = (of0) algorithmParameterSpec;
            mj1Var = new dc1(new gr0(key.getEncoded()), of0Var.m5622new());
            if (of0Var.m5620do() != null && this.f31476static != 0) {
                bc1Var = mj1Var instanceof bc1 ? new bc1(((bc1) mj1Var).m515if(), of0Var.m5620do()) : new bc1(mj1Var, of0Var.m5620do());
                this.f31481while = bc1Var;
                mj1Var = bc1Var;
            }
        } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
            RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
            mj1Var = new ij1(key.getEncoded(), rC2ParameterSpec.getEffectiveKeyBits());
            if (rC2ParameterSpec.getIV() != null && this.f31476static != 0) {
                bc1Var = mj1Var instanceof bc1 ? new bc1(((bc1) mj1Var).m515if(), rC2ParameterSpec.getIV()) : new bc1(mj1Var, rC2ParameterSpec.getIV());
                this.f31481while = bc1Var;
                mj1Var = bc1Var;
            }
        } else if (algorithmParameterSpec instanceof RC5ParameterSpec) {
            RC5ParameterSpec rC5ParameterSpec = (RC5ParameterSpec) algorithmParameterSpec;
            mj1Var = new mj1(key.getEncoded(), rC5ParameterSpec.getRounds());
            if (!this.f31470final.getAlgorithmName().startsWith("RC5")) {
                throw new InvalidAlgorithmParameterException("RC5 parameters passed to a cipher that is not RC5.");
            }
            if (this.f31470final.getAlgorithmName().equals("RC5-32")) {
                if (rC5ParameterSpec.getWordSize() != 32) {
                    throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 32 not " + rC5ParameterSpec.getWordSize() + ".");
                }
            } else if (this.f31470final.getAlgorithmName().equals("RC5-64") && rC5ParameterSpec.getWordSize() != 64) {
                throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 64 not " + rC5ParameterSpec.getWordSize() + ".");
            }
            if (rC5ParameterSpec.getIV() != null && this.f31476static != 0) {
                bc1Var = mj1Var instanceof bc1 ? new bc1(((bc1) mj1Var).m515if(), rC5ParameterSpec.getIV()) : new bc1(mj1Var, rC5ParameterSpec.getIV());
                this.f31481while = bc1Var;
                mj1Var = bc1Var;
            }
        } else {
            Class cls = f31466package;
            if (cls == null || !cls.isInstance(algorithmParameterSpec)) {
                if (algorithmParameterSpec != null && !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("unknown parameter type.");
                }
            } else {
                if (!m34880for(this.f31471finally) && !(this.f31479throw instanceof Cdo)) {
                    throw new InvalidAlgorithmParameterException("GCMParameterSpec can only be used with AEAD modes.");
                }
                try {
                    Method declaredMethod = cls.getDeclaredMethod("getTLen", new Class[0]);
                    Method declaredMethod2 = cls.getDeclaredMethod("getIV", new Class[0]);
                    boolean z6 = mj1Var instanceof bc1;
                    Object objM515if = mj1Var;
                    if (z6) {
                        objM515if = ((bc1) mj1Var).m515if();
                    }
                    Cnew cnew = new Cnew((gr0) objM515if, ((Integer) declaredMethod.invoke(algorithmParameterSpec, new Object[0])).intValue(), (byte[]) declaredMethod2.invoke(algorithmParameterSpec, new Object[0]));
                    this.f31472import = cnew;
                    mj1Var = cnew;
                } catch (Exception unused2) {
                    throw new InvalidAlgorithmParameterException("Cannot process GCMParameterSpec.");
                }
            }
        }
        cc1 cc1Var = mj1Var;
        if (this.f31476static != 0) {
            boolean z7 = mj1Var instanceof bc1;
            cc1Var = mj1Var;
            if (!z7) {
                boolean z8 = mj1Var instanceof Cnew;
                cc1Var = mj1Var;
                if (!z8) {
                    SecureRandom secureRandomM33599case = secureRandom == null ? org.bouncycastle.crypto.Cfor.m33599case() : secureRandom;
                    if (i == 1 || i == 3) {
                        byte[] bArr = new byte[this.f31476static];
                        secureRandomM33599case.nextBytes(bArr);
                        ?? bc1Var2 = new bc1(mj1Var, bArr);
                        this.f31481while = bc1Var2;
                        cc1Var = bc1Var2;
                    } else {
                        cc1Var = mj1Var;
                        if (this.f31479throw.getUnderlyingCipher().getAlgorithmName().indexOf("PGPCFB") < 0) {
                            throw new InvalidAlgorithmParameterException("no IV set when one expected");
                        }
                    }
                }
            }
        }
        if (secureRandom != null && this.f31478switch) {
            cc1Var = new cc1(cc1Var, secureRandom);
        }
        try {
            if (i == 1) {
                this.f31479throw.init(true, cc1Var);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new InvalidParameterException("unknown opmode " + i + " passed");
                        }
                    }
                    this.f31479throw.init(true, cc1Var);
                }
                this.f31479throw.init(false, cc1Var);
            }
            GenericBlockCipher genericBlockCipher = this.f31479throw;
            if ((genericBlockCipher instanceof Cdo) && this.f31472import == null) {
                this.f31472import = new Cnew((gr0) this.f31481while.m515if(), ((Cdo) genericBlockCipher).f31483do.getMac().length * 8, this.f31481while.m514do());
            }
        } catch (Exception e) {
            throw new Celse.Cif(e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        GenericBlockCipher cdo;
        Cif cif;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        this.f31471finally = strM36356final;
        if (strM36356final.equals("ECB")) {
            this.f31476static = 0;
            cdo = new Cif(this.f31470final);
        } else if (this.f31471finally.equals("CBC")) {
            this.f31476static = this.f31470final.getBlockSize();
            cdo = new Cif(new org.bouncycastle.crypto.modes.Cdo(this.f31470final));
        } else if (this.f31471finally.startsWith("OFB")) {
            this.f31476static = this.f31470final.getBlockSize();
            if (this.f31471finally.length() != 3) {
                cif = new Cif(new Cnative(this.f31470final, Integer.parseInt(this.f31471finally.substring(3))));
                this.f31479throw = cif;
                return;
            } else {
                BlockCipher blockCipher = this.f31470final;
                cdo = new Cif(new Cnative(blockCipher, blockCipher.getBlockSize() * 8));
            }
        } else {
            if (!this.f31471finally.startsWith("CFB")) {
                if (this.f31471finally.startsWith("PGP")) {
                    boolean zEqualsIgnoreCase = this.f31471finally.equalsIgnoreCase("PGPCFBwithIV");
                    this.f31476static = this.f31470final.getBlockSize();
                    cif = new Cif(new Cstatic(this.f31470final, zEqualsIgnoreCase));
                } else if (this.f31471finally.equalsIgnoreCase("OpenPGPCFB")) {
                    this.f31476static = 0;
                    cdo = new Cif(new Creturn(this.f31470final));
                } else if (this.f31471finally.startsWith("SIC")) {
                    int blockSize = this.f31470final.getBlockSize();
                    this.f31476static = blockSize;
                    if (blockSize < 16) {
                        throw new IllegalArgumentException("Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)");
                    }
                    this.f31480throws = false;
                    cdo = new Cif(new org.bouncycastle.crypto.Cif(new Cthrows(this.f31470final)));
                } else if (this.f31471finally.startsWith("CTR")) {
                    this.f31476static = this.f31470final.getBlockSize();
                    this.f31480throws = false;
                    BlockCipher blockCipher2 = this.f31470final;
                    cif = blockCipher2 instanceof Ccase ? new Cif(new org.bouncycastle.crypto.Cif(new Csuper(blockCipher2))) : new Cif(new org.bouncycastle.crypto.Cif(new Cthrows(blockCipher2)));
                } else if (this.f31471finally.startsWith("GOFB")) {
                    this.f31476static = this.f31470final.getBlockSize();
                    cdo = new Cif(new org.bouncycastle.crypto.Cif(new Cclass(this.f31470final)));
                } else if (this.f31471finally.startsWith("GCFB")) {
                    this.f31476static = this.f31470final.getBlockSize();
                    cdo = new Cif(new org.bouncycastle.crypto.Cif(new Cbreak(this.f31470final)));
                } else if (this.f31471finally.startsWith("CTS")) {
                    this.f31476static = this.f31470final.getBlockSize();
                    cdo = new Cif(new org.bouncycastle.crypto.modes.Cnew(new org.bouncycastle.crypto.modes.Cdo(this.f31470final)));
                } else if (this.f31471finally.startsWith("CCM")) {
                    this.f31476static = 12;
                    cdo = this.f31470final instanceof Ccase ? new Cdo(new Cfinal(this.f31470final)) : new Cdo(new org.bouncycastle.crypto.modes.Cif(this.f31470final));
                } else if (this.f31471finally.startsWith("OCB")) {
                    if (this.f31477super == null) {
                        throw new NoSuchAlgorithmException("can't support mode " + str);
                    }
                    this.f31476static = 15;
                    cdo = new Cdo(new Cimport(this.f31470final, this.f31477super.get()));
                } else if (this.f31471finally.startsWith("EAX")) {
                    this.f31476static = this.f31470final.getBlockSize();
                    cdo = new Cdo(new Ctry(this.f31470final));
                } else {
                    if (!this.f31471finally.startsWith("GCM")) {
                        throw new NoSuchAlgorithmException("can't support mode " + str);
                    }
                    this.f31476static = this.f31470final.getBlockSize();
                    cdo = this.f31470final instanceof Ccase ? new Cdo(new Cthrow(this.f31470final)) : new Cdo(new Ccatch(this.f31470final));
                }
                this.f31479throw = cif;
                return;
            }
            this.f31476static = this.f31470final.getBlockSize();
            if (this.f31471finally.length() != 3) {
                cif = new Cif(new org.bouncycastle.crypto.modes.Cfor(this.f31470final, Integer.parseInt(this.f31471finally.substring(3))));
                this.f31479throw = cif;
                return;
            } else {
                BlockCipher blockCipher3 = this.f31470final;
                cdo = new Cif(new org.bouncycastle.crypto.modes.Cfor(blockCipher3, blockCipher3.getBlockSize() * 8));
            }
        }
        this.f31479throw = cdo;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        Cif cif;
        String strM36356final = org.bouncycastle.util.Cfor.m36356final(str);
        if (strM36356final.equals("NOPADDING")) {
            if (!this.f31479throw.wrapOnNoPadding()) {
                return;
            } else {
                cif = new Cif(new org.bouncycastle.crypto.Cif(this.f31479throw.getUnderlyingCipher()));
            }
        } else if (strM36356final.equals("WITHCTS") || strM36356final.equals("CTSPADDING") || strM36356final.equals("CS3PADDING")) {
            cif = new Cif(new org.bouncycastle.crypto.modes.Cnew(this.f31479throw.getUnderlyingCipher()));
        } else {
            this.f31478switch = true;
            if (m34880for(this.f31471finally)) {
                throw new NoSuchPaddingException("Only NoPadding can be used with AEAD modes.");
            }
            if (strM36356final.equals("PKCS5PADDING") || strM36356final.equals("PKCS7PADDING")) {
                cif = new Cif(this.f31479throw.getUnderlyingCipher());
            } else if (strM36356final.equals("ZEROBYTEPADDING")) {
                cif = new Cif(this.f31479throw.getUnderlyingCipher(), new org.bouncycastle.crypto.paddings.Celse());
            } else if (strM36356final.equals("ISO10126PADDING") || strM36356final.equals("ISO10126-2PADDING")) {
                cif = new Cif(this.f31479throw.getUnderlyingCipher(), new org.bouncycastle.crypto.paddings.Cdo());
            } else if (strM36356final.equals("X9.23PADDING") || strM36356final.equals("X923PADDING")) {
                cif = new Cif(this.f31479throw.getUnderlyingCipher(), new org.bouncycastle.crypto.paddings.Ccase());
            } else if (strM36356final.equals("ISO7816-4PADDING") || strM36356final.equals("ISO9797-1PADDING")) {
                cif = new Cif(this.f31479throw.getUnderlyingCipher(), new org.bouncycastle.crypto.paddings.Cif());
            } else {
                if (!strM36356final.equals("TBCPADDING")) {
                    throw new NoSuchPaddingException("Padding " + str + " unknown.");
                }
                cif = new Cif(this.f31479throw.getUnderlyingCipher(), new org.bouncycastle.crypto.paddings.Ctry());
            }
        }
        this.f31479throw = cif;
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        if (this.f31479throw.getUpdateOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        try {
            return this.f31479throw.processBytes(bArr, i, i2, bArr2, i3);
        } catch (tw e) {
            throw new IllegalStateException(e.toString());
        }
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Celse, javax.crypto.CipherSpi
    public byte[] engineUpdate(byte[] bArr, int i, int i2) throws tw {
        int updateOutputSize = this.f31479throw.getUpdateOutputSize(i2);
        if (updateOutputSize <= 0) {
            this.f31479throw.processBytes(bArr, i, i2, null, 0);
            return null;
        }
        byte[] bArr2 = new byte[updateOutputSize];
        int iProcessBytes = this.f31479throw.processBytes(bArr, i, i2, bArr2, 0);
        if (iProcessBytes == 0) {
            return null;
        }
        if (iProcessBytes == updateOutputSize) {
            return bArr2;
        }
        byte[] bArr3 = new byte[iProcessBytes];
        System.arraycopy(bArr2, 0, bArr3, 0, iProcessBytes);
        return bArr3;
    }

    @Override // javax.crypto.CipherSpi
    public void engineUpdateAAD(ByteBuffer byteBuffer) {
        engineUpdateAAD(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.limit() - byteBuffer.position());
    }

    @Override // javax.crypto.CipherSpi
    public void engineUpdateAAD(byte[] bArr, int i, int i2) {
        this.f31479throw.updateAAD(bArr, i, i2);
    }
}
