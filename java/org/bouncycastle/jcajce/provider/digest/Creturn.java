package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.f02;
import android.support.v4.on0;
import android.support.v4.pi0;
import android.support.v4.rl;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$a */
    public static class a extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public a() {
            super(new pi0(new f02(512, 256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$a0 */
    public static class a0 extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public a0() {
            super(new org.bouncycastle.crypto.macs.Cbreak(512, 224));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$abstract, reason: invalid class name */
    public static class Cabstract extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cabstract() {
            super(new pi0(new f02(1024, 1024)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$b */
    public static class b extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public b() {
            super(new pi0(new f02(512, 384)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$b0 */
    public static class b0 extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public b0() {
            super(new org.bouncycastle.crypto.macs.Cbreak(512, 256));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$break, reason: invalid class name */
    public static class Cbreak extends Cif {
        public Cbreak() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$c */
    public static class c extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public c() {
            super(new pi0(new f02(512, 512)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$c0 */
    public static class c0 extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public c0() {
            super(new org.bouncycastle.crypto.macs.Cbreak(512, 384));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$case, reason: invalid class name */
    public static class Ccase extends Cdo {
        public Ccase() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$catch, reason: invalid class name */
    public static class Ccatch extends Cfor {
        public Ccatch() {
            super(128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$class, reason: invalid class name */
    public static class Cclass extends Cfor {
        public Cclass() {
            super(160);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$const, reason: invalid class name */
    public static class Cconst extends Cfor {
        public Cconst() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$continue, reason: invalid class name */
    public static class Ccontinue extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ccontinue() {
            super(new pi0(new f02(1024, 384)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$d */
    public static class d extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31299do = Creturn.class.getName();

        /* renamed from: new, reason: not valid java name */
        private void m34787new(ConfigurableProvider configurableProvider, int i, int i2) {
            String str = "Skein-MAC-" + i + "-" + i2;
            StringBuilder sb = new StringBuilder();
            String str2 = f31299do;
            sb.append(str2);
            sb.append("$SkeinMac_");
            sb.append(i);
            sb.append("_");
            sb.append(i2);
            configurableProvider.addAlgorithm("Mac." + str, sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.Mac.Skein-MAC" + i + on0.f4694final + i2, str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("KeyGenerator.");
            sb2.append(str);
            configurableProvider.addAlgorithm(sb2.toString(), str2 + "$SkeinMacKeyGenerator_" + i + "_" + i2);
            configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.Skein-MAC" + i + on0.f4694final + i2, str);
        }

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31299do;
            sb.append(str);
            sb.append("$Digest_256_128");
            configurableProvider.addAlgorithm("MessageDigest.Skein-256-128", sb.toString());
            configurableProvider.addAlgorithm("MessageDigest.Skein-256-160", str + "$Digest_256_160");
            configurableProvider.addAlgorithm("MessageDigest.Skein-256-224", str + "$Digest_256_224");
            configurableProvider.addAlgorithm("MessageDigest.Skein-256-256", str + "$Digest_256_256");
            configurableProvider.addAlgorithm("MessageDigest.Skein-512-128", str + "$Digest_512_128");
            configurableProvider.addAlgorithm("MessageDigest.Skein-512-160", str + "$Digest_512_160");
            configurableProvider.addAlgorithm("MessageDigest.Skein-512-224", str + "$Digest_512_224");
            configurableProvider.addAlgorithm("MessageDigest.Skein-512-256", str + "$Digest_512_256");
            configurableProvider.addAlgorithm("MessageDigest.Skein-512-384", str + "$Digest_512_384");
            configurableProvider.addAlgorithm("MessageDigest.Skein-512-512", str + "$Digest_512_512");
            configurableProvider.addAlgorithm("MessageDigest.Skein-1024-384", str + "$Digest_1024_384");
            configurableProvider.addAlgorithm("MessageDigest.Skein-1024-512", str + "$Digest_1024_512");
            configurableProvider.addAlgorithm("MessageDigest.Skein-1024-1024", str + "$Digest_1024_1024");
            m34786if(configurableProvider, "Skein-256-128", str + "$HashMac_256_128", str + "$HMacKeyGenerator_256_128");
            m34786if(configurableProvider, "Skein-256-160", str + "$HashMac_256_160", str + "$HMacKeyGenerator_256_160");
            m34786if(configurableProvider, "Skein-256-224", str + "$HashMac_256_224", str + "$HMacKeyGenerator_256_224");
            m34786if(configurableProvider, "Skein-256-256", str + "$HashMac_256_256", str + "$HMacKeyGenerator_256_256");
            m34786if(configurableProvider, "Skein-512-128", str + "$HashMac_512_128", str + "$HMacKeyGenerator_512_128");
            m34786if(configurableProvider, "Skein-512-160", str + "$HashMac_512_160", str + "$HMacKeyGenerator_512_160");
            m34786if(configurableProvider, "Skein-512-224", str + "$HashMac_512_224", str + "$HMacKeyGenerator_512_224");
            m34786if(configurableProvider, "Skein-512-256", str + "$HashMac_512_256", str + "$HMacKeyGenerator_512_256");
            m34786if(configurableProvider, "Skein-512-384", str + "$HashMac_512_384", str + "$HMacKeyGenerator_512_384");
            m34786if(configurableProvider, "Skein-512-512", str + "$HashMac_512_512", str + "$HMacKeyGenerator_512_512");
            m34786if(configurableProvider, "Skein-1024-384", str + "$HashMac_1024_384", str + "$HMacKeyGenerator_1024_384");
            m34786if(configurableProvider, "Skein-1024-512", str + "$HashMac_1024_512", str + "$HMacKeyGenerator_1024_512");
            m34786if(configurableProvider, "Skein-1024-1024", str + "$HashMac_1024_1024", str + "$HMacKeyGenerator_1024_1024");
            m34787new(configurableProvider, 256, 128);
            m34787new(configurableProvider, 256, 160);
            m34787new(configurableProvider, 256, 224);
            m34787new(configurableProvider, 256, 256);
            m34787new(configurableProvider, 512, 128);
            m34787new(configurableProvider, 512, 160);
            m34787new(configurableProvider, 512, 224);
            m34787new(configurableProvider, 512, 256);
            m34787new(configurableProvider, 512, 384);
            m34787new(configurableProvider, 512, 512);
            m34787new(configurableProvider, 1024, 384);
            m34787new(configurableProvider, 1024, 512);
            m34787new(configurableProvider, 1024, 1024);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$d0 */
    public static class d0 extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public d0() {
            super(new org.bouncycastle.crypto.macs.Cbreak(512, 512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$default, reason: invalid class name */
    public static class Cdefault extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cdefault() {
            super("HMACSkein-512-160", 160, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo(int i) {
            super(new f02(1024, i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            a6 a6Var = (a6) super.clone();
            a6Var.f46do = new f02((f02) this.f46do);
            return a6Var;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$e */
    public static class e extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public e() {
            super("Skein-MAC-1024-1024", 1024, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$else, reason: invalid class name */
    public static class Celse extends Cif {
        public Celse() {
            super(128);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$extends, reason: invalid class name */
    public static class Cextends extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cextends() {
            super("HMACSkein-512-224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$f */
    public static class f extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public f() {
            super("Skein-MAC-1024-384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$final, reason: invalid class name */
    public static class Cfinal extends Cfor {
        public Cfinal() {
            super(256);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$finally, reason: invalid class name */
    public static class Cfinally extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cfinally() {
            super("HMACSkein-512-256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$for, reason: invalid class name */
    public static class Cfor extends a6 implements Cloneable {
        public Cfor(int i) {
            super(new f02(512, i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            a6 a6Var = (a6) super.clone();
            a6Var.f46do = new f02((f02) this.f46do);
            return a6Var;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$g */
    public static class g extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public g() {
            super("Skein-MAC-1024-512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$goto, reason: invalid class name */
    public static class Cgoto extends Cif {
        public Cgoto() {
            super(160);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$h */
    public static class h extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public h() {
            super("Skein-MAC-256-128", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$i */
    public static class i extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public i() {
            super("Skein-MAC-256-160", 160, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$if, reason: invalid class name */
    public static class Cif extends a6 implements Cloneable {
        public Cif(int i) {
            super(new f02(256, i));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            a6 a6Var = (a6) super.clone();
            a6Var.f46do = new f02((f02) this.f46do);
            return a6Var;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$implements, reason: invalid class name */
    public static class Cimplements extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cimplements() {
            super(new pi0(new f02(512, 128)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$import, reason: invalid class name */
    public static class Cimport extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cimport() {
            super("HMACSkein-1024-384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$instanceof, reason: invalid class name */
    public static class Cinstanceof extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cinstanceof() {
            super(new pi0(new f02(512, 160)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$interface, reason: invalid class name */
    public static class Cinterface extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cinterface() {
            super(new pi0(new f02(256, 160)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$j */
    public static class j extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public j() {
            super("Skein-MAC-256-224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$k */
    public static class k extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public k() {
            super("Skein-MAC-256-256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$l */
    public static class l extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public l() {
            super("Skein-MAC-512-128", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$m */
    public static class m extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public m() {
            super("Skein-MAC-512-160", 160, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$n */
    public static class n extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public n() {
            super("Skein-MAC-512-224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$native, reason: invalid class name */
    public static class Cnative extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cnative() {
            super("HMACSkein-1024-512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$new, reason: invalid class name */
    public static class Cnew extends Cdo {
        public Cnew() {
            super(1024);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$o */
    public static class o extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public o() {
            super("Skein-MAC-512-256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$p */
    public static class p extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public p() {
            super("Skein-MAC-512-384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$package, reason: invalid class name */
    public static class Cpackage extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cpackage() {
            super("HMACSkein-512-384", 384, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$private, reason: invalid class name */
    public static class Cprivate extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cprivate() {
            super("HMACSkein-512-512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$protected, reason: invalid class name */
    public static class Cprotected extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cprotected() {
            super(new pi0(new f02(256, 224)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$public, reason: invalid class name */
    public static class Cpublic extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cpublic() {
            super("HMACSkein-256-128", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$q */
    public static class q extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public q() {
            super("Skein-MAC-512-512", 512, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$r */
    public static class r extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public r() {
            super(new org.bouncycastle.crypto.macs.Cbreak(1024, 1024));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$return, reason: invalid class name and collision with other inner class name */
    public static class C0431return extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public C0431return() {
            super("HMACSkein-256-160", 160, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$s */
    public static class s extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public s() {
            super(new org.bouncycastle.crypto.macs.Cbreak(1024, 384));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$static, reason: invalid class name */
    public static class Cstatic extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cstatic() {
            super("HMACSkein-256-224", 224, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$strictfp, reason: invalid class name */
    public static class Cstrictfp extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cstrictfp() {
            super(new pi0(new f02(1024, 512)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$super, reason: invalid class name */
    public static class Csuper extends Cfor {
        public Csuper() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$switch, reason: invalid class name */
    public static class Cswitch extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cswitch() {
            super("HMACSkein-256-256", 256, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$synchronized, reason: invalid class name */
    public static class Csynchronized extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Csynchronized() {
            super(new pi0(new f02(512, 224)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$t */
    public static class t extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public t() {
            super(new org.bouncycastle.crypto.macs.Cbreak(1024, 512));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$this, reason: invalid class name */
    public static class Cthis extends Cif {
        public Cthis() {
            super(224);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$throw, reason: invalid class name */
    public static class Cthrow extends Cfor {
        public Cthrow() {
            super(512);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$throws, reason: invalid class name */
    public static class Cthrows extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cthrows() {
            super("HMACSkein-512-128", 128, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$transient, reason: invalid class name */
    public static class Ctransient extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Ctransient() {
            super(new pi0(new f02(256, 256)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$try, reason: invalid class name */
    public static class Ctry extends Cdo {
        public Ctry() {
            super(384);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$u */
    public static class u extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public u() {
            super(new org.bouncycastle.crypto.macs.Cbreak(256, 128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$v */
    public static class v extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public v() {
            super(new org.bouncycastle.crypto.macs.Cbreak(256, 160));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$volatile, reason: invalid class name */
    public static class Cvolatile extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public Cvolatile() {
            super(new pi0(new f02(256, 128)));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$w */
    public static class w extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public w() {
            super(new org.bouncycastle.crypto.macs.Cbreak(256, 224));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$while, reason: invalid class name */
    public static class Cwhile extends org.bouncycastle.jcajce.provider.symmetric.util.Cfor {
        public Cwhile() {
            super("HMACSkein-1024-1024", 1024, new rl());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$x */
    public static class x extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public x() {
            super(new org.bouncycastle.crypto.macs.Cbreak(256, 256));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$y */
    public static class y extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public y() {
            super(new org.bouncycastle.crypto.macs.Cbreak(512, 128));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.return$z */
    public static class z extends org.bouncycastle.jcajce.provider.symmetric.util.Cnew {
        public z() {
            super(new org.bouncycastle.crypto.macs.Cbreak(512, 160));
        }
    }

    private Creturn() {
    }
}
