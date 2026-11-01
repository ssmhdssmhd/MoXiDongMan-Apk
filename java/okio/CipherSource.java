package okio;

import android.support.v4.m41;
import java.io.IOException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0012\u001a\u00020\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001d¨\u0006!"}, d2 = {"Lokio/CipherSource;", "Lokio/Source;", "Landroid/support/v4/ub2;", "refill", "update", "doFinal", "Lokio/Buffer;", "sink", "", "byteCount", "read", "Lokio/Timeout;", "timeout", "close", "Lokio/BufferedSource;", "source", "Lokio/BufferedSource;", "Ljavax/crypto/Cipher;", "cipher", "Ljavax/crypto/Cipher;", "getCipher", "()Ljavax/crypto/Cipher;", "", "blockSize", OptRuntime.GeneratorState.resumptionPoint_TYPE, "buffer", "Lokio/Buffer;", "", "final", "Z", "closed", "<init>", "(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class CipherSource implements Source {
    private final int blockSize;

    @m41
    private final Buffer buffer;

    @m41
    private final Cipher cipher;
    private boolean closed;

    /* renamed from: final, reason: not valid java name */
    private boolean f28356final;

    @m41
    private final BufferedSource source;

    public CipherSource(@m41 BufferedSource source, @m41 Cipher cipher) {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(cipher, "cipher");
        this.source = source;
        this.cipher = cipher;
        int blockSize = cipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new Buffer();
        if (!(blockSize > 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("Block cipher required ", getCipher()).toString());
        }
    }

    private final void doFinal() throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        int outputSize = this.cipher.getOutputSize(0);
        if (outputSize == 0) {
            return;
        }
        Segment segmentWritableSegment$okio = this.buffer.writableSegment$okio(outputSize);
        int iDoFinal = this.cipher.doFinal(segmentWritableSegment$okio.data, segmentWritableSegment$okio.pos);
        segmentWritableSegment$okio.limit += iDoFinal;
        Buffer buffer = this.buffer;
        buffer.setSize$okio(buffer.size() + iDoFinal);
        if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
            this.buffer.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
        }
    }

    private final void refill() throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        while (this.buffer.size() == 0) {
            if (this.source.exhausted()) {
                this.f28356final = true;
                doFinal();
                return;
            }
            update();
        }
    }

    private final void update() throws IOException, ShortBufferException {
        Segment segment = this.source.getBuffer().head;
        Csuper.m30672const(segment);
        int i = segment.limit - segment.pos;
        int outputSize = this.cipher.getOutputSize(i);
        while (outputSize > 8192) {
            int i2 = this.blockSize;
            if (!(i > i2)) {
                throw new IllegalStateException(("Unexpected output size " + outputSize + " for input size " + i).toString());
            }
            i -= i2;
            outputSize = this.cipher.getOutputSize(i);
        }
        Segment segmentWritableSegment$okio = this.buffer.writableSegment$okio(outputSize);
        int iUpdate = this.cipher.update(segment.data, segment.pos, i, segmentWritableSegment$okio.data, segmentWritableSegment$okio.pos);
        this.source.skip(i);
        segmentWritableSegment$okio.limit += iUpdate;
        Buffer buffer = this.buffer;
        buffer.setSize$okio(buffer.size() + iUpdate);
        if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
            this.buffer.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
        this.source.close();
    }

    @m41
    public final Cipher getCipher() {
        return this.cipher;
    }

    @Override // okio.Source
    public long read(@m41 Buffer sink, long j) throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        Csuper.m30700throw(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(true ^ this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f28356final) {
            return this.buffer.read(sink, j);
        }
        refill();
        return this.buffer.read(sink, j);
    }

    @Override // okio.Source
    @m41
    public Timeout timeout() {
        return this.source.timeout();
    }
}
