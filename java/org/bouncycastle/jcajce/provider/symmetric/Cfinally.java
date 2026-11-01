package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.b42;
import android.support.v4.bq1;
import android.support.v4.f1;
import android.support.v4.gr0;
import android.support.v4.pi0;
import android.support.v4.q3;
import android.support.v4.tw;
import android.support.v4.u00;
import android.support.v4.yp1;
import android.support.v4.zp1;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinally {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$case, reason: invalid class name */
    public static final class Ccase extends Cnew {
        public Ccase() {
            super("TLS12withSHA384KDF", new pi0(new zp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$do, reason: invalid class name */
    public static class Cdo extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31429do = Cfinally.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31429do;
            sb.append(str);
            sb.append("$TLS10");
            configurableProvider.addAlgorithm("SecretKeyFactory.TLS10KDF", sb.toString());
            configurableProvider.addAlgorithm("SecretKeyFactory.TLS11KDF", str + "$TLS11");
            configurableProvider.addAlgorithm("SecretKeyFactory.TLS12WITHSHA256KDF", str + "$TLS12withSHA256");
            configurableProvider.addAlgorithm("SecretKeyFactory.TLS12WITHSHA384KDF", str + "$TLS12withSHA384");
            configurableProvider.addAlgorithm("SecretKeyFactory.TLS12WITHSHA512KDF", str + "$TLS12withSHA512");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$else, reason: invalid class name */
    public static final class Celse extends Cnew {
        public Celse() {
            super("TLS12withSHA512KDF", new pi0(new bq1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$for, reason: invalid class name */
    public static final class Cfor extends Cgoto {
        public Cfor() {
            super("TLS11KDF");
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (keySpec instanceof b42) {
                return new SecretKeySpec(Cfinally.m34868do((b42) keySpec), this.f31525do);
            }
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Ctry {
        public Cgoto(String str) {
            super(str, null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$if, reason: invalid class name */
    public static final class Cif extends Cgoto {
        public Cif() {
            super("TLS10KDF");
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (keySpec instanceof b42) {
                return new SecretKeySpec(Cfinally.m34868do((b42) keySpec), this.f31525do);
            }
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$new, reason: invalid class name */
    public static class Cnew extends Cgoto {

        /* renamed from: for, reason: not valid java name */
        private final Mac f31430for;

        public Cnew(String str, Mac mac) {
            super(str);
            this.f31430for = mac;
        }

        /* renamed from: do, reason: not valid java name */
        private byte[] m34872do(b42 b42Var, Mac mac) throws IllegalStateException, tw, IllegalArgumentException {
            byte[] bArrM6367default = q3.m6367default(org.bouncycastle.util.Cfor.m36358goto(b42Var.m439do()), b42Var.m442new());
            byte[] bArrM440for = b42Var.m440for();
            byte[] bArr = new byte[b42Var.m441if()];
            Cfinally.m34871new(mac, bArrM440for, bArrM6367default, bArr);
            return bArr;
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (keySpec instanceof b42) {
                return new SecretKeySpec(m34872do((b42) keySpec, this.f31430for), this.f31525do);
            }
            throw new InvalidKeySpecException("Invalid KeySpec");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.finally$try, reason: invalid class name */
    public static final class Ctry extends Cnew {
        public Ctry() {
            super("TLS12withSHA256KDF", new pi0(new yp1()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static byte[] m34868do(b42 b42Var) throws IllegalStateException, tw, IllegalArgumentException {
        pi0 pi0Var = new pi0(u00.m8172do());
        pi0 pi0Var2 = new pi0(u00.m8176if());
        byte[] bArrM6367default = q3.m6367default(org.bouncycastle.util.Cfor.m36358goto(b42Var.m439do()), b42Var.m442new());
        byte[] bArrM440for = b42Var.m440for();
        int length = (bArrM440for.length + 1) / 2;
        byte[] bArr = new byte[length];
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArrM440for, 0, bArr, 0, length);
        System.arraycopy(bArrM440for, bArrM440for.length - length, bArr2, 0, length);
        int iM441if = b42Var.m441if();
        byte[] bArr3 = new byte[iM441if];
        byte[] bArr4 = new byte[iM441if];
        m34871new(pi0Var, bArr, bArrM6367default, bArr3);
        m34871new(pi0Var2, bArr2, bArrM6367default, bArr4);
        for (int i = 0; i < iM441if; i++) {
            bArr3[i] = (byte) (bArr3[i] ^ bArr4[i]);
        }
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static void m34871new(Mac mac, byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, tw, IllegalArgumentException {
        mac.init(new gr0(bArr));
        int macSize = mac.getMacSize();
        int length = ((bArr3.length + macSize) - 1) / macSize;
        int macSize2 = mac.getMacSize();
        byte[] bArr4 = new byte[macSize2];
        byte[] bArr5 = new byte[mac.getMacSize()];
        byte[] bArr6 = bArr2;
        int i = 0;
        while (i < length) {
            mac.update(bArr6, 0, bArr6.length);
            mac.doFinal(bArr4, 0);
            mac.update(bArr4, 0, macSize2);
            mac.update(bArr2, 0, bArr2.length);
            mac.doFinal(bArr5, 0);
            int i2 = macSize * i;
            System.arraycopy(bArr5, 0, bArr3, i2, Math.min(macSize, bArr3.length - i2));
            i++;
            bArr6 = bArr4;
        }
    }
}
