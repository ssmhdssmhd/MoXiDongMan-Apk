package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.je;
import android.support.v4.me1;
import android.support.v4.rl;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.macs.Cgoto;
import org.bouncycastle.crypto.modes.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cthis;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new Cgoto(new je()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$do, reason: invalid class name */
    public static class Cdo extends Cthis {
        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cthis, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "CAST6 IV";
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Celse() {
            super("Poly1305-CAST6", 256, new me1());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cfor() {
            super(new org.bouncycastle.crypto.macs.Cnew(new Ccatch(new je())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$if, reason: invalid class name */
    public static class Cif extends BaseBlockCipher {

        /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$if$do, reason: invalid class name */
        public class Cdo implements BlockCipherProvider {
            @Override // org.bouncycastle.jcajce.provider.symmetric.util.BlockCipherProvider
            public BlockCipher get() {
                return new je();
            }
        }

        public Cif() {
            super(new Cdo());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$new, reason: invalid class name and collision with other inner class name */
    public static class C0448new extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public C0448new() {
            super("CAST6", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.new$try, reason: invalid class name */
    public static class Ctry extends Cextends {

        /* renamed from: do, reason: not valid java name */
        private static final String f31441do = Cnew.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31441do;
            sb.append(str);
            sb.append("$ECB");
            configurableProvider.addAlgorithm("Cipher.CAST6", sb.toString());
            configurableProvider.addAlgorithm("KeyGenerator.CAST6", str + "$KeyGen");
            configurableProvider.addAlgorithm("AlgorithmParameters.CAST6", str + "$AlgParams");
            m34865for(configurableProvider, "CAST6", str + "$GMAC", str + "$KeyGen");
            m34867new(configurableProvider, "CAST6", str + "$Poly1305", str + "$Poly1305KeyGen");
        }
    }

    private Cnew() {
    }
}
