package org.chromium.net.urlconnection;

import android.support.v4.yc2;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.Cpublic;

/* renamed from: org.chromium.net.urlconnection.for, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfor extends Celse {

    /* renamed from: break, reason: not valid java name */
    @VisibleForTesting
    private static int f33753break = 16384;

    /* renamed from: case, reason: not valid java name */
    private final long f33754case;

    /* renamed from: else, reason: not valid java name */
    private final ByteBuffer f33755else;

    /* renamed from: goto, reason: not valid java name */
    private final Cpublic f33756goto = new Cif();

    /* renamed from: new, reason: not valid java name */
    private final Cnew f33757new;

    /* renamed from: this, reason: not valid java name */
    private long f33758this;

    /* renamed from: try, reason: not valid java name */
    private final Cthis f33759try;

    /* renamed from: org.chromium.net.urlconnection.for$if, reason: invalid class name */
    public class Cif extends Cpublic {
        private Cif() {
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: do */
        public long mo37419do() {
            return Cfor.this.f33754case;
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: for */
        public void mo37420for(yc2 yc2Var) {
            yc2Var.mo9807for(new HttpRetryException("Cannot retry streamed Http body", -1));
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: if */
        public void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) {
            if (byteBuffer.remaining() >= Cfor.this.f33755else.remaining()) {
                byteBuffer.put(Cfor.this.f33755else);
                Cfor.this.f33755else.clear();
                yc2Var.mo9808if(false);
                Cfor.this.f33759try.m37780case();
                return;
            }
            int iLimit = Cfor.this.f33755else.limit();
            Cfor.this.f33755else.limit(Cfor.this.f33755else.position() + byteBuffer.remaining());
            byteBuffer.put(Cfor.this.f33755else);
            Cfor.this.f33755else.limit(iLimit);
            yc2Var.mo9808if(false);
        }
    }

    public Cfor(Cnew cnew, long j, Cthis cthis) {
        Objects.requireNonNull(cnew);
        if (j < 0) {
            throw new IllegalArgumentException("Content length must be larger than 0 for non-chunked upload.");
        }
        this.f33754case = j;
        this.f33755else = ByteBuffer.allocate((int) Math.min(j, f33753break));
        this.f33757new = cnew;
        this.f33759try = cthis;
        this.f33758this = 0L;
    }

    /* renamed from: break, reason: not valid java name */
    private void m37737break(int i) throws ProtocolException {
        if (this.f33758this + i <= this.f33754case) {
            return;
        }
        throw new ProtocolException("expected " + (this.f33754case - this.f33758this) + " bytes but received " + i);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m37738catch() throws IOException {
        if (this.f33755else.hasRemaining()) {
            return;
        }
        m37740const();
    }

    @VisibleForTesting
    /* renamed from: class, reason: not valid java name */
    public static void m37739class(int i) {
        f33753break = i;
    }

    /* renamed from: const, reason: not valid java name */
    private void m37740const() throws IOException {
        m37736if();
        this.f33755else.flip();
        this.f33759try.m37783new();
        m37735do();
    }

    /* renamed from: final, reason: not valid java name */
    private void m37742final() throws IOException {
        if (this.f33758this == this.f33754case) {
            m37740const();
        }
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: for */
    public void mo37731for() throws IOException {
        if (this.f33758this < this.f33754case) {
            throw new ProtocolException("Content received is less than Content-Length.");
        }
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: new */
    public Cpublic mo37732new() {
        return this.f33756goto;
    }

    @Override // org.chromium.net.urlconnection.Celse
    /* renamed from: try */
    public void mo37733try() throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        m37736if();
        m37737break(1);
        m37738catch();
        this.f33755else.put((byte) i);
        this.f33758this++;
        m37742final();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        m37736if();
        if (bArr.length - i >= i2 && i >= 0 && i2 >= 0) {
            m37737break(i2);
            int i3 = i2;
            while (i3 > 0) {
                m37738catch();
                int iMin = Math.min(i3, this.f33755else.remaining());
                this.f33755else.put(bArr, (i + i2) - i3, iMin);
                i3 -= iMin;
            }
            this.f33758this += i2;
            m37742final();
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
