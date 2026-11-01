package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.ig0;
import android.support.v4.kg0;
import android.support.v4.lg0;
import android.support.v4.pi0;
import android.support.v4.rl;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$break, reason: invalid class name */
    public static class Cbreak extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31305do = Ctry.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31305do;
            sb.append(str);
            sb.append("$Digest");
            configurableProvider.addAlgorithm("MessageDigest.GOST3411", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.GOST", "GOST3411");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.GOST-3411", "GOST3411");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.MessageDigest.");
            org.bouncycastle.asn1.Ccatch ccatch = CryptoProObjectIdentifiers.gostR3411;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), "GOST3411");
            m34786if(configurableProvider, "GOST3411", str + "$HashMac", str + "$KeyGenerator");
            m34785for(configurableProvider, "GOST3411", ccatch);
            configurableProvider.addAlgorithm("MessageDigest.GOST3411-2012-256", str + "$Digest2012_256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.GOST-2012-256", "GOST3411-2012-256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.GOST-3411-2012-256", "GOST3411-2012-256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + RosstandartObjectIdentifiers.id_tc26_gost_3411_12_256, "GOST3411-2012-256");
            m34786if(configurableProvider, "GOST3411-2012-256", str + "$HashMac2012_256", str + "$KeyGenerator2012_256");
            m34785for(configurableProvider, "GOST3411-2012-256", RosstandartObjectIdentifiers.id_tc26_hmac_gost_3411_12_256);
            configurableProvider.addAlgorithm("MessageDigest.GOST3411-2012-512", str + "$Digest2012_512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.GOST-2012-512", "GOST3411-2012-512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.GOST-3411-2012-512", "GOST3411-2012-512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + RosstandartObjectIdentifiers.id_tc26_gost_3411_12_512, "GOST3411-2012-512");
            m34786if(configurableProvider, "GOST3411-2012-512", str + "$HashMac2012_512", str + "$KeyGenerator2012_512");
            m34785for(configurableProvider, "GOST3411-2012-512", RosstandartObjectIdentifiers.id_tc26_hmac_gost_3411_12_512);
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHHMACGOST3411", str + "$PBEWithMacKeyFactory");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory." + ccatch, "PBEWITHHMACGOST3411");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccase() {
            super(new pi0(new ig0()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$catch, reason: invalid class name */
    public static class Ccatch extends org.bouncycastle.jcajce.provider.symmetric.util.Cbreak {
        public Ccatch() {
            super("PBEwithHmacGOST3411", null, false, 2, 6, 256, 0);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new kg0());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new kg0((kg0) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$else, reason: invalid class name */
    public static class Celse extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Celse() {
            super("HMACGOST3411", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$for, reason: invalid class name */
    public static class Cfor extends a6 implements Cloneable {
        public Cfor() {
            super(new ig0());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cfor cfor = (Cfor) super.clone();
            cfor.f46do = new ig0((ig0) this.f46do);
            return cfor;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$goto, reason: invalid class name */
    public static class Cgoto extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cgoto() {
            super("HMACGOST3411", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$if, reason: invalid class name */
    public static class Cif extends a6 implements Cloneable {
        public Cif() {
            super(new lg0());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cif cif = (Cif) super.clone();
            cif.f46do = new lg0((lg0) this.f46do);
            return cif;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cnew() {
            super(new pi0(new kg0()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$this, reason: invalid class name */
    public static class Cthis extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthis() {
            super("HMACGOST3411", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0432try extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public C0432try() {
            super(new pi0(new lg0()));
        }
    }

    private Ctry() {
    }
}
