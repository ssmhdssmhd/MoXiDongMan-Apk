package org.chromium.net;

import android.support.v4.yc2;
import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: org.chromium.net.public, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cpublic implements Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    /* renamed from: do */
    public abstract long mo37419do() throws IOException;

    /* renamed from: for */
    public abstract void mo37420for(yc2 yc2Var) throws IOException;

    /* renamed from: if */
    public abstract void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) throws IOException;
}
