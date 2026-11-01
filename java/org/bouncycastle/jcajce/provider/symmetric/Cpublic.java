package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.f1;
import android.support.v4.mo1;
import android.support.v4.rl;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.public$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Rijndael IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.public$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("Rijndael", 192, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.public$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.public$if$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new mo1();
            }
        }

        public Cif() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.public$new, reason: invalid class name */
    public static class Cnew extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31443do = Cpublic.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31443do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.RIJNDAEL", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.RIJNDAEL", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.RIJNDAEL", str + "$AlgParams");
        }
    }

    private Cpublic() {
    }
}
