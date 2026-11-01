package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.y9;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.if$do, reason: invalid class name */
    public static class Cdo extends a6 implements Cloneable {
        public Cdo() {
            super(new y9(128));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cdo cdo = (Cdo) super.clone();
            cdo.f46do = new y9((y9) this.f46do);
            return cdo;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.if$for, reason: invalid class name */
    public static class Cfor extends a6 implements Cloneable {
        public Cfor() {
            super(new y9(224));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cfor cfor = (Cfor) super.clone();
            cfor.f46do = new y9((y9) this.f46do);
            return cfor;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0430if extends a6 implements Cloneable {
        public C0430if() {
            super(new y9(160));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            C0430if c0430if = (C0430if) super.clone();
            c0430if.f46do = new y9((y9) this.f46do);
            return c0430if;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.if$new, reason: invalid class name */
    public static class Cnew extends a6 implements Cloneable {
        public Cnew() {
            super(new y9(256));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cnew cnew = (Cnew) super.clone();
            cnew.f46do = new y9((y9) this.f46do);
            return cnew;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.if$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31295do = Cif.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31295do;
            sb.append(str);
            sb.append("$Blake2s256");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2S-256", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2s256, "BLAKE2S-256");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2S-224", str + "$Blake2s224");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2s224, "BLAKE2S-224");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2S-160", str + "$Blake2s160");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2s160, "BLAKE2S-160");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2S-128", str + "$Blake2s128");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2s128, "BLAKE2S-128");
        }
    }

    private Cif() {
    }
}
