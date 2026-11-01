package org.chromium.net.urlconnection;

import java.io.IOException;
import java.io.OutputStream;
import org.chromium.net.Cpublic;

/* renamed from: org.chromium.net.urlconnection.else, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Celse extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    private IOException f33750do;

    /* renamed from: for, reason: not valid java name */
    private boolean f33751for;

    /* renamed from: if, reason: not valid java name */
    private boolean f33752if;

    /* renamed from: case, reason: not valid java name */
    public void m37734case(IOException iOException) {
        this.f33750do = iOException;
        this.f33751for = true;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33752if = true;
    }

    /* renamed from: do, reason: not valid java name */
    public void m37735do() throws IOException {
        IOException iOException = this.f33750do;
        if (iOException != null) {
            throw iOException;
        }
    }

    /* renamed from: for */
    public abstract void mo37731for() throws IOException;

    /* renamed from: if, reason: not valid java name */
    public void m37736if() throws IOException {
        if (this.f33751for) {
            m37735do();
            throw new IOException("Writing after request completed.");
        }
        if (this.f33752if) {
            throw new IOException("Stream has been closed.");
        }
    }

    /* renamed from: new */
    public abstract Cpublic mo37732new();

    /* renamed from: try */
    public abstract void mo37733try() throws IOException;
}
