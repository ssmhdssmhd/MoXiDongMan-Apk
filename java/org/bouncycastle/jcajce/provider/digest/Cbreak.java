package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.rj1;
import android.support.v4.rl;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.break$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new rj1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new rj1((rj1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.break$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACRIPEMD128", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.break$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new rj1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.break$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31285do = Cbreak.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31285do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.RIPEMD128", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + TeleTrusTObjectIdentifiers.ripemd128, "RIPEMD128");
            m34786if(configurableProvider, "RIPEMD128", str + "$HashMac", str + "$KeyGenerator");
        }
    }

    private Cbreak() {
    }
}
