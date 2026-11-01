package org.bouncycastle.jce.provider;

import android.support.v4.bc1;
import android.support.v4.d6;
import android.support.v4.fa1;
import android.support.v4.gr0;
import android.support.v4.ia1;
import android.support.v4.ja1;
import android.support.v4.l91;
import android.support.v4.ow0;
import android.support.v4.sj1;
import android.support.v4.wp1;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public interface BrokenPBE {
    public static final int MD5 = 0;
    public static final int OLD_PKCS12 = 3;
    public static final int PKCS12 = 2;
    public static final int PKCS5S1 = 0;
    public static final int PKCS5S2 = 1;
    public static final int RIPEMD160 = 2;
    public static final int SHA1 = 1;

    /* renamed from: org.bouncycastle.jce.provider.BrokenPBE$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        private static l91 m34950do(int i, int i2) {
            if (i == 0) {
                if (i2 == 0) {
                    return new ia1(new ow0());
                }
                if (i2 == 1) {
                    return new ia1(new wp1());
                }
                throw new IllegalStateException("PKCS5 scheme 1 only supports only MD5 and SHA1.");
            }
            if (i == 1) {
                return new ja1();
            }
            if (i == 3) {
                if (i2 == 0) {
                    return new Creturn(new ow0());
                }
                if (i2 == 1) {
                    return new Creturn(new wp1());
                }
                if (i2 == 2) {
                    return new Creturn(new sj1());
                }
                throw new IllegalStateException("unknown digest scheme for PBE encryption.");
            }
            if (i2 == 0) {
                return new fa1(new ow0());
            }
            if (i2 == 1) {
                return new fa1(new wp1());
            }
            if (i2 == 2) {
                return new fa1(new sj1());
            }
            throw new IllegalStateException("unknown digest scheme for PBE encryption.");
        }

        /* renamed from: for, reason: not valid java name */
        public static CipherParameters m34951for(d6 d6Var, AlgorithmParameterSpec algorithmParameterSpec, int i, int i2, String str, int i3, int i4) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            l91 l91VarM34950do = m34950do(i, i2);
            byte[] encoded = d6Var.getEncoded();
            l91VarM34950do.m4622break(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters cipherParametersMo2234case = i4 != 0 ? l91VarM34950do.mo2234case(i3, i4) : l91VarM34950do.mo2236try(i3);
            if (str.startsWith("DES")) {
                if (cipherParametersMo2234case instanceof bc1) {
                    m34953new(((gr0) ((bc1) cipherParametersMo2234case).m515if()).m2770do());
                } else {
                    m34953new(((gr0) cipherParametersMo2234case).m2770do());
                }
            }
            for (int i5 = 0; i5 != encoded.length; i5++) {
                encoded[i5] = 0;
            }
            return cipherParametersMo2234case;
        }

        /* renamed from: if, reason: not valid java name */
        public static CipherParameters m34952if(d6 d6Var, AlgorithmParameterSpec algorithmParameterSpec, int i, int i2, int i3) {
            if (algorithmParameterSpec == null || !(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new IllegalArgumentException("Need a PBEParameter spec with a PBE key.");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            l91 l91VarM34950do = m34950do(i, i2);
            byte[] encoded = d6Var.getEncoded();
            l91VarM34950do.m4622break(encoded, pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
            CipherParameters cipherParametersMo2235new = l91VarM34950do.mo2235new(i3);
            for (int i4 = 0; i4 != encoded.length; i4++) {
                encoded[i4] = 0;
            }
            return cipherParametersMo2235new;
        }

        /* renamed from: new, reason: not valid java name */
        private static void m34953new(byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                bArr[i] = (byte) ((((b >> 7) ^ ((((((b >> 1) ^ (b >> 2)) ^ (b >> 3)) ^ (b >> 4)) ^ (b >> 5)) ^ (b >> 6))) ^ 1) | (b & 254));
            }
        }
    }
}
