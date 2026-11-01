package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.rl;
import android.support.v4.yv;
import org.bouncycastle.asn1.ua.UAObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cbreak() {
            super("HMACDSTU7564-512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new org.bouncycastle.crypto.macs.Cif(384));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31293do = Cfor.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31293do;
            sb.append(str);
            sb.append("$Digest256");
            configurableProvider.addAlgorithm("MessageDigest.DSTU7564-256", sb.toString());
            configurableProvider.addAlgorithm("MessageDigest.DSTU7564-384", str + "$Digest384");
            configurableProvider.addAlgorithm("MessageDigest.DSTU7564-512", str + "$Digest512");
            configurableProvider.addAlgorithm("MessageDigest", UAObjectIdentifiers.dstu7564digest_256, str + "$Digest256");
            configurableProvider.addAlgorithm("MessageDigest", UAObjectIdentifiers.dstu7564digest_384, str + "$Digest384");
            configurableProvider.addAlgorithm("MessageDigest", UAObjectIdentifiers.dstu7564digest_512, str + "$Digest512");
            m34786if(configurableProvider, "DSTU7564-256", str + "$HashMac256", str + "$KeyGenerator256");
            m34786if(configurableProvider, "DSTU7564-384", str + "$HashMac384", str + "$KeyGenerator384");
            m34786if(configurableProvider, "DSTU7564-512", str + "$HashMac512", str + "$KeyGenerator512");
            m34785for(configurableProvider, "DSTU7564-256", UAObjectIdentifiers.dstu7564mac_256);
            m34785for(configurableProvider, "DSTU7564-384", UAObjectIdentifiers.dstu7564mac_384);
            m34785for(configurableProvider, "DSTU7564-512", UAObjectIdentifiers.dstu7564mac_512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$do, reason: invalid class name */
    public static class Cdo extends Cnew {
        public Cdo() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Celse() {
            super(new org.bouncycastle.crypto.macs.Cif(512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0429for extends Cnew {
        public C0429for() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cgoto() {
            super("HMACDSTU7564-256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$if, reason: invalid class name */
    public static class Cif extends Cnew {
        public Cif() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$new, reason: invalid class name */
    public static class Cnew extends a6 implements Cloneable {
        public Cnew(int i) {
            super(new yv(i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            a6 a6Var = (a6) super.clone();
            a6Var.f46do = new yv((yv) this.f46do);
            return a6Var;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthis() {
            super("HMACDSTU7564-384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.for$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctry() {
            super(new org.bouncycastle.crypto.macs.Cif(256));
        }
    }

    private Cfor() {
    }
}
