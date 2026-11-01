package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.a6;
import android.support.v4.x9;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: org.bouncycastle.jcajce.provider.digest.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0428do extends a6 implements Cloneable {
        public C0428do() {
            super(new x9(160));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            C0428do c0428do = (C0428do) super.clone();
            c0428do.f46do = new x9((x9) this.f46do);
            return c0428do;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.do$for, reason: invalid class name */
    public static class Cfor extends a6 implements Cloneable {
        public Cfor() {
            super(new x9(384));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cfor cfor = (Cfor) super.clone();
            cfor.f46do = new x9((x9) this.f46do);
            return cfor;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.do$if, reason: invalid class name */
    public static class Cif extends a6 implements Cloneable {
        public Cif() {
            super(new x9(256));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cif cif = (Cif) super.clone();
            cif.f46do = new x9((x9) this.f46do);
            return cif;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.do$new, reason: invalid class name */
    public static class Cnew extends a6 implements Cloneable {
        public Cnew() {
            super(new x9(512));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Cnew cnew = (Cnew) super.clone();
            cnew.f46do = new x9((x9) this.f46do);
            return cnew;
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.digest.do$try, reason: invalid class name */
    public static class Ctry extends org.bouncycastle.jcajce.provider.digest.Cnew {

        /* renamed from: do, reason: not valid java name */
        private static final String f31290do = Cdo.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            StringBuilder sb = new StringBuilder();
            String str = f31290do;
            sb.append(str);
            sb.append("$Blake2b512");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-512", sb.toString());
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b512, "BLAKE2B-512");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-384", str + "$Blake2b384");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b384, "BLAKE2B-384");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-256", str + "$Blake2b256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b256, "BLAKE2B-256");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-160", str + "$Blake2b160");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b160, "BLAKE2B-160");
        }
    }

    private Cdo() {
    }
}
