package org.chromium.net.urlconnection;

import android.support.v4.yc2;
import java.io.IOException;
import java.net.HttpRetryException;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.Cpublic;

/* renamed from: org.chromium.net.urlconnection.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif extends Celse {

    /* renamed from: case, reason: not valid java name */
    private final ByteBuffer f33762case;

    /* renamed from: else, reason: not valid java name */
    private final Cpublic f33763else = new C0484if();

    /* renamed from: goto, reason: not valid java name */
    private boolean f33764goto;

    /* renamed from: new, reason: not valid java name */
    private final Cnew f33765new;

    /* renamed from: try, reason: not valid java name */
    private final Cthis f33766try;

    /* renamed from: org.chromium.net.urlconnection.if$if, reason: invalid class name and collision with other inner class name */
    public class C0484if extends Cpublic {
        private C0484if() {
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: do */
        public long mo37419do() {
            return -1L;
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: for */
        public void mo37420for(yc2 yc2Var) {
            yc2Var.mo9807for(new HttpRetryException("Cannot retry streamed Http body", -1));
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: if */
        public void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) {
            if (byteBuffer.remaining() < Cif.this.f33762case.remaining()) {
                int iLimit = Cif.this.f33762case.limit();
                Cif.this.f33762case.limit(Cif.this.f33762case.position() + byteBuffer.remaining());
                byteBuffer.put(Cif.this.f33762case);
                Cif.this.f33762case.limit(iLimit);
                yc2Var.mo9808if(false);
                return;
            }
            byteBuffer.put(Cif.this.f33762case);
            Cif.this.f33762case.clear();
            yc2Var.mo9808if(Cif.this.f33764goto);
            if (Cif.this.f33764goto) {
                return;
            }
            Cif.this.f33766try.m37780case();
        }
    }

    public Cif(Cnew cnew, int i, Cthis cthis) {
        Objects.requireNonNull(cnew);
        if (i <= 0) {
            throw new IllegalArgumentException("chunkLength should be greater than 0");
        }
        this.f33762case = ByteBuffer.allocate(i);
        this.f33765new = cnew;
        this.f33766try = cthis;
    }

    /* renamed from: break, reason: not valid java name */
    private void m37745break() throws IOException {
        if (this.f33762case.hasRemaining()) {
            return;
        }
        m37746catch();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m37746catch() throws IOException {
        m37736if();
        this.f33762case.flip();
        this.f33766try.m37783new();
        m37735do();
    }

    @Override // org.chromium.net.urlconnection.Celse, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.f33764goto) {
            return;
        }
        this.f33764goto = true;
        this.f33762case.flip();
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: for */
    public void mo37731for() throws IOException {
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: new */
    public Cpublic mo37732new() {
        return this.f33763else;
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: try */
    public void mo37733try() throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m37745break();
        this.f33762case.put((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        m37736if();
        if (bArr.length - i < i2 || i < 0 || i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2;
        while (i3 > 0) {
            int iMin = Math.min(i3, this.f33762case.remaining());
            this.f33762case.put(bArr, (i + i2) - i3, iMin);
            i3 -= iMin;
            m37745break();
        }
    }
}
