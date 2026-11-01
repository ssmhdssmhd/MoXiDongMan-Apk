package okio;

import android.support.v4.m41;
import android.support.v4.z41;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "Lokio/Timeout;", "timeout", "Landroid/support/v4/ub2;", "close", "Lokio/BufferedSource;", "upstream", "Lokio/BufferedSource;", "buffer", "Lokio/Buffer;", "Lokio/Segment;", "expectedSegment", "Lokio/Segment;", "", "expectedPos", OptRuntime.GeneratorState.resumptionPoint_TYPE, "", "closed", "Z", "pos", "J", "<init>", "(Lokio/BufferedSource;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class PeekSource implements Source {

    @m41
    private final Buffer buffer;
    private boolean closed;
    private int expectedPos;

    @z41
    private Segment expectedSegment;
    private long pos;

    @m41
    private final BufferedSource upstream;

    public PeekSource(@m41 BufferedSource upstream) {
        Csuper.m30700throw(upstream, "upstream");
        this.upstream = upstream;
        Buffer buffer = upstream.getBuffer();
        this.buffer = buffer;
        Segment segment = buffer.head;
        this.expectedSegment = segment;
        this.expectedPos = segment == null ? -1 : segment.pos;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long read(@m41 Buffer sink, long j) {
        Segment segment;
        Csuper.m30700throw(sink, "sink");
        boolean z = false;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        Segment segment2 = this.expectedSegment;
        if (segment2 == null) {
            z = true;
        } else {
            Segment segment3 = this.buffer.head;
            if (segment2 == segment3) {
                int i = this.expectedPos;
                Csuper.m30672const(segment3);
                if (i == segment3.pos) {
                }
            }
        }
        if (!z) {
            throw new IllegalStateException("Peek source is invalid because upstream source was used".toString());
        }
        if (j == 0) {
            return 0L;
        }
        if (!this.upstream.request(this.pos + 1)) {
            return -1L;
        }
        if (this.expectedSegment == null && (segment = this.buffer.head) != null) {
            this.expectedSegment = segment;
            Csuper.m30672const(segment);
            this.expectedPos = segment.pos;
        }
        long jMin = Math.min(j, this.buffer.size() - this.pos);
        this.buffer.copyTo(sink, this.pos, jMin);
        this.pos += jMin;
        return jMin;
    }

    @Override // okio.Source
    @m41
    public Timeout timeout() {
        return this.upstream.timeout();
    }
}
