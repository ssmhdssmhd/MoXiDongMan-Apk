package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.o8;
import android.support.v4.qy0;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.crypto.spec.SecretKeySpec;

@o8
/* renamed from: com.google.common.hash.const, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cconst {

    /* renamed from: do, reason: not valid java name */
    public static final int f15154do = (int) System.currentTimeMillis();

    /* renamed from: com.google.common.hash.const$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: do, reason: not valid java name */
        public static final HashFunction f15155do = new Cnative(qy0.f5539case, "Hashing.sha1()");

        private Ccase() {
        }
    }

    /* renamed from: com.google.common.hash.const$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: do, reason: not valid java name */
        public static final HashFunction f15156do = new Cnative("SHA-256", "Hashing.sha256()");

        private Celse() {
        }
    }

    /* renamed from: com.google.common.hash.const$for, reason: invalid class name */
    public static final class Cfor extends com.google.common.hash.Cif {
        @Override // com.google.common.hash.HashFunction
        public int bits() {
            int iBits = 0;
            for (HashFunction hashFunction : this.f15171do) {
                iBits += hashFunction.bits();
            }
            return iBits;
        }

        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cfor) {
                return Arrays.equals(this.f15171do, ((Cfor) obj).f15171do);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f15171do);
        }

        @Override // com.google.common.hash.Cif
        /* renamed from: if, reason: not valid java name */
        public Cclass mo16927if(Hasher[] hasherArr) {
            byte[] bArr = new byte[bits() / 8];
            int iWriteBytesTo = 0;
            for (Hasher hasher : hasherArr) {
                Cclass cclassHash = hasher.hash();
                iWriteBytesTo += cclassHash.writeBytesTo(bArr, iWriteBytesTo, cclassHash.bits() / 8);
            }
            return Cclass.fromBytesNoCopy(bArr);
        }

        private Cfor(HashFunction... hashFunctionArr) {
            super(hashFunctionArr);
            for (HashFunction hashFunction : hashFunctionArr) {
                af1.m228super(hashFunction.bits() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", hashFunction.bits(), hashFunction);
            }
        }
    }

    /* renamed from: com.google.common.hash.const$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: do, reason: not valid java name */
        public static final HashFunction f15157do = new Cnative(qy0.f5544this, "Hashing.sha384()");

        private Cgoto() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @fm0
    /* renamed from: com.google.common.hash.const$if, reason: invalid class name */
    public static abstract class Cif implements ImmutableSupplier<Checksum> {
        public static final Cif ADLER_32;
        public static final Cif CRC_32;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cif[] f15158do;
        public final HashFunction hashFunction;

        /* renamed from: com.google.common.hash.const$if$do, reason: invalid class name */
        public enum Cdo extends Cif {
            public Cdo(String str, int i, String str2) {
                super(str, i, str2);
            }

            @Override // com.google.common.base.Supplier
            public Checksum get() {
                return new CRC32();
            }
        }

        /* renamed from: com.google.common.hash.const$if$if, reason: invalid class name and collision with other inner class name */
        public enum C0126if extends Cif {
            public C0126if(String str, int i, String str2) {
                super(str, i, str2);
            }

            @Override // com.google.common.base.Supplier
            public Checksum get() {
                return new Adler32();
            }
        }

        static {
            Cdo cdo = new Cdo("CRC_32", 0, "Hashing.crc32()");
            CRC_32 = cdo;
            C0126if c0126if = new C0126if("ADLER_32", 1, "Hashing.adler32()");
            ADLER_32 = c0126if;
            f15158do = new Cif[]{cdo, c0126if};
        }

        public static Cif valueOf(String str) {
            return (Cif) Enum.valueOf(Cif.class, str);
        }

        public static Cif[] values() {
            return (Cif[]) f15158do.clone();
        }

        private Cif(String str, int i, String str2) {
            this.hashFunction = new com.google.common.hash.Cgoto(this, 32, str2);
        }
    }

    /* renamed from: com.google.common.hash.const$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        private long f15159do;

        public Cnew(long j) {
            this.f15159do = j;
        }

        /* renamed from: do, reason: not valid java name */
        public double m16928do() {
            long j = (this.f15159do * 2862933555777941757L) + 1;
            this.f15159do = j;
            double d = ((int) (j >>> 33)) + 1;
            Double.isNaN(d);
            return d / 2.147483648E9d;
        }
    }

    /* renamed from: com.google.common.hash.const$this, reason: invalid class name */
    public static class Cthis {

        /* renamed from: do, reason: not valid java name */
        public static final HashFunction f15160do = new Cnative("SHA-512", "Hashing.sha512()");

        private Cthis() {
        }
    }

    /* renamed from: com.google.common.hash.const$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final HashFunction f15161do = new Cnative("MD5", "Hashing.md5()");

        private Ctry() {
        }
    }

    private Cconst() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static HashFunction m16895abstract() {
        return Cthis.f15160do;
    }

    /* renamed from: break, reason: not valid java name */
    public static HashFunction m16896break() {
        return com.google.common.hash.Cthis.f15228do;
    }

    /* renamed from: case, reason: not valid java name */
    public static HashFunction m16897case(Iterable<HashFunction> iterable) {
        af1.m205continue(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<HashFunction> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        af1.m202catch(arrayList.size() > 0, "number of hash functions (%s) must be > 0", arrayList.size());
        return new Cfor((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    /* renamed from: catch, reason: not valid java name */
    public static HashFunction m16898catch() {
        return Cbreak.f15141do;
    }

    /* renamed from: class, reason: not valid java name */
    public static HashFunction m16899class(int i) {
        int iM16910if = m16910if(i);
        if (iM16910if == 32) {
            return Creturn.GOOD_FAST_HASH_32;
        }
        if (iM16910if <= 128) {
            return Cpublic.GOOD_FAST_HASH_128;
        }
        int i2 = (iM16910if + 127) / 128;
        HashFunction[] hashFunctionArr = new HashFunction[i2];
        hashFunctionArr[0] = Cpublic.GOOD_FAST_HASH_128;
        int i3 = f15154do;
        for (int i4 = 1; i4 < i2; i4++) {
            i3 += 1500450271;
            hashFunctionArr[i4] = m16924throws(i3);
        }
        return new Cfor(hashFunctionArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static HashFunction m16900const(Key key) {
        return new Cimport("HmacMD5", key, m16917return("hmacMd5", key));
    }

    /* renamed from: continue, reason: not valid java name */
    public static HashFunction m16901continue() {
        return Cstatic.SIP_HASH_24;
    }

    /* renamed from: default, reason: not valid java name */
    public static HashFunction m16902default() {
        return Creturn.MURMUR3_32;
    }

    /* renamed from: do, reason: not valid java name */
    public static HashFunction m16903do() {
        return Cif.ADLER_32.hashFunction;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m16904else(long j, int i) {
        int i2 = 0;
        af1.m202catch(i > 0, "buckets must be positive: %s", i);
        Cnew cnew = new Cnew(j);
        while (true) {
            double d = i2 + 1;
            double dM16928do = cnew.m16928do();
            Double.isNaN(d);
            int i3 = (int) (d / dM16928do);
            if (i3 < 0 || i3 >= i) {
                break;
            }
            i2 = i3;
        }
        return i2;
    }

    /* renamed from: extends, reason: not valid java name */
    public static HashFunction m16905extends(int i) {
        return new Creturn(i);
    }

    /* renamed from: final, reason: not valid java name */
    public static HashFunction m16906final(byte[] bArr) {
        return m16900const(new SecretKeySpec((byte[]) af1.m205continue(bArr), "HmacMD5"));
    }

    @Deprecated
    /* renamed from: finally, reason: not valid java name */
    public static HashFunction m16907finally() {
        return Ccase.f15155do;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cclass m16908for(Iterable<Cclass> iterable) {
        Iterator<Cclass> it = iterable.iterator();
        af1.m235try(it.hasNext(), "Must be at least 1 hash code to combine.");
        int iBits = it.next().bits() / 8;
        byte[] bArr = new byte[iBits];
        Iterator<Cclass> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrAsBytes = it2.next().asBytes();
            af1.m235try(bArrAsBytes.length == iBits, "All hashcodes must have the same bit length.");
            for (int i = 0; i < bArrAsBytes.length; i++) {
                bArr[i] = (byte) ((bArr[i] * 37) ^ bArrAsBytes[i]);
            }
        }
        return Cclass.fromBytesNoCopy(bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m16909goto(Cclass cclass, int i) {
        return m16904else(cclass.padToLong(), i);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m16910if(int i) {
        af1.m235try(i > 0, "Number of bits must be positive");
        return (i + 31) & (-32);
    }

    /* renamed from: import, reason: not valid java name */
    public static HashFunction m16911import(byte[] bArr) {
        return m16926while(new SecretKeySpec((byte[]) af1.m205continue(bArr), "HmacSHA256"));
    }

    /* renamed from: native, reason: not valid java name */
    public static HashFunction m16912native(Key key) {
        return new Cimport("HmacSHA512", key, m16917return("hmacSha512", key));
    }

    /* renamed from: new, reason: not valid java name */
    public static Cclass m16913new(Iterable<Cclass> iterable) {
        Iterator<Cclass> it = iterable.iterator();
        af1.m235try(it.hasNext(), "Must be at least 1 hash code to combine.");
        int iBits = it.next().bits() / 8;
        byte[] bArr = new byte[iBits];
        Iterator<Cclass> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] bArrAsBytes = it2.next().asBytes();
            af1.m235try(bArrAsBytes.length == iBits, "All hashcodes must have the same bit length.");
            for (int i = 0; i < bArrAsBytes.length; i++) {
                bArr[i] = (byte) (bArr[i] + bArrAsBytes[i]);
            }
        }
        return Cclass.fromBytesNoCopy(bArr);
    }

    /* renamed from: package, reason: not valid java name */
    public static HashFunction m16914package() {
        return Celse.f15156do;
    }

    /* renamed from: private, reason: not valid java name */
    public static HashFunction m16915private() {
        return Cgoto.f15157do;
    }

    /* renamed from: public, reason: not valid java name */
    public static HashFunction m16916public(byte[] bArr) {
        return m16912native(new SecretKeySpec((byte[]) af1.m205continue(bArr), "HmacSHA512"));
    }

    /* renamed from: return, reason: not valid java name */
    private static String m16917return(String str, Key key) {
        return String.format("Hashing.%s(Key[algorithm=%s, format=%s])", str, key.getAlgorithm(), key.getFormat());
    }

    @Deprecated
    /* renamed from: static, reason: not valid java name */
    public static HashFunction m16918static() {
        return Ctry.f15161do;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static HashFunction m16919strictfp(long j, long j2) {
        return new Cstatic(2, 4, j, j2);
    }

    /* renamed from: super, reason: not valid java name */
    public static HashFunction m16920super(Key key) {
        return new Cimport("HmacSHA1", key, m16917return("hmacSha1", key));
    }

    /* renamed from: switch, reason: not valid java name */
    public static HashFunction m16921switch() {
        return Cpublic.MURMUR3_128;
    }

    /* renamed from: this, reason: not valid java name */
    public static HashFunction m16922this() {
        return Cif.CRC_32.hashFunction;
    }

    /* renamed from: throw, reason: not valid java name */
    public static HashFunction m16923throw(byte[] bArr) {
        return m16920super(new SecretKeySpec((byte[]) af1.m205continue(bArr), "HmacSHA1"));
    }

    /* renamed from: throws, reason: not valid java name */
    public static HashFunction m16924throws(int i) {
        return new Cpublic(i);
    }

    /* renamed from: try, reason: not valid java name */
    public static HashFunction m16925try(HashFunction hashFunction, HashFunction hashFunction2, HashFunction... hashFunctionArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashFunction);
        arrayList.add(hashFunction2);
        arrayList.addAll(Arrays.asList(hashFunctionArr));
        return new Cfor((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    /* renamed from: while, reason: not valid java name */
    public static HashFunction m16926while(Key key) {
        return new Cimport("HmacSHA256", key, m16917return("hmacSha256", key));
    }
}
