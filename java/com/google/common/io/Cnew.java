package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.t3;
import com.google.common.base.Cwhile;
import com.google.common.collect.v0;
import com.google.common.hash.Ccatch;
import com.google.common.hash.Cclass;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@li0
/* renamed from: com.google.common.io.new, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cnew {

    /* renamed from: com.google.common.io.new$do, reason: invalid class name */
    public class Cdo extends Cgoto {

        /* renamed from: do, reason: not valid java name */
        public final Charset f15321do;

        public Cdo(Charset charset) {
            this.f15321do = (Charset) af1.m205continue(charset);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: const */
        public Reader mo17020const() throws IOException {
            return new InputStreamReader(Cnew.this.mo16996const(), this.f15321do);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: do */
        public Cnew mo17021do(Charset charset) {
            return charset.equals(this.f15321do) ? Cnew.this : super.mo17021do(charset);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: final */
        public String mo17022final() throws IOException {
            return new String(Cnew.this.mo17090super(), this.f15321do);
        }

        public String toString() {
            return Cnew.this.toString() + ".asCharSource(" + this.f15321do + ")";
        }
    }

    /* renamed from: com.google.common.io.new$for, reason: invalid class name */
    public static final class Cfor extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Iterable<? extends Cnew> f15323do;

        public Cfor(Iterable<? extends Cnew> iterable) {
            this.f15323do = (Iterable) af1.m205continue(iterable);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: catch */
        public boolean mo17085catch() throws IOException {
            Iterator<? extends Cnew> it = this.f15323do.iterator();
            while (it.hasNext()) {
                if (!it.next().mo17085catch()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() throws IOException {
            return new Creturn(this.f15323do.iterator());
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: throw */
        public long mo17091throw() throws IOException {
            Iterator<? extends Cnew> it = this.f15323do.iterator();
            long jMo17091throw = 0;
            while (it.hasNext()) {
                jMo17091throw += it.next().mo17091throw();
                if (jMo17091throw < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return jMo17091throw;
        }

        public String toString() {
            return "ByteSource.concat(" + this.f15323do + ")";
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: while */
        public Cwhile<Long> mo17093while() {
            Iterable<? extends Cnew> iterable = this.f15323do;
            if (!(iterable instanceof Collection)) {
                return Cwhile.absent();
            }
            Iterator<? extends Cnew> it = iterable.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                Cwhile<Long> cwhileMo17093while = it.next().mo17093while();
                if (!cwhileMo17093while.isPresent()) {
                    return Cwhile.absent();
                }
                jLongValue += cwhileMo17093while.get().longValue();
                if (jLongValue < 0) {
                    return Cwhile.of(Long.MAX_VALUE);
                }
            }
            return Cwhile.of(Long.valueOf(jLongValue));
        }
    }

    /* renamed from: com.google.common.io.new$if, reason: invalid class name */
    public static class Cif extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final byte[] f15324do;

        /* renamed from: for, reason: not valid java name */
        public final int f15325for;

        /* renamed from: if, reason: not valid java name */
        public final int f15326if;

        public Cif(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: break */
        public Cclass mo17083break(HashFunction hashFunction) throws IOException {
            return hashFunction.hashBytes(this.f15324do, this.f15326if, this.f15325for);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: catch */
        public boolean mo17085catch() {
            return this.f15325for == 0;
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: class */
        public InputStream mo17086class() throws IOException {
            return mo16996const();
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() {
            return new ByteArrayInputStream(this.f15324do, this.f15326if, this.f15325for);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: else */
        public long mo17087else(OutputStream outputStream) throws IOException {
            outputStream.write(this.f15324do, this.f15326if, this.f15325for);
            return this.f15325for;
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: final */
        public <T> T mo17088final(ByteProcessor<T> byteProcessor) throws IOException {
            byteProcessor.processBytes(this.f15324do, this.f15326if, this.f15325for);
            return byteProcessor.getResult();
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: import */
        public Cnew mo17089import(long j, long j2) {
            af1.m232throw(j >= 0, "offset (%s) may not be negative", j);
            af1.m232throw(j2 >= 0, "length (%s) may not be negative", j2);
            long jMin = Math.min(j, this.f15325for);
            return new Cif(this.f15324do, this.f15326if + ((int) jMin), (int) Math.min(j2, this.f15325for - jMin));
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: super */
        public byte[] mo17090super() {
            byte[] bArr = this.f15324do;
            int i = this.f15326if;
            return Arrays.copyOfRange(bArr, i, this.f15325for + i);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: throw */
        public long mo17091throw() {
            return this.f15325for;
        }

        public String toString() {
            return "ByteSource.wrap(" + t3.m7687catch(com.google.common.io.Cif.m17033do().m17046const(this.f15324do, this.f15326if, this.f15325for), 30, "...") + ")";
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: while */
        public Cwhile<Long> mo17093while() {
            return Cwhile.of(Long.valueOf(this.f15325for));
        }

        public Cif(byte[] bArr, int i, int i2) {
            this.f15324do = bArr;
            this.f15326if = i;
            this.f15325for = i2;
        }
    }

    /* renamed from: com.google.common.io.new$new, reason: invalid class name and collision with other inner class name */
    public static final class C0129new extends Cif {

        /* renamed from: new, reason: not valid java name */
        public static final C0129new f15327new = new C0129new();

        public C0129new() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: do */
        public Cgoto mo17028do(Charset charset) {
            af1.m205continue(charset);
            return Cgoto.m17012goto();
        }

        @Override // com.google.common.io.Cnew.Cif, com.google.common.io.Cnew
        /* renamed from: super */
        public byte[] mo17090super() {
            return this.f15324do;
        }

        @Override // com.google.common.io.Cnew.Cif
        public String toString() {
            return "ByteSource.empty()";
        }
    }

    /* renamed from: com.google.common.io.new$try, reason: invalid class name */
    public final class Ctry extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final long f15328do;

        /* renamed from: if, reason: not valid java name */
        public final long f15330if;

        public Ctry(long j, long j2) {
            af1.m232throw(j >= 0, "offset (%s) may not be negative", j);
            af1.m232throw(j2 >= 0, "length (%s) may not be negative", j2);
            this.f15328do = j;
            this.f15330if = j2;
        }

        /* renamed from: public, reason: not valid java name */
        private InputStream m17094public(InputStream inputStream) throws Throwable {
            long j = this.f15328do;
            if (j > 0) {
                try {
                    if (com.google.common.io.Ctry.m17183public(inputStream, j) < this.f15328do) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return com.google.common.io.Ctry.m17170case(inputStream, this.f15330if);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: catch */
        public boolean mo17085catch() throws IOException {
            return this.f15330if == 0 || super.mo17085catch();
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: class */
        public InputStream mo17086class() throws IOException {
            return m17094public(Cnew.this.mo17086class());
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() throws IOException {
            return m17094public(Cnew.this.mo16996const());
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: import */
        public Cnew mo17089import(long j, long j2) {
            af1.m232throw(j >= 0, "offset (%s) may not be negative", j);
            af1.m232throw(j2 >= 0, "length (%s) may not be negative", j2);
            return Cnew.this.mo17089import(this.f15328do + j, Math.min(j2, this.f15330if - j));
        }

        public String toString() {
            return Cnew.this.toString() + ".slice(" + this.f15328do + ", " + this.f15330if + ")";
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: while */
        public Cwhile<Long> mo17093while() {
            Cwhile<Long> cwhileMo17093while = Cnew.this.mo17093while();
            if (!cwhileMo17093while.isPresent()) {
                return Cwhile.absent();
            }
            long jLongValue = cwhileMo17093while.get().longValue();
            return Cwhile.of(Long.valueOf(Math.min(this.f15330if, jLongValue - Math.min(this.f15328do, jLongValue))));
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cnew m17077for(Iterator<? extends Cnew> it) {
        return m17079if(v0.copyOf(it));
    }

    /* renamed from: goto, reason: not valid java name */
    private long m17078goto(InputStream inputStream) throws IOException {
        long j = 0;
        while (true) {
            long jM17183public = com.google.common.io.Ctry.m17183public(inputStream, 2147483647L);
            if (jM17183public <= 0) {
                return j;
            }
            j += jM17183public;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cnew m17079if(Iterable<? extends Cnew> iterable) {
        return new Cfor(iterable);
    }

    /* renamed from: native, reason: not valid java name */
    public static Cnew m17080native(byte[] bArr) {
        return new Cif(bArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cnew m17081new(Cnew... cnewArr) {
        return m17079if(v0.copyOf(cnewArr));
    }

    /* renamed from: this, reason: not valid java name */
    public static Cnew m17082this() {
        return C0129new.f15327new;
    }

    /* renamed from: break, reason: not valid java name */
    public Cclass mo17083break(HashFunction hashFunction) throws Throwable {
        Hasher hasherNewHasher = hashFunction.newHasher();
        mo17087else(Ccatch.m16888do(hasherNewHasher));
        return hasherNewHasher.hash();
    }

    @lf
    /* renamed from: case, reason: not valid java name */
    public long m17084case(com.google.common.io.Cfor cfor) throws Throwable {
        af1.m205continue(cfor);
        Closer closerM16975do = Closer.m16975do();
        try {
            return com.google.common.io.Ctry.m17179if((InputStream) closerM16975do.m16977if(mo16996const()), (OutputStream) closerM16975do.m16977if(cfor.mo17006for()));
        } finally {
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean mo17085catch() throws Throwable {
        Cwhile<Long> cwhileMo17093while = mo17093while();
        if (cwhileMo17093while.isPresent()) {
            return cwhileMo17093while.get().longValue() == 0;
        }
        Closer closerM16975do = Closer.m16975do();
        try {
            return ((InputStream) closerM16975do.m16977if(mo16996const())).read() == -1;
        } catch (Throwable th) {
            try {
                throw closerM16975do.m16976for(th);
            } finally {
                closerM16975do.close();
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public InputStream mo17086class() throws IOException {
        InputStream inputStreamMo16996const = mo16996const();
        return inputStreamMo16996const instanceof BufferedInputStream ? (BufferedInputStream) inputStreamMo16996const : new BufferedInputStream(inputStreamMo16996const);
    }

    /* renamed from: const */
    public abstract InputStream mo16996const() throws IOException;

    /* renamed from: do */
    public Cgoto mo17028do(Charset charset) {
        return new Cdo(charset);
    }

    @lf
    /* renamed from: else, reason: not valid java name */
    public long mo17087else(OutputStream outputStream) throws Throwable {
        af1.m205continue(outputStream);
        try {
            return com.google.common.io.Ctry.m17179if((InputStream) Closer.m16975do().m16977if(mo16996const()), outputStream);
        } finally {
        }
    }

    @lf
    @o8
    /* renamed from: final, reason: not valid java name */
    public <T> T mo17088final(ByteProcessor<T> byteProcessor) throws Throwable {
        af1.m205continue(byteProcessor);
        try {
            return (T) com.google.common.io.Ctry.m17186super((InputStream) Closer.m16975do().m16977if(mo16996const()), byteProcessor);
        } finally {
        }
    }

    /* renamed from: import, reason: not valid java name */
    public Cnew mo17089import(long j, long j2) {
        return new Ctry(j, j2);
    }

    /* renamed from: super, reason: not valid java name */
    public byte[] mo17090super() throws Throwable {
        Closer closerM16975do = Closer.m16975do();
        try {
            InputStream inputStream = (InputStream) closerM16975do.m16977if(mo16996const());
            Cwhile<Long> cwhileMo17093while = mo17093while();
            return cwhileMo17093while.isPresent() ? com.google.common.io.Ctry.m17185static(inputStream, cwhileMo17093while.get().longValue()) : com.google.common.io.Ctry.m17184return(inputStream);
        } catch (Throwable th) {
            try {
                throw closerM16975do.m16976for(th);
            } finally {
                closerM16975do.close();
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public long mo17091throw() throws Throwable {
        Cwhile<Long> cwhileMo17093while = mo17093while();
        if (cwhileMo17093while.isPresent()) {
            return cwhileMo17093while.get().longValue();
        }
        Closer closerM16975do = Closer.m16975do();
        try {
            return m17078goto((InputStream) closerM16975do.m16977if(mo16996const()));
        } catch (IOException unused) {
            closerM16975do.close();
            try {
                return com.google.common.io.Ctry.m17190try((InputStream) Closer.m16975do().m16977if(mo16996const()));
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m17092try(Cnew cnew) throws Throwable {
        int iM17176final;
        af1.m205continue(cnew);
        byte[] bArrM17182new = com.google.common.io.Ctry.m17182new();
        byte[] bArrM17182new2 = com.google.common.io.Ctry.m17182new();
        Closer closerM16975do = Closer.m16975do();
        try {
            InputStream inputStream = (InputStream) closerM16975do.m16977if(mo16996const());
            InputStream inputStream2 = (InputStream) closerM16975do.m16977if(cnew.mo16996const());
            do {
                iM17176final = com.google.common.io.Ctry.m17176final(inputStream, bArrM17182new, 0, bArrM17182new.length);
                if (iM17176final == com.google.common.io.Ctry.m17176final(inputStream2, bArrM17182new2, 0, bArrM17182new2.length) && Arrays.equals(bArrM17182new, bArrM17182new2)) {
                }
                return false;
            } while (iM17176final == bArrM17182new.length);
            return true;
        } finally {
        }
    }

    @o8
    /* renamed from: while, reason: not valid java name */
    public Cwhile<Long> mo17093while() {
        return Cwhile.absent();
    }
}
