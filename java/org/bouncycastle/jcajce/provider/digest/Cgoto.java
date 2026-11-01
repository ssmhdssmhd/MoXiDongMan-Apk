package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.nw0;
import android.support.v4.pi0;
import android.support.v4.rl;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.goto$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new nw0());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new nw0((nw0) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.goto$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACMD4", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.goto$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new nw0()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.goto$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31294do = Cgoto.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31294do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.MD4", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + PKCSObjectIdentifiers.md4, "MD4");
            m34786if(configurableProvider, "MD4", str + "$HashMac", str + "$KeyGenerator");
        }
    }

    private Cgoto() {
    }
}
