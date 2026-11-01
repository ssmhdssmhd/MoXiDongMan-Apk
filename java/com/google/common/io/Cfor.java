package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

@li0
/* renamed from: com.google.common.io.for, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cfor {

    /* renamed from: com.google.common.io.for$if, reason: invalid class name */
    public final class Cif extends Celse {

        /* renamed from: do, reason: not valid java name */
        private final Charset f15260do;

        @Override // com.google.common.io.Celse
        /* renamed from: if */
        public Writer mo17002if() throws IOException {
            return new OutputStreamWriter(Cfor.this.mo17006for(), this.f15260do);
        }

        public String toString() {
            return Cfor.this.toString() + ".asCharSink(" + this.f15260do + ")";
        }

        private Cif(Charset charset) {
            this.f15260do = (Charset) af1.m205continue(charset);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Celse m17005do(Charset charset) {
        return new Cif(charset);
    }

    /* renamed from: for, reason: not valid java name */
    public abstract OutputStream mo17006for() throws IOException;

    /* renamed from: if, reason: not valid java name */
    public OutputStream m17007if() throws IOException {
        OutputStream outputStreamMo17006for = mo17006for();
        return outputStreamMo17006for instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamMo17006for : new BufferedOutputStream(outputStreamMo17006for);
    }

    /* renamed from: new, reason: not valid java name */
    public void m17008new(byte[] bArr) throws Throwable {
        af1.m205continue(bArr);
        try {
            OutputStream outputStream = (OutputStream) Closer.m16975do().m16977if(mo17006for());
            outputStream.write(bArr);
            outputStream.flush();
        } finally {
        }
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public long m17009try(InputStream inputStream) throws Throwable {
        af1.m205continue(inputStream);
        try {
            OutputStream outputStream = (OutputStream) Closer.m16975do().m16977if(mo17006for());
            long jM17179if = Ctry.m17179if(inputStream, outputStream);
            outputStream.flush();
            return jM17179if;
        } finally {
        }
    }
}
