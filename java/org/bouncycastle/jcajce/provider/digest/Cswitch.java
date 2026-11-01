package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.rl;
import android.support.v4.xf2;
import org.bouncycastle.asn1.iso.ISOIECObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cswitch {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.switch$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new xf2());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new xf2((xf2) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.switch$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACWHIRLPOOL", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.switch$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new xf2()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.switch$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31302do = Cswitch.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31302do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.WHIRLPOOL", sb.toString());
            configurableProvider.addAlgorithm("MessageDigest", ISOIECObjectIdentifiers.whirlpool, str + "$Digest");
            m34786if(configurableProvider, "WHIRLPOOL", str + "$HashMac", str + "$KeyGenerator");
        }
    }

    private Cswitch() {
    }
}
