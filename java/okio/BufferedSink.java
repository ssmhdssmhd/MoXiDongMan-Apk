package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ak;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0003H'J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H&J \u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH&J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH&J \u0010\u0007\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH&J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u0007\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000eH&J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010H&J \u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bH&J\u0010\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\bH&J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H&J(\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H&J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\bH&J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\bH&J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\bH&J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\bH&J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\bH&J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000eH&J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000eH&J\u0010\u0010%\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000eH&J\u0010\u0010&\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000eH&J\b\u0010(\u001a\u00020'H&J\b\u0010)\u001a\u00020\u0000H&J\b\u0010*\u001a\u00020\u0000H&J\b\u0010,\u001a\u00020+H&R\u0016\u0010\u0004\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006/"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "Lokio/Buffer;", "buffer", "Lokio/ByteString;", "byteString", "write", "", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "", "source", "Lokio/Source;", "", "writeAll", "", TypedValues.Custom.S_STRING, "writeUtf8", "beginIndex", "endIndex", "codePoint", "writeUtf8CodePoint", "Ljava/nio/charset/Charset;", "charset", "writeString", "b", "writeByte", ak.aB, "writeShort", "writeShortLe", ak.aC, "writeInt", "writeIntLe", "v", "writeLong", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "Landroid/support/v4/ub2;", "flush", "emit", "emitCompleteSegments", "Ljava/io/OutputStream;", "outputStream", "getBuffer", "()Lokio/Buffer;", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    @m41
    @Cfor(level = Ctry.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @an1(expression = "buffer", imports = {}))
    Buffer buffer();

    @m41
    BufferedSink emit() throws IOException;

    @m41
    BufferedSink emitCompleteSegments() throws IOException;

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    @m41
    Buffer getBuffer();

    @m41
    OutputStream outputStream();

    @m41
    BufferedSink write(@m41 ByteString byteString) throws IOException;

    @m41
    BufferedSink write(@m41 ByteString byteString, int i, int i2) throws IOException;

    @m41
    BufferedSink write(@m41 Source source, long j) throws IOException;

    @m41
    BufferedSink write(@m41 byte[] bArr) throws IOException;

    @m41
    BufferedSink write(@m41 byte[] bArr, int i, int i2) throws IOException;

    long writeAll(@m41 Source source) throws IOException;

    @m41
    BufferedSink writeByte(int i) throws IOException;

    @m41
    BufferedSink writeDecimalLong(long j) throws IOException;

    @m41
    BufferedSink writeHexadecimalUnsignedLong(long j) throws IOException;

    @m41
    BufferedSink writeInt(int i) throws IOException;

    @m41
    BufferedSink writeIntLe(int i) throws IOException;

    @m41
    BufferedSink writeLong(long j) throws IOException;

    @m41
    BufferedSink writeLongLe(long j) throws IOException;

    @m41
    BufferedSink writeShort(int i) throws IOException;

    @m41
    BufferedSink writeShortLe(int i) throws IOException;

    @m41
    BufferedSink writeString(@m41 String str, int i, int i2, @m41 Charset charset) throws IOException;

    @m41
    BufferedSink writeString(@m41 String str, @m41 Charset charset) throws IOException;

    @m41
    BufferedSink writeUtf8(@m41 String str) throws IOException;

    @m41
    BufferedSink writeUtf8(@m41 String str, int i, int i2) throws IOException;

    @m41
    BufferedSink writeUtf8CodePoint(int i) throws IOException;
}
