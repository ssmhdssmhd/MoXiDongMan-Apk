package okio;

import android.support.v4.m41;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.tp0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ak;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00104\u001a\u000203¢\u0006\u0004\b>\u0010?J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\tH\u0016J \u0010\b\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0016J \u0010\u000f\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u000bH\u0016J\u0018\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J(\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\b\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0017H\u0016J \u0010\b\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000bH\u0016J\u0010\u0010\b\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0019H\u0016J\u0018\u0010\b\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u000bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\u0010\u0010!\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u000bH\u0016J\u0010\u0010\"\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u000bH\u0016J\u0010\u0010$\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u0005H\u0016J\u0010\u0010%\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u0005H\u0016J\u0010\u0010&\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u0005H\u0016J\u0010\u0010'\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u0005H\u0016J\b\u0010(\u001a\u00020\u0001H\u0016J\b\u0010)\u001a\u00020\u0001H\u0016J\b\u0010+\u001a\u00020*H\u0016J\b\u0010,\u001a\u00020\u0007H\u0016J\b\u0010.\u001a\u00020-H\u0016J\b\u0010/\u001a\u00020\u0007H\u0016J\b\u00101\u001a\u000200H\u0016J\b\u00102\u001a\u00020\rH\u0016R\u0016\u00104\u001a\u0002038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00106\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u00108\u001a\u00020-8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001d\u0010\u0003\u001a\u00020\u00028Ö\u0002@\u0016X\u0096\u0004¢\u0006\f\u0012\u0004\b<\u0010=\u001a\u0004\b:\u0010;¨\u0006@"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "Lokio/Buffer;", "buffer", "source", "", "byteCount", "Landroid/support/v4/ub2;", "write", "Lokio/ByteString;", "byteString", "", TypedValues.Cycle.S_WAVE_OFFSET, "", TypedValues.Custom.S_STRING, "writeUtf8", "beginIndex", "endIndex", "codePoint", "writeUtf8CodePoint", "Ljava/nio/charset/Charset;", "charset", "writeString", "", "Ljava/nio/ByteBuffer;", "Lokio/Source;", "writeAll", "b", "writeByte", ak.aB, "writeShort", "writeShortLe", ak.aC, "writeInt", "writeIntLe", "v", "writeLong", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "emitCompleteSegments", "emit", "Ljava/io/OutputStream;", "outputStream", "flush", "", "isOpen", "close", "Lokio/Timeout;", "timeout", "toString", "Lokio/Sink;", "sink", "Lokio/Sink;", "bufferField", "Lokio/Buffer;", "closed", "Z", "getBuffer", "()Lokio/Buffer;", "getBuffer$annotations", "()V", "<init>", "(Lokio/Sink;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class RealBufferedSink implements BufferedSink {

    @m41
    @tp0
    public final Buffer bufferField;

    @tp0
    public boolean closed;

    @m41
    @tp0
    public final Sink sink;

    public RealBufferedSink(@m41 Sink sink) {
        Csuper.m30700throw(sink, "sink");
        this.sink = sink;
        this.bufferField = new Buffer();
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        Throwable th = null;
        try {
            if (this.bufferField.size() > 0) {
                Sink sink = this.sink;
                Buffer buffer = this.bufferField;
                sink.write(buffer, buffer.size());
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.sink.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.closed = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink emit() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        long size = this.bufferField.size();
        if (size > 0) {
            this.sink.write(this.bufferField, size);
        }
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink emitCompleteSegments() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        long jCompleteSegmentByteCount = this.bufferField.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            this.sink.write(this.bufferField, jCompleteSegmentByteCount);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.bufferField.size() > 0) {
            Sink sink = this.sink;
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
        }
        this.sink.flush();
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSink
    @m41
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink.outputStream.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws Throwable {
                RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    return;
                }
                realBufferedSink.flush();
            }

            @m41
            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    throw new IOException("closed");
                }
                realBufferedSink.bufferField.writeByte((int) ((byte) i));
                RealBufferedSink.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(@m41 byte[] data, int i, int i2) throws IOException {
                Csuper.m30700throw(data, "data");
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.bufferField.write(data, i, i2);
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // okio.Sink
    @m41
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @m41
    public String toString() {
        return "buffer(" + this.sink + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@m41 ByteBuffer source) throws IOException {
        Csuper.m30700throw(source, "source");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        int iWrite = this.bufferField.write(source);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // okio.BufferedSink
    public long writeAll(@m41 Source source) throws IOException {
        Csuper.m30700throw(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeByte(int i) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeByte(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeDecimalLong(long j) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeDecimalLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeHexadecimalUnsignedLong(long j) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeHexadecimalUnsignedLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeInt(int i) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeInt(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeIntLe(int i) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeIntLe(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeLong(long j) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeLongLe(long j) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeLongLe(j);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeShort(int i) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeShort(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeShortLe(int i) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeShortLe(i);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeString(@m41 String string, @m41 Charset charset) {
        Csuper.m30700throw(string, "string");
        Csuper.m30700throw(charset, "charset");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeString(string, charset);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeUtf8(@m41 String string) {
        Csuper.m30700throw(string, "string");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeUtf8(string);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeUtf8CodePoint(int i) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeUtf8CodePoint(i);
        return emitCompleteSegments();
    }

    @Override // okio.Sink
    public void write(@m41 Buffer source, long j) throws IOException {
        Csuper.m30700throw(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, j);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeString(@m41 String string, int i, int i2, @m41 Charset charset) {
        Csuper.m30700throw(string, "string");
        Csuper.m30700throw(charset, "charset");
        if (!this.closed) {
            this.bufferField.writeString(string, i, i2, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink writeUtf8(@m41 String string, int i, int i2) {
        Csuper.m30700throw(string, "string");
        if (!this.closed) {
            this.bufferField.writeUtf8(string, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink write(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.write(byteString);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink write(@m41 ByteString byteString, int i, int i2) {
        Csuper.m30700throw(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.write(byteString, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink write(@m41 byte[] source) {
        Csuper.m30700throw(source, "source");
        if (!this.closed) {
            this.bufferField.write(source);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink write(@m41 byte[] source, int i, int i2) {
        Csuper.m30700throw(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @m41
    public BufferedSink write(@m41 Source source, long j) throws IOException {
        Csuper.m30700throw(source, "source");
        while (j > 0) {
            long j2 = source.read(this.bufferField, j);
            if (j2 != -1) {
                j -= j2;
                emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return this;
    }
}
