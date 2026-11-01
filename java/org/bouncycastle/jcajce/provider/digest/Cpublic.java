package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.lq1;
import org.bouncycastle.asn1.gm.GMObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.public$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new lq1());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new lq1((lq1) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.public$if, reason: invalid class name */
    public static class Cif extends Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31298do = Cpublic.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("MessageDigest.SM3", f31298do + "$Digest");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.SM3", "SM3");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest.1.2.156.197.1.401", "SM3");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + GMObjectIdentifiers.sm3, "SM3");
        }
    }

    private Cpublic() {
    }
}
