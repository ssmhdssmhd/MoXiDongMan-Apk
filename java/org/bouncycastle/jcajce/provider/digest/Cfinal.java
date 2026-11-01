package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.pi0;
import android.support.v4.qy0;
import android.support.v4.rl;
import android.support.v4.wp1;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.iana.IANAObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cbreak;

/* renamed from: org.bouncycastle.jcajce.provider.digest.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.final$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new pi0(new wp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.final$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new wp1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new wp1((wp1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.final$for, reason: invalid class name */
    public static class Cfor extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfor() {
            super("HMACSHA1", 160, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.final$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cif() {
            super(new pi0(new wp1()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.final$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31292do = Cfinal.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31292do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.SHA-1", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA1", qy0.f5539case);
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SHA", qy0.f5539case);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.MessageDigest.");
            Ccatch ccatch = OIWObjectIdentifiers.idSHA1;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), qy0.f5539case);
            m34786if(configurableProvider, "SHA1", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "SHA1", PKCSObjectIdentifiers.id_hmacWithSHA1);
            m34785for(configurableProvider, "SHA1", IANAObjectIdentifiers.hmacSHA1);
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA", str + "$SHA1Mac");
            configurableProvider.addAlgorithm("Mac.PBEWITHHMACSHA1", str + "$SHA1Mac");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA", "PBEWITHHMACSHA1");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch, "PBEWITHHMACSHA1");
            configurableProvider.addAlgorithm("Alg.Alias.Mac." + ccatch, "PBEWITHHMACSHA");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHHMACSHA1", str + "$PBEWithMacKeyFactory");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.final$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        public Ctry() {
            super("PBEwithHmacSHA", null, false, 2, 1, 160, 0);
        }
    }

    private Cfinal() {
    }
}
