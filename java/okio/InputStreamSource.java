package okio;

import android.support.v4.m41;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0012\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lokio/InputStreamSource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "Landroid/support/v4/ub2;", "close", "Lokio/Timeout;", "timeout", "", "toString", "Ljava/io/InputStream;", "input", "Ljava/io/InputStream;", "Lokio/Timeout;", "<init>", "(Ljava/io/InputStream;Lokio/Timeout;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
class InputStreamSource implements Source {

    @m41
    private final InputStream input;

    @m41
    private final Timeout timeout;

    public InputStreamSource(@m41 InputStream input, @m41 Timeout timeout) {
        Csuper.m30700throw(input, "input");
        Csuper.m30700throw(timeout, "timeout");
        this.input = input;
        this.timeout = timeout;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.input.close();
    }

    @Override // okio.Source
    public long read(@m41 Buffer sink, long j) throws IOException {
        Csuper.m30700throw(sink, "sink");
        if (j == 0) {
            return 0L;
        }
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        try {
            this.timeout.throwIfReached();
            Segment segmentWritableSegment$okio = sink.writableSegment$okio(1);
            int i = this.input.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(j, 8192 - segmentWritableSegment$okio.limit));
            if (i != -1) {
                segmentWritableSegment$okio.limit += i;
                long j2 = i;
                sink.setSize$okio(sink.size() + j2);
                return j2;
            }
            if (segmentWritableSegment$okio.pos != segmentWritableSegment$okio.limit) {
                return -1L;
            }
            sink.head = segmentWritableSegment$okio.pop();
            SegmentPool.recycle(segmentWritableSegment$okio);
            return -1L;
        } catch (AssertionError e) {
            if (Okio.isAndroidGetsocknameError(e)) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    @Override // okio.Source
    @m41
    public Timeout timeout() {
        return this.timeout;
    }

    @m41
    public String toString() {
        return "source(" + this.input + ')';
    }
}
