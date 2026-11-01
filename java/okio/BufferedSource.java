package okio;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0003H'J\b\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H&J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H&J\b\u0010\r\u001a\u00020\fH&J\b\u0010\u000f\u001a\u00020\u000eH&J\b\u0010\u0010\u001a\u00020\u000eH&J\b\u0010\u0012\u001a\u00020\u0011H&J\b\u0010\u0013\u001a\u00020\u0011H&J\b\u0010\u0014\u001a\u00020\u0007H&J\b\u0010\u0015\u001a\u00020\u0007H&J\b\u0010\u0016\u001a\u00020\u0007H&J\b\u0010\u0017\u001a\u00020\u0007H&J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H&J\b\u0010\u001a\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H&J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001bH&J\b\u0010\u001f\u001a\u00020\u001eH&J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\b\u001a\u00020\u0007H&J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001eH&J\u0010\u0010\"\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001eH&J \u0010!\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0011H&J\u0018\u0010\"\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H&J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010 \u001a\u00020$H&J\b\u0010'\u001a\u00020&H&J\u0010\u0010'\u001a\u00020&2\u0006\u0010\b\u001a\u00020\u0007H&J\n\u0010(\u001a\u0004\u0018\u00010&H&J\b\u0010)\u001a\u00020&H&J\u0010\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020\u0007H&J\b\u0010+\u001a\u00020\u0011H&J\u0010\u0010.\u001a\u00020&2\u0006\u0010-\u001a\u00020,H&J\u0018\u0010.\u001a\u00020&2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010-\u001a\u00020,H&J\u0010\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\fH&J\u0018\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\f2\u0006\u00101\u001a\u00020\u0007H&J \u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\f2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H&J\u0010\u00100\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0019H&J\u0018\u00100\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00192\u0006\u00101\u001a\u00020\u0007H&J\u0010\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0019H&J\u0018\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00192\u0006\u00101\u001a\u00020\u0007H&J\u0018\u00106\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0019H&J(\u00106\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0011H&J\b\u00108\u001a\u00020\u0000H&J\b\u0010:\u001a\u000209H&R\u0016\u0010\u0004\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006="}, d2 = {"Lokio/BufferedSource;", "Lokio/Source;", "Ljava/nio/channels/ReadableByteChannel;", "Lokio/Buffer;", "buffer", "", "exhausted", "", "byteCount", "Landroid/support/v4/ub2;", "require", "request", "", "readByte", "", "readShort", "readShortLe", "", "readInt", "readIntLe", "readLong", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "skip", "Lokio/ByteString;", "readByteString", "Lokio/Options;", "options", "select", "", "readByteArray", "sink", "read", "readFully", TypedValues.Cycle.S_WAVE_OFFSET, "Lokio/Sink;", "readAll", "", "readUtf8", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "Ljava/nio/charset/Charset;", "charset", "readString", "b", "indexOf", "fromIndex", "toIndex", "bytes", "targetBytes", "indexOfElement", "rangeEquals", "bytesOffset", "peek", "Ljava/io/InputStream;", "inputStream", "getBuffer", "()Lokio/Buffer;", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    @m41
    @Cfor(level = Ctry.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @an1(expression = "buffer", imports = {}))
    Buffer buffer();

    boolean exhausted() throws IOException;

    @m41
    Buffer getBuffer();

    long indexOf(byte b) throws IOException;

    long indexOf(byte b, long j) throws IOException;

    long indexOf(byte b, long j, long j2) throws IOException;

    long indexOf(@m41 ByteString byteString) throws IOException;

    long indexOf(@m41 ByteString byteString, long j) throws IOException;

    long indexOfElement(@m41 ByteString byteString) throws IOException;

    long indexOfElement(@m41 ByteString byteString, long j) throws IOException;

    @m41
    InputStream inputStream();

    @m41
    BufferedSource peek();

    boolean rangeEquals(long j, @m41 ByteString byteString) throws IOException;

    boolean rangeEquals(long j, @m41 ByteString byteString, int i, int i2) throws IOException;

    int read(@m41 byte[] bArr) throws IOException;

    int read(@m41 byte[] bArr, int i, int i2) throws IOException;

    long readAll(@m41 Sink sink) throws IOException;

    byte readByte() throws IOException;

    @m41
    byte[] readByteArray() throws IOException;

    @m41
    byte[] readByteArray(long j) throws IOException;

    @m41
    ByteString readByteString() throws IOException;

    @m41
    ByteString readByteString(long j) throws IOException;

    long readDecimalLong() throws IOException;

    void readFully(@m41 Buffer buffer, long j) throws IOException;

    void readFully(@m41 byte[] bArr) throws IOException;

    long readHexadecimalUnsignedLong() throws IOException;

    int readInt() throws IOException;

    int readIntLe() throws IOException;

    long readLong() throws IOException;

    long readLongLe() throws IOException;

    short readShort() throws IOException;

    short readShortLe() throws IOException;

    @m41
    String readString(long j, @m41 Charset charset) throws IOException;

    @m41
    String readString(@m41 Charset charset) throws IOException;

    @m41
    String readUtf8() throws IOException;

    @m41
    String readUtf8(long j) throws IOException;

    int readUtf8CodePoint() throws IOException;

    @z41
    String readUtf8Line() throws IOException;

    @m41
    String readUtf8LineStrict() throws IOException;

    @m41
    String readUtf8LineStrict(long j) throws IOException;

    boolean request(long j) throws IOException;

    void require(long j) throws IOException;

    int select(@m41 Options options) throws IOException;

    void skip(long j) throws IOException;
}
