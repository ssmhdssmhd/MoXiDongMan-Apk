package okio.internal;

import android.support.v4.m41;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ak;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.RealBufferedSink;
import okio.Sink;
import okio.Source;
import okio.Timeout;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0080\b\u001a%\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\r\u001a\u00020\fH\u0080\b\u001a%\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0012\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0013H\u0080\b\u001a%\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0015\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0014H\u0080\b\u001a\u001d\u0010\u0006\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u0019\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001a\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010 \u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010!\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\u0015\u0010\"\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0080\b\u001a\r\u0010#\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\r\u0010$\u001a\u00020\t*\u00020\u0000H\u0080\b\u001a\r\u0010%\u001a\u00020\u0005*\u00020\u0000H\u0080\b\u001a\r\u0010&\u001a\u00020\u0005*\u00020\u0000H\u0080\b\u001a\r\u0010(\u001a\u00020'*\u00020\u0000H\u0080\b\u001a\r\u0010)\u001a\u00020\f*\u00020\u0000H\u0080\b¨\u0006*"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/Buffer;", "source", "", "byteCount", "Landroid/support/v4/ub2;", "commonWrite", "Lokio/ByteString;", "byteString", "Lokio/BufferedSink;", "", TypedValues.Cycle.S_WAVE_OFFSET, "", TypedValues.Custom.S_STRING, "commonWriteUtf8", "beginIndex", "endIndex", "codePoint", "commonWriteUtf8CodePoint", "", "Lokio/Source;", "commonWriteAll", "b", "commonWriteByte", ak.aB, "commonWriteShort", "commonWriteShortLe", ak.aC, "commonWriteInt", "commonWriteIntLe", "v", "commonWriteLong", "commonWriteLongLe", "commonWriteDecimalLong", "commonWriteHexadecimalUnsignedLong", "commonEmitCompleteSegments", "commonEmit", "commonFlush", "commonClose", "Lokio/Timeout;", "commonTimeout", "commonToString", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _RealBufferedSinkKt {
    public static final void commonClose(@m41 RealBufferedSink realBufferedSink) throws Throwable {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (realBufferedSink.closed) {
            return;
        }
        Throwable th = null;
        try {
            if (realBufferedSink.bufferField.size() > 0) {
                Sink sink = realBufferedSink.sink;
                Buffer buffer = realBufferedSink.bufferField;
                sink.write(buffer, buffer.size());
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            realBufferedSink.sink.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        realBufferedSink.closed = true;
        if (th != null) {
            throw th;
        }
    }

    @m41
    public static final BufferedSink commonEmit(@m41 RealBufferedSink realBufferedSink) throws IOException {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        long size = realBufferedSink.bufferField.size();
        if (size > 0) {
            realBufferedSink.sink.write(realBufferedSink.bufferField, size);
        }
        return realBufferedSink;
    }

    @m41
    public static final BufferedSink commonEmitCompleteSegments(@m41 RealBufferedSink realBufferedSink) throws IOException {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        long jCompleteSegmentByteCount = realBufferedSink.bufferField.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            realBufferedSink.sink.write(realBufferedSink.bufferField, jCompleteSegmentByteCount);
        }
        return realBufferedSink;
    }

    public static final void commonFlush(@m41 RealBufferedSink realBufferedSink) throws IOException {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (realBufferedSink.bufferField.size() > 0) {
            Sink sink = realBufferedSink.sink;
            Buffer buffer = realBufferedSink.bufferField;
            sink.write(buffer, buffer.size());
        }
        realBufferedSink.sink.flush();
    }

    @m41
    public static final Timeout commonTimeout(@m41 RealBufferedSink realBufferedSink) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        return realBufferedSink.sink.timeout();
    }

    @m41
    public static final String commonToString(@m41 RealBufferedSink realBufferedSink) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        return "buffer(" + realBufferedSink.sink + ')';
    }

    public static final void commonWrite(@m41 RealBufferedSink realBufferedSink, @m41 Buffer source, long j) throws IOException {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(source, "source");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.write(source, j);
        realBufferedSink.emitCompleteSegments();
    }

    public static final long commonWriteAll(@m41 RealBufferedSink realBufferedSink, @m41 Source source) throws IOException {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(realBufferedSink.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            realBufferedSink.emitCompleteSegments();
        }
    }

    @m41
    public static final BufferedSink commonWriteByte(@m41 RealBufferedSink realBufferedSink, int i) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeByte(i);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteDecimalLong(@m41 RealBufferedSink realBufferedSink, long j) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeDecimalLong(j);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteHexadecimalUnsignedLong(@m41 RealBufferedSink realBufferedSink, long j) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeHexadecimalUnsignedLong(j);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteInt(@m41 RealBufferedSink realBufferedSink, int i) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeInt(i);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteIntLe(@m41 RealBufferedSink realBufferedSink, int i) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeIntLe(i);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteLong(@m41 RealBufferedSink realBufferedSink, long j) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeLong(j);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteLongLe(@m41 RealBufferedSink realBufferedSink, long j) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeLongLe(j);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteShort(@m41 RealBufferedSink realBufferedSink, int i) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeShort(i);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteShortLe(@m41 RealBufferedSink realBufferedSink, int i) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeShortLe(i);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteUtf8(@m41 RealBufferedSink realBufferedSink, @m41 String string) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(string, "string");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeUtf8(string);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWriteUtf8CodePoint(@m41 RealBufferedSink realBufferedSink, int i) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        if (!(!realBufferedSink.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.bufferField.writeUtf8CodePoint(i);
        return realBufferedSink.emitCompleteSegments();
    }

    @m41
    public static final BufferedSink commonWrite(@m41 RealBufferedSink realBufferedSink, @m41 ByteString byteString) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(byteString, "byteString");
        if (!realBufferedSink.closed) {
            realBufferedSink.bufferField.write(byteString);
            return realBufferedSink.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @m41
    public static final BufferedSink commonWriteUtf8(@m41 RealBufferedSink realBufferedSink, @m41 String string, int i, int i2) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(string, "string");
        if (!realBufferedSink.closed) {
            realBufferedSink.bufferField.writeUtf8(string, i, i2);
            return realBufferedSink.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @m41
    public static final BufferedSink commonWrite(@m41 RealBufferedSink realBufferedSink, @m41 ByteString byteString, int i, int i2) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(byteString, "byteString");
        if (!realBufferedSink.closed) {
            realBufferedSink.bufferField.write(byteString, i, i2);
            return realBufferedSink.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @m41
    public static final BufferedSink commonWrite(@m41 RealBufferedSink realBufferedSink, @m41 byte[] source) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(source, "source");
        if (!realBufferedSink.closed) {
            realBufferedSink.bufferField.write(source);
            return realBufferedSink.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @m41
    public static final BufferedSink commonWrite(@m41 RealBufferedSink realBufferedSink, @m41 byte[] source, int i, int i2) {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(source, "source");
        if (!realBufferedSink.closed) {
            realBufferedSink.bufferField.write(source, i, i2);
            return realBufferedSink.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @m41
    public static final BufferedSink commonWrite(@m41 RealBufferedSink realBufferedSink, @m41 Source source, long j) throws IOException {
        Csuper.m30700throw(realBufferedSink, "<this>");
        Csuper.m30700throw(source, "source");
        while (j > 0) {
            long j2 = source.read(realBufferedSink.bufferField, j);
            if (j2 != -1) {
                j -= j2;
                realBufferedSink.emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return realBufferedSink;
    }
}
