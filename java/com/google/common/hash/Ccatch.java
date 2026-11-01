package com.google.common.hash;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.o8;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

@o8
/* renamed from: com.google.common.hash.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccatch {

    /* renamed from: com.google.common.hash.catch$case, reason: invalid class name */
    public static class Ccase implements Funnel<CharSequence>, Serializable {
        private final Charset charset;

        /* renamed from: com.google.common.hash.catch$case$do, reason: invalid class name */
        public static class Cdo implements Serializable {
            private static final long serialVersionUID = 0;
            private final String charsetCanonicalName;

            public Cdo(Charset charset) {
                this.charsetCanonicalName = charset.name();
            }

            private Object readResolve() {
                return Ccatch.m16887case(Charset.forName(this.charsetCanonicalName));
            }
        }

        public Ccase(Charset charset) {
            this.charset = (Charset) af1.m205continue(charset);
        }

        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ccase) {
                return this.charset.equals(((Ccase) obj).charset);
            }
            return false;
        }

        public int hashCode() {
            return Ccase.class.hashCode() ^ this.charset.hashCode();
        }

        public String toString() {
            return "Funnels.stringFunnel(" + this.charset.name() + ")";
        }

        public Object writeReplace() {
            return new Cdo(this.charset);
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(CharSequence charSequence, PrimitiveSink primitiveSink) {
            primitiveSink.putString(charSequence, this.charset);
        }
    }

    /* renamed from: com.google.common.hash.catch$do, reason: invalid class name */
    public enum Cdo implements Funnel<byte[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(byte[] bArr, PrimitiveSink primitiveSink) {
            primitiveSink.putBytes(bArr);
        }
    }

    /* renamed from: com.google.common.hash.catch$else, reason: invalid class name */
    public enum Celse implements Funnel<CharSequence> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(CharSequence charSequence, PrimitiveSink primitiveSink) {
            primitiveSink.putUnencodedChars(charSequence);
        }
    }

    /* renamed from: com.google.common.hash.catch$for, reason: invalid class name */
    public enum Cfor implements Funnel<Long> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.longFunnel()";
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(Long l, PrimitiveSink primitiveSink) {
            primitiveSink.putLong(l.longValue());
        }
    }

    /* renamed from: com.google.common.hash.catch$if, reason: invalid class name */
    public enum Cif implements Funnel<Integer> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.integerFunnel()";
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(Integer num, PrimitiveSink primitiveSink) {
            primitiveSink.putInt(num.intValue());
        }
    }

    /* renamed from: com.google.common.hash.catch$new, reason: invalid class name */
    public static class Cnew<E> implements Funnel<Iterable<? extends E>>, Serializable {
        private final Funnel<E> elementFunnel;

        public Cnew(Funnel<E> funnel) {
            this.elementFunnel = (Funnel) af1.m205continue(funnel);
        }

        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cnew) {
                return this.elementFunnel.equals(((Cnew) obj).elementFunnel);
            }
            return false;
        }

        public int hashCode() {
            return Cnew.class.hashCode() ^ this.elementFunnel.hashCode();
        }

        public String toString() {
            return "Funnels.sequentialFunnel(" + this.elementFunnel + ")";
        }

        @Override // com.google.common.hash.Funnel
        public void funnel(Iterable<? extends E> iterable, PrimitiveSink primitiveSink) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                this.elementFunnel.funnel(it.next(), primitiveSink);
            }
        }
    }

    /* renamed from: com.google.common.hash.catch$try, reason: invalid class name */
    public static class Ctry extends OutputStream {

        /* renamed from: do, reason: not valid java name */
        public final PrimitiveSink f15152do;

        public Ctry(PrimitiveSink primitiveSink) {
            this.f15152do = (PrimitiveSink) af1.m205continue(primitiveSink);
        }

        public String toString() {
            return "Funnels.asOutputStream(" + this.f15152do + ")";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.f15152do.putByte((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.f15152do.putBytes(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.f15152do.putBytes(bArr, i, i2);
        }
    }

    private Ccatch() {
    }

    /* renamed from: case, reason: not valid java name */
    public static Funnel<CharSequence> m16887case(Charset charset) {
        return new Ccase(charset);
    }

    /* renamed from: do, reason: not valid java name */
    public static OutputStream m16888do(PrimitiveSink primitiveSink) {
        return new Ctry(primitiveSink);
    }

    /* renamed from: else, reason: not valid java name */
    public static Funnel<CharSequence> m16889else() {
        return Celse.INSTANCE;
    }

    /* renamed from: for, reason: not valid java name */
    public static Funnel<Integer> m16890for() {
        return Cif.INSTANCE;
    }

    /* renamed from: if, reason: not valid java name */
    public static Funnel<byte[]> m16891if() {
        return Cdo.INSTANCE;
    }

    /* renamed from: new, reason: not valid java name */
    public static Funnel<Long> m16892new() {
        return Cfor.INSTANCE;
    }

    /* renamed from: try, reason: not valid java name */
    public static <E> Funnel<Iterable<? extends E>> m16893try(Funnel<E> funnel) {
        return new Cnew(funnel);
    }
}
