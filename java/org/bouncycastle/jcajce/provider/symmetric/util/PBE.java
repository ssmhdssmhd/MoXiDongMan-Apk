package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.bc1;
import android.support.v4.d6;
import android.support.v4.fa1;
import android.support.v4.gr0;
import android.support.v4.ia1;
import android.support.v4.ig0;
import android.support.v4.ja1;
import android.support.v4.l91;
import android.support.v4.mw0;
import android.support.v4.s62;
import android.support.v4.sj1;
import android.support.v4.u00;
import android.support.v4.ut;
import android.support.v4.v71;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public interface PBE {
    public static final int GOST3411 = 6;
    public static final int MD2 = 5;
    public static final int MD5 = 0;
    public static final int OPENSSL = 3;
    public static final int PKCS12 = 2;
    public static final int PKCS5S1 = 0;
    public static final int PKCS5S1_UTF8 = 4;
    public static final int PKCS5S2 = 1;
    public static final int PKCS5S2_UTF8 = 5;
    public static final int RIPEMD160 = 2;
    public static final int SHA1 = 1;
    public static final int SHA224 = 7;
    public static final int SHA256 = 4;
    public static final int SHA384 = 8;
    public static final int SHA3_224 = 10;
    public static final int SHA3_256 = 11;
    public static final int SHA3_384 = 12;
    public static final int SHA3_512 = 13;
    public static final int SHA512 = 9;
    public static final int TIGER = 3;

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.PBE$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: case, reason: not valid java name */
        public static CipherParameters m34884case(d6 d6Var, AlgorithmParameterSpec algorithmParameterSpec, String str) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            l91 l91VarM34889if = m34889if(d6Var.getType(), d6Var.getDigest());
            byte[] encoded = d6Var.getEncoded();
            if (d6Var.shouldTryWrongPKCS12()) {
                encoded = new byte[2];
            }
            l91VarM34889if.m4622break(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters cipherParametersMo2234case = d6Var.getIvSize() != 0 ? l91VarM34889if.mo2234case(d6Var.getKeySize(), d6Var.getIvSize()) : l91VarM34889if.mo2236try(d6Var.getKeySize());
            if (str.startsWith("DES")) {
                if (cipherParametersMo2234case instanceof bc1) {
                    ut.m8637for(((gr0) ((bc1) cipherParametersMo2234case).m515if()).m2770do());
                } else {
                    ut.m8637for(((gr0) cipherParametersMo2234case).m2770do());
                }
            }
            return cipherParametersMo2234case;
        }

        /* renamed from: do, reason: not valid java name */
        private static byte[] m34885do(int i, PBEKeySpec pBEKeySpec) {
            return i == 2 ? l91.m4619do(pBEKeySpec.getPassword()) : (i == 5 || i == 4) ? l91.m4620for(pBEKeySpec.getPassword()) : l91.m4621if(pBEKeySpec.getPassword());
        }

        /* renamed from: else, reason: not valid java name */
        public static CipherParameters m34886else(PBEKeySpec pBEKeySpec, int i, int i2, int i3, int i4) {
            l91 l91VarM34889if = m34889if(i, i2);
            byte[] bArrM34885do = m34885do(i, pBEKeySpec);
            l91VarM34889if.m4622break(bArrM34885do, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            CipherParameters cipherParametersMo2234case = i4 != 0 ? l91VarM34889if.mo2234case(i3, i4) : l91VarM34889if.mo2236try(i3);
            for (int i5 = 0; i5 != bArrM34885do.length; i5++) {
                bArrM34885do[i5] = 0;
            }
            return cipherParametersMo2234case;
        }

        /* renamed from: for, reason: not valid java name */
        public static CipherParameters m34887for(d6 d6Var, AlgorithmParameterSpec algorithmParameterSpec) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            l91 l91VarM34889if = m34889if(d6Var.getType(), d6Var.getDigest());
            l91VarM34889if.m4622break(d6Var.getEncoded(), pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            return l91VarM34889if.mo2235new(d6Var.getKeySize());
        }

        /* renamed from: goto, reason: not valid java name */
        public static CipherParameters m34888goto(byte[] bArr, int i, int i2, int i3, int i4, AlgorithmParameterSpec algorithmParameterSpec, String str) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            l91 l91VarM34889if = m34889if(i, i2);
            l91VarM34889if.m4622break(bArr, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters cipherParametersMo2234case = i4 != 0 ? l91VarM34889if.mo2234case(i3, i4) : l91VarM34889if.mo2236try(i3);
            if (str.startsWith("DES")) {
                if (cipherParametersMo2234case instanceof bc1) {
                    ut.m8637for(((gr0) ((bc1) cipherParametersMo2234case).m515if()).m2770do());
                } else {
                    ut.m8637for(((gr0) cipherParametersMo2234case).m2770do());
                }
            }
            return cipherParametersMo2234case;
        }

        /* renamed from: if, reason: not valid java name */
        private static l91 m34889if(int i, int i2) {
            if (i == 0 || i == 4) {
                if (i2 == 0) {
                    return new ia1(u00.m8172do());
                }
                if (i2 == 1) {
                    return new ia1(u00.m8176if());
                }
                if (i2 == 5) {
                    return new ia1(new mw0());
                }
                throw new IllegalStateException("PKCS5 scheme 1 only supports MD2, MD5 and SHA1.");
            }
            if (i != 1 && i != 5) {
                if (i != 2) {
                    return new v71();
                }
                switch (i2) {
                    case 0:
                        return new fa1(u00.m8172do());
                    case 1:
                        return new fa1(u00.m8176if());
                    case 2:
                        return new fa1(new sj1());
                    case 3:
                        return new fa1(new s62());
                    case 4:
                        return new fa1(u00.m8177new());
                    case 5:
                        return new fa1(new mw0());
                    case 6:
                        return new fa1(new ig0());
                    case 7:
                        return new fa1(u00.m8174for());
                    case 8:
                        return new fa1(u00.m8179try());
                    case 9:
                        return new fa1(u00.m8168break());
                    default:
                        throw new IllegalStateException("unknown digest scheme for PBE encryption.");
                }
            }
            switch (i2) {
                case 0:
                    return new ja1(u00.m8172do());
                case 1:
                    return new ja1(u00.m8176if());
                case 2:
                    return new ja1(new sj1());
                case 3:
                    return new ja1(new s62());
                case 4:
                    return new ja1(u00.m8177new());
                case 5:
                    return new ja1(new mw0());
                case 6:
                    return new ja1(new ig0());
                case 7:
                    return new ja1(u00.m8174for());
                case 8:
                    return new ja1(u00.m8179try());
                case 9:
                    return new ja1(u00.m8168break());
                case 10:
                    return new ja1(u00.m8169case());
                case 11:
                    return new ja1(u00.m8173else());
                case 12:
                    return new ja1(u00.m8175goto());
                case 13:
                    return new ja1(u00.m8178this());
                default:
                    throw new IllegalStateException("unknown digest scheme for PBE PKCS5S2 encryption.");
            }
        }

        /* renamed from: new, reason: not valid java name */
        public static CipherParameters m34890new(SecretKey secretKey, int i, int i2, int i3, PBEParameterSpec pBEParameterSpec) {
            l91 l91VarM34889if = m34889if(i, i2);
            byte[] encoded = secretKey.getEncoded();
            l91VarM34889if.m4622break(secretKey.getEncoded(), pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters cipherParametersMo2235new = l91VarM34889if.mo2235new(i3);
            for (int i4 = 0; i4 != encoded.length; i4++) {
                encoded[i4] = 0;
            }
            return cipherParametersMo2235new;
        }

        /* renamed from: try, reason: not valid java name */
        public static CipherParameters m34891try(PBEKeySpec pBEKeySpec, int i, int i2, int i3) {
            l91 l91VarM34889if = m34889if(i, i2);
            byte[] bArrM34885do = m34885do(i, pBEKeySpec);
            l91VarM34889if.m4622break(bArrM34885do, pBEKeySpec.getSalt(), pBEKeySpec.getIterationCount());
            CipherParameters cipherParametersMo2235new = l91VarM34889if.mo2235new(i3);
            for (int i4 = 0; i4 != bArrM34885do.length; i4++) {
                bArrM34885do[i4] = 0;
            }
            return cipherParametersMo2235new;
        }
    }
}
