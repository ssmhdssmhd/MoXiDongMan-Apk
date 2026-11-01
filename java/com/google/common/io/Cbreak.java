package com.google.common.io;

import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
@o8
/* renamed from: com.google.common.io.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak {

    /* renamed from: do, reason: not valid java name */
    @af2
    public static final Logger f15241do = Logger.getLogger(Cbreak.class.getName());

    private Cbreak() {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m16982do(@b51 Closeable closeable, boolean z) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            if (!z) {
                throw e;
            }
            f15241do.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m16983for(@b51 Reader reader) {
        try {
            m16982do(reader, true);
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m16984if(@b51 InputStream inputStream) {
        try {
            m16982do(inputStream, true);
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
