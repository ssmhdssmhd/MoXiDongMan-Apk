package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.symmetric.util.Cbreak;

/* renamed from: android.support.v4.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst {

    /* renamed from: android.support.v4.const$case, reason: invalid class name */
    public static class Ccase extends org.bouncycastle.jcajce.provider.symmetric.util.Ccase {
        public Ccase() {
            super(new jj1(), 0, 40, 1);
        }
    }

    /* renamed from: android.support.v4.const$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Ccase {
        public Cdo() {
            super(new jj1(), 0);
        }
    }

    /* renamed from: android.support.v4.const$else, reason: invalid class name */
    public static class Celse extends Cbreak {
        public Celse() {
            super("PBEWithSHAAnd128BitRC4", PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4, true, 2, 1, 40, 0);
        }
    }

    /* renamed from: android.support.v4.const$for, reason: invalid class name */
    public static class Cfor extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f840do = Cconst.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f840do;
            sb.append(str);
            sb.append("$Base");
            configurableProvider.addAlgorithm("Cipher.ARC4", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", PKCSObjectIdentifiers.rc4, "ARC4");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.ARCFOUR", "ARC4");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.RC4", "ARC4");
            configurableProvider.addAlgorithm("KeyGenerator.ARC4", str + "$KeyGen");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.RC4", "ARC4");
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.1.2.840.113549.3.4", "ARC4");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHAAND128BITRC4", str + "$PBEWithSHAAnd128BitKeyFactory");
            configurableProvider.addAlgorithm("SecretKeyFactory.PBEWITHSHAAND40BITRC4", str + "$PBEWithSHAAnd40BitKeyFactory");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.AlgorithmParameters.");
            Ccatch ccatch = PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4;
            sb2.append(ccatch);
            configurableProvider.addAlgorithm(sb2.toString(), "PKCS12PBE");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            Ccatch ccatch2 = PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC4;
            sb3.append(ccatch2);
            configurableProvider.addAlgorithm(sb3.toString(), "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4", "PKCS12PBE");
            configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4", "PKCS12PBE");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHAAND128BITRC4", str + "$PBEWithSHAAnd128Bit");
            configurableProvider.addAlgorithm("Cipher.PBEWITHSHAAND40BITRC4", str + "$PBEWithSHAAnd40Bit");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch, "PBEWITHSHAAND128BITRC4");
            configurableProvider.addAlgorithm("Alg.Alias.SecretKeyFactory", ccatch2, "PBEWITHSHAAND40BITRC4");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4", "PBEWITHSHAAND128BITRC4");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4", "PBEWITHSHAAND40BITRC4");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch, "PBEWITHSHAAND128BITRC4");
            configurableProvider.addAlgorithm("Alg.Alias.Cipher", ccatch2, "PBEWITHSHAAND40BITRC4");
        }
    }

    /* renamed from: android.support.v4.const$if, reason: invalid class name */
    public static class Cif extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cif() {
            super("RC4", 128, new rl());
        }
    }

    /* renamed from: android.support.v4.const$new, reason: invalid class name */
    public static class Cnew extends org.bouncycastle.jcajce.provider.symmetric.util.Ccase {
        public Cnew() {
            super(new jj1(), 0, 128, 1);
        }
    }

    /* renamed from: android.support.v4.const$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        public Ctry() {
            super("PBEWithSHAAnd128BitRC4", PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4, true, 2, 1, 128, 0);
        }
    }

    private Cconst() {
    }
}
