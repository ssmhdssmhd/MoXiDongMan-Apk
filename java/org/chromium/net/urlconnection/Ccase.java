package org.chromium.net.urlconnection;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: org.chromium.net.urlconnection.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase extends InputStream {

    /* renamed from: try, reason: not valid java name */
    private static final int f33738try = 32768;

    /* renamed from: do, reason: not valid java name */
    private final Cnew f33739do;

    /* renamed from: for, reason: not valid java name */
    private ByteBuffer f33740for;

    /* renamed from: if, reason: not valid java name */
    private boolean f33741if;

    /* renamed from: new, reason: not valid java name */
    private IOException f33742new;

    public Ccase(Cnew cnew) {
        this.f33739do = cnew;
    }

    /* renamed from: do, reason: not valid java name */
    private void m37724do() throws IOException {
        if (this.f33741if) {
            IOException iOException = this.f33742new;
            if (iOException != null) {
                throw iOException;
            }
        } else {
            if (m37725if()) {
                return;
            }
            if (this.f33740for == null) {
                this.f33740for = ByteBuffer.allocateDirect(32768);
            }
            this.f33740for.clear();
            this.f33739do.m37776public(this.f33740for);
            IOException iOException2 = this.f33742new;
            if (iOException2 != null) {
                throw iOException2;
            }
            ByteBuffer byteBuffer = this.f33740for;
            if (byteBuffer != null) {
                byteBuffer.flip();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m37725if() {
        ByteBuffer byteBuffer = this.f33740for;
        return byteBuffer != null && byteBuffer.hasRemaining();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (!this.f33741if) {
            if (m37725if()) {
                return this.f33740for.remaining();
            }
            return 0;
        }
        IOException iOException = this.f33742new;
        if (iOException == null) {
            return 0;
        }
        throw iOException;
    }

    /* renamed from: for, reason: not valid java name */
    public void m37726for(IOException iOException) {
        this.f33742new = iOException;
        this.f33741if = true;
        this.f33740for = null;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        m37724do();
        if (m37725if()) {
            return this.f33740for.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        m37724do();
        if (!m37725if()) {
            return -1;
        }
        int iMin = Math.min(this.f33740for.limit() - this.f33740for.position(), i2);
        this.f33740for.get(bArr, i, iMin);
        return iMin;
    }
}
