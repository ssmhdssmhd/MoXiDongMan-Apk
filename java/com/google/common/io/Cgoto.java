package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.t3;
import com.google.common.base.Cwhile;
import com.google.common.base.Splitter;
import com.google.common.collect.v0;
import com.google.common.collect.x1;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

@li0
/* renamed from: com.google.common.io.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cgoto {

    /* renamed from: com.google.common.io.goto$do, reason: invalid class name */
    public final class Cdo extends com.google.common.io.Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Charset f15262do;

        public Cdo(Charset charset) {
            this.f15262do = (Charset) af1.m205continue(charset);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() throws IOException {
            return new Cswitch(Cgoto.this.mo17020const(), this.f15262do, 8192);
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: do, reason: not valid java name */
        public Cgoto mo17028do(Charset charset) {
            return charset.equals(this.f15262do) ? Cgoto.this : super.mo17028do(charset);
        }

        public String toString() {
            return Cgoto.this.toString() + ".asByteSource(" + this.f15262do + ")";
        }
    }

    /* renamed from: com.google.common.io.goto$for, reason: invalid class name */
    public static final class Cfor extends Cgoto {

        /* renamed from: do, reason: not valid java name */
        private final Iterable<? extends Cgoto> f15264do;

        public Cfor(Iterable<? extends Cgoto> iterable) {
            this.f15264do = (Iterable) af1.m205continue(iterable);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: break */
        public long mo17016break() throws IOException {
            Iterator<? extends Cgoto> it = this.f15264do.iterator();
            long jMo17016break = 0;
            while (it.hasNext()) {
                jMo17016break += it.next().mo17016break();
            }
            return jMo17016break;
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: catch */
        public Cwhile<Long> mo17018catch() {
            Iterator<? extends Cgoto> it = this.f15264do.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                Cwhile<Long> cwhileMo17018catch = it.next().mo17018catch();
                if (!cwhileMo17018catch.isPresent()) {
                    return Cwhile.absent();
                }
                jLongValue += cwhileMo17018catch.get().longValue();
            }
            return Cwhile.of(Long.valueOf(jLongValue));
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: const */
        public Reader mo17020const() throws IOException {
            return new Cstatic(this.f15264do.iterator());
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: this */
        public boolean mo17024this() throws IOException {
            Iterator<? extends Cgoto> it = this.f15264do.iterator();
            while (it.hasNext()) {
                if (!it.next().mo17024this()) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return "CharSource.concat(" + this.f15264do + ")";
        }
    }

    /* renamed from: com.google.common.io.goto$if, reason: invalid class name */
    public static class Cif extends Cgoto {

        /* renamed from: if, reason: not valid java name */
        private static final Splitter f15265if = Splitter.m14986const("\r\n|\n|\r");

        /* renamed from: do, reason: not valid java name */
        public final CharSequence f15266do;

        /* renamed from: com.google.common.io.goto$if$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<String> {

            /* renamed from: for, reason: not valid java name */
            public Iterator<String> f15267for;

            public Cdo() {
                this.f15267for = Cif.f15265if.m14997final(Cif.this.f15266do).iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public String mo15521do() {
                if (this.f15267for.hasNext()) {
                    String next = this.f15267for.next();
                    if (this.f15267for.hasNext() || !next.isEmpty()) {
                        return next;
                    }
                }
                return m15805if();
            }
        }

        public Cif(CharSequence charSequence) {
            this.f15266do = (CharSequence) af1.m205continue(charSequence);
        }

        /* renamed from: public, reason: not valid java name */
        private Iterator<String> m17030public() {
            return new Cdo();
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: break */
        public long mo17016break() {
            return this.f15266do.length();
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: catch */
        public Cwhile<Long> mo17018catch() {
            return Cwhile.of(Long.valueOf(this.f15266do.length()));
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: const */
        public Reader mo17020const() {
            return new Ccase(this.f15266do);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: final */
        public String mo17022final() {
            return this.f15266do.toString();
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: super */
        public String mo17023super() {
            Iterator<String> itM17030public = m17030public();
            if (itM17030public.hasNext()) {
                return itM17030public.next();
            }
            return null;
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: this */
        public boolean mo17024this() {
            return this.f15266do.length() == 0;
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: throw */
        public v0<String> mo17025throw() {
            return v0.copyOf(m17030public());
        }

        public String toString() {
            return "CharSource.wrap(" + t3.m7687catch(this.f15266do, 30, "...") + ")";
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: while */
        public <T> T mo17027while(LineProcessor<T> lineProcessor) throws IOException {
            Iterator<String> itM17030public = m17030public();
            while (itM17030public.hasNext() && lineProcessor.processLine(itM17030public.next())) {
            }
            return lineProcessor.getResult();
        }
    }

    /* renamed from: com.google.common.io.goto$new, reason: invalid class name */
    public static final class Cnew extends Ctry {

        /* renamed from: for, reason: not valid java name */
        private static final Cnew f15269for = new Cnew();

        private Cnew() {
            super("");
        }

        @Override // com.google.common.io.Cgoto.Cif
        public String toString() {
            return "CharSource.empty()";
        }
    }

    /* renamed from: com.google.common.io.goto$try, reason: invalid class name */
    public static class Ctry extends Cif {
        public Ctry(String str) {
            super(str);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: case */
        public long mo17017case(Appendable appendable) throws IOException {
            appendable.append(this.f15266do);
            return this.f15266do.length();
        }

        @Override // com.google.common.io.Cgoto.Cif, com.google.common.io.Cgoto
        /* renamed from: const */
        public Reader mo17020const() {
            return new StringReader((String) this.f15266do);
        }

        @Override // com.google.common.io.Cgoto
        /* renamed from: try */
        public long mo17026try(Celse celse) throws Throwable {
            af1.m205continue(celse);
            try {
                ((Writer) Closer.m16975do().m16977if(celse.mo17002if())).write((String) this.f15266do);
                return this.f15266do.length();
            } finally {
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    private long m17010else(Reader reader) throws IOException {
        long j = 0;
        while (true) {
            long jSkip = reader.skip(Long.MAX_VALUE);
            if (jSkip == 0) {
                return j;
            }
            j += jSkip;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cgoto m17011for(Iterator<? extends Cgoto> it) {
        return m17013if(v0.copyOf(it));
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cgoto m17012goto() {
        return Cnew.f15269for;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cgoto m17013if(Iterable<? extends Cgoto> iterable) {
        return new Cfor(iterable);
    }

    /* renamed from: import, reason: not valid java name */
    public static Cgoto m17014import(CharSequence charSequence) {
        return charSequence instanceof String ? new Ctry((String) charSequence) : new Cif(charSequence);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cgoto m17015new(Cgoto... cgotoArr) {
        return m17013if(v0.copyOf(cgotoArr));
    }

    @o8
    /* renamed from: break, reason: not valid java name */
    public long mo17016break() throws Throwable {
        Cwhile<Long> cwhileMo17018catch = mo17018catch();
        if (cwhileMo17018catch.isPresent()) {
            return cwhileMo17018catch.get().longValue();
        }
        try {
            return m17010else((Reader) Closer.m16975do().m16977if(mo17020const()));
        } finally {
        }
    }

    @lf
    /* renamed from: case, reason: not valid java name */
    public long mo17017case(Appendable appendable) throws Throwable {
        af1.m205continue(appendable);
        try {
            return Cthis.m17152if((Reader) Closer.m16975do().m16977if(mo17020const()), appendable);
        } finally {
        }
    }

    @o8
    /* renamed from: catch, reason: not valid java name */
    public Cwhile<Long> mo17018catch() {
        return Cwhile.absent();
    }

    /* renamed from: class, reason: not valid java name */
    public BufferedReader m17019class() throws IOException {
        Reader readerMo17020const = mo17020const();
        return readerMo17020const instanceof BufferedReader ? (BufferedReader) readerMo17020const : new BufferedReader(readerMo17020const);
    }

    /* renamed from: const, reason: not valid java name */
    public abstract Reader mo17020const() throws IOException;

    @o8
    /* renamed from: do, reason: not valid java name */
    public com.google.common.io.Cnew mo17021do(Charset charset) {
        return new Cdo(charset);
    }

    /* renamed from: final, reason: not valid java name */
    public String mo17022final() throws Throwable {
        try {
            return Cthis.m17146catch((Reader) Closer.m16975do().m16977if(mo17020const()));
        } finally {
        }
    }

    @b51
    /* renamed from: super, reason: not valid java name */
    public String mo17023super() throws Throwable {
        try {
            return ((BufferedReader) Closer.m16975do().m16977if(m17019class())).readLine();
        } finally {
        }
    }

    /* renamed from: this, reason: not valid java name */
    public boolean mo17024this() throws Throwable {
        Cwhile<Long> cwhileMo17018catch = mo17018catch();
        if (cwhileMo17018catch.isPresent()) {
            return cwhileMo17018catch.get().longValue() == 0;
        }
        Closer closerM16975do = Closer.m16975do();
        try {
            return ((Reader) closerM16975do.m16977if(mo17020const())).read() == -1;
        } catch (Throwable th) {
            try {
                throw closerM16975do.m16976for(th);
            } finally {
                closerM16975do.close();
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public v0<String> mo17025throw() throws Throwable {
        try {
            BufferedReader bufferedReader = (BufferedReader) Closer.m16975do().m16977if(m17019class());
            ArrayList arrayListM16520while = x1.m16520while();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return v0.copyOf((Collection) arrayListM16520while);
                }
                arrayListM16520while.add(line);
            }
        } finally {
        }
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public long mo17026try(Celse celse) throws Throwable {
        af1.m205continue(celse);
        Closer closerM16975do = Closer.m16975do();
        try {
            return Cthis.m17152if((Reader) closerM16975do.m16977if(mo17020const()), (Writer) closerM16975do.m16977if(celse.mo17002if()));
        } finally {
        }
    }

    @lf
    @o8
    /* renamed from: while, reason: not valid java name */
    public <T> T mo17027while(LineProcessor<T> lineProcessor) throws Throwable {
        af1.m205continue(lineProcessor);
        try {
            return (T) Cthis.m17151goto((Reader) Closer.m16975do().m16977if(mo17020const()), lineProcessor);
        } finally {
        }
    }
}
