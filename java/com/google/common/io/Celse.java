package com.google.common.io;

import android.support.v4.af1;
import android.support.v4.lf;
import android.support.v4.li0;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;

@li0
/* renamed from: com.google.common.io.else, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Celse {
    /* renamed from: case, reason: not valid java name */
    public void m16999case(Iterable<? extends CharSequence> iterable, String str) throws Throwable {
        af1.m205continue(iterable);
        af1.m205continue(str);
        try {
            Writer writer = (Writer) Closer.m16975do().m16977if(m17000do());
            Iterator<? extends CharSequence> it = iterable.iterator();
            while (it.hasNext()) {
                writer.append(it.next()).append((CharSequence) str);
            }
            writer.flush();
        } finally {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Writer m17000do() throws IOException {
        Writer writerMo17002if = mo17002if();
        return writerMo17002if instanceof BufferedWriter ? (BufferedWriter) writerMo17002if : new BufferedWriter(writerMo17002if);
    }

    /* renamed from: for, reason: not valid java name */
    public void m17001for(CharSequence charSequence) throws Throwable {
        af1.m205continue(charSequence);
        try {
            Writer writer = (Writer) Closer.m16975do().m16977if(mo17002if());
            writer.append(charSequence);
            writer.flush();
        } finally {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public abstract Writer mo17002if() throws IOException;

    @lf
    /* renamed from: new, reason: not valid java name */
    public long m17003new(Readable readable) throws Throwable {
        af1.m205continue(readable);
        try {
            Writer writer = (Writer) Closer.m16975do().m16977if(mo17002if());
            long jM17152if = Cthis.m17152if(readable, writer);
            writer.flush();
            return jM17152if;
        } finally {
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m17004try(Iterable<? extends CharSequence> iterable) throws Throwable {
        m16999case(iterable, System.getProperty("line.separator"));
    }
}
