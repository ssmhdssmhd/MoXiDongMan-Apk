package org.chromium.net.urlconnection;

import android.support.v4.yc2;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.Cpublic;

/* renamed from: org.chromium.net.urlconnection.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo extends Celse {

    /* renamed from: this, reason: not valid java name */
    private static final int f33743this = 16384;

    /* renamed from: case, reason: not valid java name */
    private final Cpublic f33744case = new Cif();

    /* renamed from: else, reason: not valid java name */
    private ByteBuffer f33745else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f33746goto;

    /* renamed from: new, reason: not valid java name */
    private final int f33747new;

    /* renamed from: try, reason: not valid java name */
    private final Cnew f33748try;

    /* renamed from: org.chromium.net.urlconnection.do$if, reason: invalid class name */
    public class Cif extends Cpublic {
        private Cif() {
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: do */
        public long mo37419do() {
            if (Cdo.this.f33747new == -1) {
                return Cdo.this.f33746goto ? Cdo.this.f33745else.limit() : Cdo.this.f33745else.position();
            }
            return Cdo.this.f33747new;
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: for */
        public void mo37420for(yc2 yc2Var) {
            Cdo.this.f33745else.position(0);
            yc2Var.mo9809new();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: if */
        public void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (iRemaining < Cdo.this.f33745else.remaining()) {
                byteBuffer.put(Cdo.this.f33745else.array(), Cdo.this.f33745else.position(), iRemaining);
                Cdo.this.f33745else.position(Cdo.this.f33745else.position() + iRemaining);
            } else {
                byteBuffer.put(Cdo.this.f33745else);
            }
            yc2Var.mo9808if(false);
        }
    }

    public Cdo(Cnew cnew, long j) {
        Objects.requireNonNull(cnew, "Argument connection cannot be null.");
        if (j > 2147483647L) {
            throw new IllegalArgumentException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2GB.");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Content length < 0.");
        }
        this.f33748try = cnew;
        int i = (int) j;
        this.f33747new = i;
        this.f33745else = ByteBuffer.allocate(i);
    }

    /* renamed from: break, reason: not valid java name */
    private void m37727break(int i) throws IOException {
        if (this.f33747new != -1 && this.f33745else.position() + i > this.f33747new) {
            throw new ProtocolException("exceeded content-length limit of " + this.f33747new + " bytes");
        }
        if (this.f33746goto) {
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for writing after connect");
        }
        if (this.f33747new == -1 && this.f33745else.limit() - this.f33745else.position() <= i) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(Math.max(this.f33745else.capacity() * 2, this.f33745else.capacity() + i));
            this.f33745else.flip();
            byteBufferAllocate.put(this.f33745else);
            this.f33745else = byteBufferAllocate;
        }
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: for, reason: not valid java name */
    public void mo37731for() throws IOException {
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: new, reason: not valid java name */
    public Cpublic mo37732new() {
        return this.f33744case;
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: try, reason: not valid java name */
    public void mo37733try() throws IOException {
        this.f33746goto = true;
        if (this.f33745else.position() < this.f33747new) {
            throw new ProtocolException("Content received is less than Content-Length");
        }
        this.f33745else.flip();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m37736if();
        m37727break(1);
        this.f33745else.put((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        m37736if();
        m37727break(i2);
        this.f33745else.put(bArr, i, i2);
    }

    public Cdo(Cnew cnew) {
        Objects.requireNonNull(cnew);
        this.f33748try = cnew;
        this.f33747new = -1;
        this.f33745else = ByteBuffer.allocate(16384);
    }
}
