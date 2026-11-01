package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.mw0;
import android.support.v4.pi0;
import android.support.v4.rl;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.else$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new mw0());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new mw0((mw0) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.else$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACMD2", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.else$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new mw0()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.else$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31291do = Celse.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31291do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.MD2", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + PKCSObjectIdentifiers.md2, "MD2");
            m34786if(configurableProvider, "MD2", str + "$HashMac", str + "$KeyGenerator");
        }
    }

    private Celse() {
    }
}
