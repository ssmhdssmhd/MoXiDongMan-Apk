package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.f1;
import android.support.v4.gr0;
import android.support.v4.v71;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Ctry;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.const$do, reason: invalid class name */
    public static class Cdo extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31413do = Cconst.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("SecretKeyFactory.PBKDF-OPENSSL", f31413do + "$PBKDF");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.const$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super("PBKDF-OpenSSL", null);
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Ctry, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) throws InvalidKeySpecException {
            if (!(keySpec instanceof PBEKeySpec)) {
                throw new InvalidKeySpecException("Invalid KeySpec");
            }
            PBEKeySpec pBEKeySpec = (PBEKeySpec) keySpec;
            if (pBEKeySpec.getSalt() == null) {
                throw new InvalidKeySpecException("missing required salt");
            }
            if (pBEKeySpec.getIterationCount() <= 0) {
                throw new InvalidKeySpecException("positive iteration count required: " + pBEKeySpec.getIterationCount());
            }
            if (pBEKeySpec.getKeyLength() <= 0) {
                throw new InvalidKeySpecException("positive key length required: " + pBEKeySpec.getKeyLength());
            }
            if (pBEKeySpec.getPassword().length == 0) {
                throw new IllegalArgumentException("password empty");
            }
            v71 v71Var = new v71();
            v71Var.m8767class(Cfor.m36361this(pBEKeySpec.getPassword()), pBEKeySpec.getSalt());
            return new SecretKeySpec(((gr0) v71Var.mo2236try(pBEKeySpec.getKeyLength())).m2770do(), "OpenSSLPBKDF");
        }
    }

    private Cconst() {
    }
}
