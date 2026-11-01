package org.bouncycastle.jcajce.provider.drbg;

import android.support.v4.bq1;
import android.support.v4.ib1;
import android.support.v4.pi0;
import android.support.v4.q3;
import android.support.v4.w3;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.crypto.prng.EntropySourceProvider;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.drbg.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final String f31307do = "org.bouncycastle.jcajce.provider.drbg.do";

    /* renamed from: if, reason: not valid java name */
    private static final String[][] f31309if = {new String[]{"sun.security.provider.Sun", "sun.security.provider.SecureRandom"}, new String[]{"org.apache.harmony.security.provider.crypto.CryptoProvider", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"}, new String[]{"com.android.org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLRandom"}, new String[]{"org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLRandom"}};

    /* renamed from: for, reason: not valid java name */
    private static final Object[] f31308for = m34788break();

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$break, reason: invalid class name */
    public static class Cbreak extends SecureRandom {
        private final InputStream seedStream;

        /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$break$do, reason: invalid class name and collision with other inner class name */
        public class C0433do implements PrivilegedAction<InputStream> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ URL f31310do;

            public C0433do(URL url) {
                this.f31310do = url;
            }

            @Override // java.security.PrivilegedAction
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public InputStream run() {
                try {
                    return this.f31310do.openStream();
                } catch (IOException unused) {
                    throw new InternalError("unable to open random source");
                }
            }
        }

        /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$break$if, reason: invalid class name */
        public class Cif implements PrivilegedAction<Integer> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ byte[] f31312do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ int f31313for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ int f31314if;

            public Cif(byte[] bArr, int i, int i2) {
                this.f31312do = bArr;
                this.f31314if = i;
                this.f31313for = i2;
            }

            @Override // java.security.PrivilegedAction
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Integer run() {
                try {
                    return Integer.valueOf(Cbreak.this.seedStream.read(this.f31312do, this.f31314if, this.f31313for));
                } catch (IOException unused) {
                    throw new InternalError("unable to read random source");
                }
            }
        }

        public Cbreak(URL url) {
            super(null, new Ccase());
            this.seedStream = (InputStream) AccessController.doPrivileged(new C0433do(url));
        }

        /* renamed from: do, reason: not valid java name */
        private int m34800do(byte[] bArr, int i, int i2) {
            return ((Integer) AccessController.doPrivileged(new Cif(bArr, i, i2))).intValue();
        }

        @Override // java.security.SecureRandom
        public byte[] generateSeed(int i) {
            byte[] bArr;
            synchronized (this) {
                bArr = new byte[i];
                int i2 = 0;
                while (i2 != i) {
                    int iM34800do = m34800do(bArr, i2, i - i2);
                    if (iM34800do <= -1) {
                        break;
                    }
                    i2 += iM34800do;
                }
                if (i2 != i) {
                    throw new InternalError("unable to fully read random source");
                }
            }
            return bArr;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void setSeed(long j) {
        }

        @Override // java.security.SecureRandom
        public void setSeed(byte[] bArr) {
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$case, reason: invalid class name */
    public static class Ccase extends Provider {
        public Ccase() {
            super("BCHEP", 1.0d, "Bouncy Castle Hybrid Entropy Provider");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0434do implements PrivilegedAction<Boolean> {
        @Override // java.security.PrivilegedAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean run() {
            try {
                return Boolean.valueOf(SecureRandom.class.getMethod("getInstanceStrong", new Class[0]) != null);
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$else, reason: invalid class name */
    public static class Celse extends SecureRandom {
        private final SecureRandom baseRandom;
        private final org.bouncycastle.crypto.prng.Cif drbg;
        private final AtomicInteger samples;
        private final AtomicBoolean seedAvailable;

        /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$else$do, reason: invalid class name and collision with other inner class name */
        public class C0435do implements EntropySourceProvider {
            public C0435do() {
            }

            @Override // org.bouncycastle.crypto.prng.EntropySourceProvider
            public EntropySource get(int i) {
                return Celse.this.new Cif(i);
            }
        }

        /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$else$if, reason: invalid class name */
        public class Cif implements EntropySource {

            /* renamed from: do, reason: not valid java name */
            private final int f31317do;

            /* renamed from: if, reason: not valid java name */
            private final AtomicReference f31319if = new AtomicReference();

            /* renamed from: for, reason: not valid java name */
            private final AtomicBoolean f31318for = new AtomicBoolean(false);

            /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$else$if$do, reason: invalid class name and collision with other inner class name */
            public class RunnableC0436do implements Runnable {

                /* renamed from: do, reason: not valid java name */
                private final int f31321do;

                public RunnableC0436do(int i) {
                    this.f31321do = i;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Cif.this.f31319if.set(Celse.this.baseRandom.generateSeed(this.f31321do));
                    Celse.this.seedAvailable.set(true);
                }
            }

            public Cif(int i) {
                this.f31317do = (i + 7) / 8;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public int entropySize() {
                return this.f31317do * 8;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public byte[] getEntropy() {
                byte[] bArrGenerateSeed = (byte[]) this.f31319if.getAndSet(null);
                if (bArrGenerateSeed == null || bArrGenerateSeed.length != this.f31317do) {
                    bArrGenerateSeed = Celse.this.baseRandom.generateSeed(this.f31317do);
                } else {
                    this.f31318for.set(false);
                }
                if (!this.f31318for.getAndSet(true)) {
                    new Thread(new RunnableC0436do(this.f31317do)).start();
                }
                return bArrGenerateSeed;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public boolean isPredictionResistant() {
                return true;
            }
        }

        public Celse() {
            super(null, new Ccase());
            this.seedAvailable = new AtomicBoolean(false);
            this.samples = new AtomicInteger(0);
            SecureRandom secureRandomM34798this = Cdo.m34798this();
            this.baseRandom = secureRandomM34798this;
            this.drbg = new org.bouncycastle.crypto.prng.Cfor(new C0435do()).m33899try(org.bouncycastle.util.Cfor.m36358goto("Bouncy Castle Hybrid Entropy Source")).m33897if(new pi0(new bq1()), secureRandomM34798this.generateSeed(32), false);
        }

        @Override // java.security.SecureRandom
        public byte[] generateSeed(int i) {
            byte[] bArr = new byte[i];
            if (this.samples.getAndIncrement() > 20 && this.seedAvailable.getAndSet(false)) {
                this.samples.set(0);
                this.drbg.reseed(null);
            }
            this.drbg.nextBytes(bArr);
            return bArr;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void setSeed(long j) {
            org.bouncycastle.crypto.prng.Cif cif = this.drbg;
            if (cif != null) {
                cif.setSeed(j);
            }
        }

        @Override // java.security.SecureRandom
        public void setSeed(byte[] bArr) {
            org.bouncycastle.crypto.prng.Cif cif = this.drbg;
            if (cif != null) {
                cif.setSeed(bArr);
            }
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$for, reason: invalid class name */
    public static class Cfor implements PrivilegedAction<EntropySourceProvider> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f31323do;

        public Cfor(String str) {
            this.f31323do = str;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public EntropySourceProvider run() {
            try {
                return (EntropySourceProvider) org.bouncycastle.jcajce.provider.symmetric.util.Cgoto.m34896do(Cdo.class, this.f31323do).newInstance();
            } catch (Exception e) {
                throw new IllegalStateException("entropy source " + this.f31323do + " not created: " + e.getMessage(), e);
            }
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$goto, reason: invalid class name */
    public static class Cgoto extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("SecureRandom.DEFAULT", Cdo.f31307do + "$Default");
            configurableProvider.addAlgorithm("SecureRandom.NONCEANDIV", Cdo.f31307do + "$NonceAndIV");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$if, reason: invalid class name */
    public static class Cif implements PrivilegedAction<SecureRandom> {
        @Override // java.security.PrivilegedAction
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public SecureRandom run() {
            try {
                return (SecureRandom) SecureRandom.class.getMethod("getInstanceStrong", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
                return Cdo.m34793else();
            }
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$new, reason: invalid class name */
    public static class Cnew extends SecureRandom {
        public Cnew() {
            super((SecureRandomSpi) Cdo.f31308for[1], (Provider) Cdo.f31308for[0]);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$this, reason: invalid class name */
    public static class Cthis extends SecureRandomSpi {

        /* renamed from: do, reason: not valid java name */
        private static final SecureRandom f31324do = Cdo.m34789case(false);

        @Override // java.security.SecureRandomSpi
        public byte[] engineGenerateSeed(int i) {
            return f31324do.generateSeed(i);
        }

        @Override // java.security.SecureRandomSpi
        public void engineNextBytes(byte[] bArr) {
            f31324do.nextBytes(bArr);
        }

        @Override // java.security.SecureRandomSpi
        public void engineSetSeed(byte[] bArr) {
            f31324do.setSeed(bArr);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.drbg.do$try, reason: invalid class name */
    public static class Ctry extends SecureRandomSpi {

        /* renamed from: do, reason: not valid java name */
        private static final SecureRandom f31325do = Cdo.m34789case(true);

        @Override // java.security.SecureRandomSpi
        public byte[] engineGenerateSeed(int i) {
            return f31325do.generateSeed(i);
        }

        @Override // java.security.SecureRandomSpi
        public void engineNextBytes(byte[] bArr) {
            f31325do.nextBytes(bArr);
        }

        @Override // java.security.SecureRandomSpi
        public void engineSetSeed(byte[] bArr) {
            f31325do.setSeed(bArr);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static final Object[] m34788break() {
        int i = 0;
        while (true) {
            String[][] strArr = f31309if;
            if (i >= strArr.length) {
                return null;
            }
            String[] strArr2 = strArr[i];
            try {
                return new Object[]{Class.forName(strArr2[0]).newInstance(), Class.forName(strArr2[1]).newInstance()};
            } catch (Throwable unused) {
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static SecureRandom m34789case(boolean z) {
        if (System.getProperty("org.bouncycastle.drbg.entropysource") == null) {
            Celse celse = new Celse();
            byte[] bArrGenerateSeed = celse.generateSeed(16);
            return new org.bouncycastle.crypto.prng.Cfor(celse, true).m33899try(z ? m34790catch(bArrGenerateSeed) : m34791class(bArrGenerateSeed)).m33896for(new bq1(), celse.generateSeed(32), z);
        }
        EntropySourceProvider entropySourceProviderM34795goto = m34795goto();
        EntropySource entropySource = entropySourceProviderM34795goto.get(128);
        byte[] entropy = entropySource.getEntropy();
        return new org.bouncycastle.crypto.prng.Cfor(entropySourceProviderM34795goto).m33899try(z ? m34790catch(entropy) : m34791class(entropy)).m33896for(new bq1(), q3.m6367default(entropySource.getEntropy(), entropySource.getEntropy()), z);
    }

    /* renamed from: catch, reason: not valid java name */
    private static byte[] m34790catch(byte[] bArr) {
        return q3.m6372finally(org.bouncycastle.util.Cfor.m36358goto("Default"), bArr, ib1.m3375throws(Thread.currentThread().getId()), ib1.m3375throws(System.currentTimeMillis()));
    }

    /* renamed from: class, reason: not valid java name */
    private static byte[] m34791class(byte[] bArr) {
        return q3.m6372finally(org.bouncycastle.util.Cfor.m36358goto("Nonce"), bArr, ib1.m3366private(Thread.currentThread().getId()), ib1.m3366private(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static SecureRandom m34793else() {
        if (f31308for != null) {
            return new Cnew();
        }
        try {
            return new Cbreak(new URL(Security.getProperty("securerandom.source")));
        } catch (Exception unused) {
            return new SecureRandom();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static EntropySourceProvider m34795goto() {
        return (EntropySourceProvider) AccessController.doPrivileged(new Cfor(System.getProperty("org.bouncycastle.drbg.entropysource")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static SecureRandom m34798this() {
        return ((Boolean) AccessController.doPrivileged(new C0434do())).booleanValue() ? (SecureRandom) AccessController.doPrivileged(new Cif()) : m34793else();
    }
}
