package okio.internal;

import android.support.v4.ca2;
import android.support.v4.m41;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.t3;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import com.umeng.analytics.pro.ak;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import okhttp3.internal.connection.RealConnection;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;
import okio._UtilKt;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\u001a0\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\u001a\u0014\u0010\u000e\u001a\u00020\r*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0000\u001aA\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000f*\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000b2\u001a\u0010\u0012\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00000\u0011H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001e\u0010\u0018\u001a\u00020\u0002*\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\bH\u0000\u001a%\u0010\u001c\u001a\u00020\n*\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u000b*\u00020\nH\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u001e*\u00020\nH\u0080\b\u001a\r\u0010!\u001a\u00020 *\u00020\nH\u0080\b\u001a\r\u0010\"\u001a\u00020\u0002*\u00020\nH\u0080\b\u001a\r\u0010#\u001a\u00020\u000b*\u00020\nH\u0080\b\u001a\u0015\u0010%\u001a\u00020\u001e*\u00020\n2\u0006\u0010$\u001a\u00020\u000bH\u0080\b\u001a\r\u0010'\u001a\u00020&*\u00020\nH\u0080\b\u001a\u0015\u0010(\u001a\u00020&*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a)\u0010+\u001a\u00020\n*\u00020\n2\u0006\u0010*\u001a\u00020)2\b\b\u0002\u0010\u001a\u001a\u00020\u00022\b\b\u0002\u0010\u001b\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010-\u001a\u00020\n*\u00020\n2\u0006\u0010,\u001a\u00020\u000bH\u0080\b\u001a\u0015\u0010.\u001a\u00020\n*\u00020\n2\u0006\u0010,\u001a\u00020\u000bH\u0080\b\u001a\u0015\u00100\u001a\u00020\u0000*\u00020\n2\u0006\u0010/\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010+\u001a\u00020\n*\u00020\n2\u0006\u00101\u001a\u00020\u0004H\u0080\b\u001a%\u0010+\u001a\u00020\n*\u00020\n2\u0006\u00101\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0080\b\u001a\r\u00102\u001a\u00020\u0004*\u00020\nH\u0080\b\u001a\u0015\u00102\u001a\u00020\u0004*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\u0015\u00104\u001a\u00020\u0002*\u00020\n2\u0006\u00103\u001a\u00020\u0004H\u0080\b\u001a\u0015\u00105\u001a\u00020&*\u00020\n2\u0006\u00103\u001a\u00020\u0004H\u0080\b\u001a%\u00104\u001a\u00020\u0002*\u00020\n2\u0006\u00103\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0080\b\u001a\r\u00106\u001a\u00020\u000b*\u00020\nH\u0080\b\u001a\r\u00107\u001a\u00020\u000b*\u00020\nH\u0080\b\u001a\r\u00108\u001a\u00020)*\u00020\nH\u0080\b\u001a\u0015\u00108\u001a\u00020)*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\u0015\u00109\u001a\u00020\u0002*\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0080\b\u001a\u001d\u00105\u001a\u00020&*\u00020\n2\u0006\u00103\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\u0015\u0010;\u001a\u00020\u000b*\u00020\n2\u0006\u00103\u001a\u00020:H\u0080\b\u001a\u0015\u0010<\u001a\u00020\r*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\u000f\u0010=\u001a\u0004\u0018\u00010\r*\u00020\nH\u0080\b\u001a\u0015\u0010?\u001a\u00020\r*\u00020\n2\u0006\u0010>\u001a\u00020\u000bH\u0080\b\u001a\r\u0010@\u001a\u00020\u0002*\u00020\nH\u0080\b\u001a%\u0010D\u001a\u00020\n*\u00020\n2\u0006\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020\u00022\u0006\u0010C\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010F\u001a\u00020\n*\u00020\n2\u0006\u0010E\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010H\u001a\u00020\u000b*\u00020\n2\u0006\u00101\u001a\u00020GH\u0080\b\u001a\u001d\u0010+\u001a\u00020\n*\u00020\n2\u0006\u00101\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\u0015\u0010J\u001a\u00020\n*\u00020\n2\u0006\u0010I\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010L\u001a\u00020\n*\u00020\n2\u0006\u0010K\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010N\u001a\u00020\n*\u00020\n2\u0006\u0010M\u001a\u00020\u0002H\u0080\b\u001a\u0015\u0010O\u001a\u00020\n*\u00020\n2\u0006\u0010,\u001a\u00020\u000bH\u0080\b\u001a\u001d\u0010+\u001a\u00020&*\u00020\n2\u0006\u00101\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a\u001d\u00104\u001a\u00020\u000b*\u00020\n2\u0006\u00103\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000bH\u0080\b\u001a%\u0010Q\u001a\u00020\u000b*\u00020\n2\u0006\u0010I\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020\u000bH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u000b*\u00020\n2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u000bH\u0080\b\u001a\u001d\u0010S\u001a\u00020\u000b*\u00020\n2\u0006\u0010R\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u000bH\u0080\b\u001a-\u0010T\u001a\u00020\b*\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0080\b\u001a\u0017\u0010W\u001a\u00020\b*\u00020\n2\b\u0010V\u001a\u0004\u0018\u00010UH\u0080\b\u001a\r\u0010X\u001a\u00020\u0002*\u00020\nH\u0080\b\u001a\r\u0010Y\u001a\u00020\n*\u00020\nH\u0080\b\u001a\r\u0010Z\u001a\u00020)*\u00020\nH\u0080\b\u001a\u0015\u0010Z\u001a\u00020)*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0002H\u0080\b\u001a\u0014\u0010]\u001a\u00020[*\u00020\n2\u0006\u0010\\\u001a\u00020[H\u0000\u001a\u0014\u0010^\u001a\u00020[*\u00020\n2\u0006\u0010\\\u001a\u00020[H\u0000\u001a\r\u0010_\u001a\u00020\u0002*\u00020[H\u0080\b\u001a\u0015\u0010`\u001a\u00020\u0002*\u00020[2\u0006\u0010\u001a\u001a\u00020\u000bH\u0080\b\u001a\u0015\u0010b\u001a\u00020\u000b*\u00020[2\u0006\u0010a\u001a\u00020\u000bH\u0080\b\u001a\u0015\u0010d\u001a\u00020\u000b*\u00020[2\u0006\u0010c\u001a\u00020\u0002H\u0080\b\u001a\r\u0010e\u001a\u00020&*\u00020[H\u0080\b\"\"\u0010f\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004¢\u0006\u0012\n\u0004\bf\u0010g\u0012\u0004\bj\u0010k\u001a\u0004\bh\u0010i\"\u0016\u0010l\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bl\u0010m\"\u0016\u0010n\u001a\u00020\u000b8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bn\u0010o\"\u0016\u0010p\u001a\u00020\u000b8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bp\u0010o\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006q"}, d2 = {"Lokio/Segment;", "segment", "", "segmentPos", "", "bytes", "bytesOffset", "bytesLimit", "", "rangeEquals", "Lokio/Buffer;", "", "newline", "", "readUtf8Line", ExifInterface.GPS_DIRECTION_TRUE, "fromIndex", "Lkotlin/Function2;", "lambda", "seek", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Lokio/Options;", "options", "selectTruncated", "selectPrefix", "out", TypedValues.Cycle.S_WAVE_OFFSET, "byteCount", "commonCopyTo", "commonCompleteSegmentByteCount", "", "commonReadByte", "", "commonReadShort", "commonReadInt", "commonReadLong", "pos", "commonGet", "Landroid/support/v4/ub2;", "commonClear", "commonSkip", "Lokio/ByteString;", "byteString", "commonWrite", "v", "commonWriteDecimalLong", "commonWriteHexadecimalUnsignedLong", "minimumCapacity", "commonWritableSegment", "source", "commonReadByteArray", "sink", "commonRead", "commonReadFully", "commonReadDecimalLong", "commonReadHexadecimalUnsignedLong", "commonReadByteString", "commonSelect", "Lokio/Sink;", "commonReadAll", "commonReadUtf8", "commonReadUtf8Line", "limit", "commonReadUtf8LineStrict", "commonReadUtf8CodePoint", TypedValues.Custom.S_STRING, "beginIndex", "endIndex", "commonWriteUtf8", "codePoint", "commonWriteUtf8CodePoint", "Lokio/Source;", "commonWriteAll", "b", "commonWriteByte", ak.aB, "commonWriteShort", ak.aC, "commonWriteInt", "commonWriteLong", "toIndex", "commonIndexOf", "targetBytes", "commonIndexOfElement", "commonRangeEquals", "", "other", "commonEquals", "commonHashCode", "commonCopy", "commonSnapshot", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "commonReadUnsafe", "commonReadAndWriteUnsafe", "commonNext", "commonSeek", "newSize", "commonResizeBuffer", "minByteCount", "commonExpandBuffer", "commonClose", "HEX_DIGIT_BYTES", "[B", "getHEX_DIGIT_BYTES", "()[B", "getHEX_DIGIT_BYTES$annotations", "()V", "SEGMENTING_THRESHOLD", OptRuntime.GeneratorState.resumptionPoint_TYPE, "OVERFLOW_ZONE", "J", "OVERFLOW_DIGIT_START", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _BufferKt {

    @m41
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(@m41 Buffer buffer) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(@m41 Buffer.UnsafeCursor unsafeCursor) {
        Csuper.m30700throw(unsafeCursor, "<this>");
        if (!(unsafeCursor.buffer != null)) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        unsafeCursor.buffer = null;
        unsafeCursor.setSegment$okio(null);
        unsafeCursor.offset = -1L;
        unsafeCursor.data = null;
        unsafeCursor.start = -1;
        unsafeCursor.end = -1;
    }

    public static final long commonCompleteSegmentByteCount(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        Segment segment2 = segment.prev;
        Csuper.m30672const(segment2);
        return (segment2.limit >= 8192 || !segment2.owner) ? size : size - (r2 - segment2.pos);
    }

    @m41
    public static final Buffer commonCopy(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer2.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = segmentSharedCopy.prev;
            Csuper.m30672const(segment3);
            Csuper.m30672const(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    @m41
    public static final Buffer commonCopyTo(@m41 Buffer buffer, @m41 Buffer out, long j, long j2) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(out, "out");
        _UtilKt.checkOffsetAndCount(buffer.size(), j, j2);
        if (j2 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j2);
        Segment segment = buffer.head;
        while (true) {
            Csuper.m30672const(segment);
            int i = segment.limit;
            int i2 = segment.pos;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            segment = segment.next;
        }
        while (j2 > 0) {
            Csuper.m30672const(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            int i3 = segmentSharedCopy.pos + ((int) j);
            segmentSharedCopy.pos = i3;
            segmentSharedCopy.limit = Math.min(i3 + ((int) j2), segmentSharedCopy.limit);
            Segment segment2 = out.head;
            if (segment2 == null) {
                segmentSharedCopy.prev = segmentSharedCopy;
                segmentSharedCopy.next = segmentSharedCopy;
                out.head = segmentSharedCopy;
            } else {
                Csuper.m30672const(segment2);
                Segment segment3 = segment2.prev;
                Csuper.m30672const(segment3);
                segment3.push(segmentSharedCopy);
            }
            j2 -= segmentSharedCopy.limit - segmentSharedCopy.pos;
            segment = segment.next;
            j = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(@m41 Buffer buffer, @z41 Object obj) {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer2 = (Buffer) obj;
        if (buffer.size() != buffer2.size()) {
            return false;
        }
        if (buffer.size() == 0) {
            return true;
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        Segment segment2 = buffer2.head;
        Csuper.m30672const(segment2);
        int i = segment.pos;
        int i2 = segment2.pos;
        long j = 0;
        while (j < buffer.size()) {
            long jMin = Math.min(segment.limit - i, segment2.limit - i2);
            if (0 < jMin) {
                long j2 = 0;
                while (true) {
                    j2++;
                    int i3 = i + 1;
                    int i4 = i2 + 1;
                    if (segment.data[i] != segment2.data[i2]) {
                        return false;
                    }
                    if (j2 >= jMin) {
                        i = i3;
                        i2 = i4;
                        break;
                    }
                    i = i3;
                    i2 = i4;
                }
            }
            if (i == segment.limit) {
                segment = segment.next;
                Csuper.m30672const(segment);
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                Csuper.m30672const(segment2);
                i2 = segment2.pos;
            }
            j += jMin;
        }
        return true;
    }

    public static final long commonExpandBuffer(@m41 Buffer.UnsafeCursor unsafeCursor, int i) {
        Csuper.m30700throw(unsafeCursor, "<this>");
        if (!(i > 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("minByteCount <= 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i <= 8192)) {
            throw new IllegalArgumentException(Csuper.m30690private("minByteCount > Segment.SIZE: ", Integer.valueOf(i)).toString());
        }
        Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
        }
        long size = buffer.size();
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i);
        int i2 = 8192 - segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = 8192;
        long j = i2;
        buffer.setSize$okio(size + j);
        unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
        unsafeCursor.offset = size;
        unsafeCursor.data = segmentWritableSegment$okio.data;
        unsafeCursor.start = 8192 - i2;
        unsafeCursor.end = 8192;
        return j;
    }

    public static final byte commonGet(@m41 Buffer buffer, long j) {
        Csuper.m30700throw(buffer, "<this>");
        _UtilKt.checkOffsetAndCount(buffer.size(), j, 1L);
        Segment segment = buffer.head;
        if (segment == null) {
            Csuper.m30672const(null);
            throw null;
        }
        if (buffer.size() - j < j) {
            long size = buffer.size();
            while (size > j) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size -= segment.limit - segment.pos;
            }
            Csuper.m30672const(segment);
            return segment.data[(int) ((segment.pos + j) - size)];
        }
        long j2 = 0;
        while (true) {
            long j3 = (segment.limit - segment.pos) + j2;
            if (j3 > j) {
                Csuper.m30672const(segment);
                return segment.data[(int) ((segment.pos + j) - j2)];
            }
            segment = segment.next;
            Csuper.m30672const(segment);
            j2 = j3;
        }
    }

    public static final int commonHashCode(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        Segment segment = buffer.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.limit;
            for (int i3 = segment.pos; i3 < i2; i3++) {
                i = (i * 31) + segment.data[i3];
            }
            segment = segment.next;
            Csuper.m30672const(segment);
        } while (segment != buffer.head);
        return i;
    }

    public static final long commonIndexOf(@m41 Buffer buffer, byte b, long j, long j2) {
        Segment segment;
        long j3 = j;
        long size = j2;
        Csuper.m30700throw(buffer, "<this>");
        boolean z = false;
        long j4 = 0;
        if (0 <= j3 && j3 <= size) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j3 + " toIndex=" + size).toString());
        }
        if (size > buffer.size()) {
            size = buffer.size();
        }
        long j5 = size;
        if (j3 == j5 || (segment = buffer.head) == null) {
            return -1L;
        }
        if (buffer.size() - j3 < j3) {
            long size2 = buffer.size();
            while (size2 > j3) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size2 -= segment.limit - segment.pos;
            }
            while (size2 < j5) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (segment.pos + j5) - size2);
                for (int i = (int) ((segment.pos + j3) - size2); i < iMin; i++) {
                    if (bArr[i] == b) {
                        return (i - segment.pos) + size2;
                    }
                }
                size2 += segment.limit - segment.pos;
                segment = segment.next;
                Csuper.m30672const(segment);
                j3 = size2;
            }
            return -1L;
        }
        while (true) {
            long j6 = (segment.limit - segment.pos) + j4;
            if (j6 > j3) {
                break;
            }
            segment = segment.next;
            Csuper.m30672const(segment);
            j4 = j6;
        }
        while (j4 < j5) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (segment.pos + j5) - j4);
            for (int i2 = (int) ((segment.pos + j3) - j4); i2 < iMin2; i2++) {
                if (bArr2[i2] == b) {
                    return (i2 - segment.pos) + j4;
                }
            }
            j4 += segment.limit - segment.pos;
            segment = segment.next;
            Csuper.m30672const(segment);
            j3 = j4;
        }
        return -1L;
    }

    public static final long commonIndexOfElement(@m41 Buffer buffer, @m41 ByteString targetBytes, long j) {
        int i;
        int i2;
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(targetBytes, "targetBytes");
        long size = 0;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("fromIndex < 0: ", Long.valueOf(j)).toString());
        }
        Segment segment = buffer.head;
        if (segment == null) {
            return -1L;
        }
        if (buffer.size() - j < j) {
            size = buffer.size();
            while (size > j) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size -= segment.limit - segment.pos;
            }
            if (targetBytes.size() == 2) {
                byte b = targetBytes.getByte(0);
                byte b2 = targetBytes.getByte(1);
                while (size < buffer.size()) {
                    byte[] bArr = segment.data;
                    i = (int) ((segment.pos + j) - size);
                    int i3 = segment.limit;
                    while (i < i3) {
                        byte b3 = bArr[i];
                        if (b3 == b || b3 == b2) {
                            i2 = segment.pos;
                        } else {
                            i++;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    Csuper.m30672const(segment);
                    j = size;
                }
            } else {
                byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
                while (size < buffer.size()) {
                    byte[] bArr2 = segment.data;
                    i = (int) ((segment.pos + j) - size);
                    int i4 = segment.limit;
                    while (i < i4) {
                        byte b4 = bArr2[i];
                        int length = bArrInternalArray$okio.length;
                        int i5 = 0;
                        while (i5 < length) {
                            byte b5 = bArrInternalArray$okio[i5];
                            i5++;
                            if (b4 == b5) {
                                i2 = segment.pos;
                            }
                        }
                        i++;
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    Csuper.m30672const(segment);
                    j = size;
                }
            }
            return -1L;
        }
        while (true) {
            long j2 = (segment.limit - segment.pos) + size;
            if (j2 > j) {
                break;
            }
            segment = segment.next;
            Csuper.m30672const(segment);
            size = j2;
        }
        if (targetBytes.size() == 2) {
            byte b6 = targetBytes.getByte(0);
            byte b7 = targetBytes.getByte(1);
            while (size < buffer.size()) {
                byte[] bArr3 = segment.data;
                i = (int) ((segment.pos + j) - size);
                int i6 = segment.limit;
                while (i < i6) {
                    byte b8 = bArr3[i];
                    if (b8 == b6 || b8 == b7) {
                        i2 = segment.pos;
                    } else {
                        i++;
                    }
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                Csuper.m30672const(segment);
                j = size;
            }
        } else {
            byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
            while (size < buffer.size()) {
                byte[] bArr4 = segment.data;
                i = (int) ((segment.pos + j) - size);
                int i7 = segment.limit;
                while (i < i7) {
                    byte b9 = bArr4[i];
                    int length2 = bArrInternalArray$okio2.length;
                    int i8 = 0;
                    while (i8 < length2) {
                        byte b10 = bArrInternalArray$okio2[i8];
                        i8++;
                        if (b9 == b10) {
                            i2 = segment.pos;
                        }
                    }
                    i++;
                }
                size += segment.limit - segment.pos;
                segment = segment.next;
                Csuper.m30672const(segment);
                j = size;
            }
        }
        return -1L;
        return (i - i2) + size;
    }

    public static final int commonNext(@m41 Buffer.UnsafeCursor unsafeCursor) {
        Csuper.m30700throw(unsafeCursor, "<this>");
        long j = unsafeCursor.offset;
        Buffer buffer = unsafeCursor.buffer;
        Csuper.m30672const(buffer);
        if (!(j != buffer.size())) {
            throw new IllegalStateException("no more bytes".toString());
        }
        long j2 = unsafeCursor.offset;
        return unsafeCursor.seek(j2 == -1 ? 0L : j2 + (unsafeCursor.end - unsafeCursor.start));
    }

    public static final boolean commonRangeEquals(@m41 Buffer buffer, long j, @m41 ByteString bytes, int i, int i2) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(bytes, "bytes");
        if (j < 0 || i < 0 || i2 < 0 || buffer.size() - j < i2 || bytes.size() - i < i2) {
            return false;
        }
        if (i2 <= 0) {
            return true;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (buffer.getByte(i3 + j) != bytes.getByte(i3 + i)) {
                return false;
            }
            if (i4 >= i2) {
                return true;
            }
            i3 = i4;
        }
    }

    public static final int commonRead(@m41 Buffer buffer, @m41 byte[] sink) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final long commonReadAll(@m41 Buffer buffer, @m41 Sink sink) throws IOException {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    @m41
    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(@m41 Buffer buffer, @m41 Buffer.UnsafeCursor unsafeCursor) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (!(unsafeCursorResolveDefaultParameter.buffer == null)) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = true;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final byte commonReadByte(@m41 Buffer buffer) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        buffer.setSize$okio(buffer.size() - 1);
        if (i3 == i2) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    @m41
    public static final byte[] commonReadByteArray(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    @m41
    public static final ByteString commonReadByteString(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    public static final long commonReadDecimalLong(@m41 Buffer buffer) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        long j = -7;
        int i = 0;
        long j2 = 0;
        boolean z = false;
        boolean z2 = false;
        do {
            Segment segment = buffer.head;
            Csuper.m30672const(segment);
            byte[] bArr = segment.data;
            int i2 = segment.pos;
            int i3 = segment.limit;
            while (i2 < i3) {
                byte b = bArr[i2];
                byte b2 = (byte) 48;
                if (b >= b2 && b <= ((byte) 57)) {
                    int i4 = b2 - b;
                    if (j2 < -922337203685477580L || (j2 == -922337203685477580L && i4 < j)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j2).writeByte((int) b);
                        if (!z) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException(Csuper.m30690private("Number too large: ", bufferWriteByte.readUtf8()));
                    }
                    j2 = (j2 * 10) + i4;
                } else {
                    if (b != ((byte) 45) || i != 0) {
                        z2 = true;
                        break;
                    }
                    j--;
                    z = true;
                }
                i2++;
                i++;
            }
            if (i2 == i3) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i2;
            }
            if (z2) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - i);
        if (i >= (z ? 2 : 1)) {
            return z ? j2 : -j2;
        }
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + _UtilKt.toHexString(buffer.getByte(0L)));
    }

    public static final void commonReadFully(@m41 Buffer buffer, @m41 byte[] sink) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int i2 = buffer.read(sink, i, sink.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009d A[EDGE_INSN: B:44:0x009d->B:37:0x009d BREAK  A[LOOP:0: B:5:0x0012->B:46:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long commonReadHexadecimalUnsignedLong(@m41 Buffer buffer) throws EOFException {
        int i;
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i2 = 0;
        long j = 0;
        boolean z = false;
        do {
            Segment segment = buffer.head;
            Csuper.m30672const(segment);
            byte[] bArr = segment.data;
            int i3 = segment.pos;
            int i4 = segment.limit;
            while (i3 < i4) {
                byte b = bArr[i3];
                byte b2 = (byte) 48;
                if (b < b2 || b > ((byte) 57)) {
                    byte b3 = (byte) 97;
                    if ((b >= b3 && b <= ((byte) 102)) || (b >= (b3 = (byte) 65) && b <= ((byte) 70))) {
                        i = (b - b3) + 10;
                    } else {
                        if (i2 == 0) {
                            throw new NumberFormatException(Csuper.m30690private("Expected leading [0-9a-fA-F] character but was 0x", _UtilKt.toHexString(b)));
                        }
                        z = true;
                        if (i3 != i4) {
                            buffer.head = segment.pop();
                            SegmentPool.recycle(segment);
                        } else {
                            segment.pos = i3;
                        }
                        if (!z) {
                            break;
                        }
                    }
                } else {
                    i = b - b2;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    throw new NumberFormatException(Csuper.m30690private("Number too large: ", new Buffer().writeHexadecimalUnsignedLong(j).writeByte((int) b).readUtf8()));
                }
                j = (j << 4) | i;
                i3++;
                i2++;
            }
            if (i3 != i4) {
            }
            if (!z) {
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - i2);
        return j;
    }

    public static final int commonReadInt(@m41 Buffer buffer) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() < 4) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        buffer.setSize$okio(buffer.size() - 4);
        if (i8 == i2) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i8;
        }
        return i9;
    }

    public static final long commonReadLong(@m41 Buffer buffer) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() < 8) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
        }
        byte[] bArr = segment.data;
        long j = (bArr[i] & 255) << 56;
        long j2 = j | ((bArr[r6] & 255) << 48);
        long j3 = j2 | ((bArr[r1] & 255) << 40);
        int i3 = i + 1 + 1 + 1 + 1;
        long j4 = ((bArr[r6] & 255) << 32) | j3;
        long j5 = j4 | ((bArr[i3] & 255) << 24);
        long j6 = j5 | ((bArr[r8] & 255) << 16);
        long j7 = j6 | ((bArr[r1] & 255) << 8);
        int i4 = i3 + 1 + 1 + 1 + 1;
        long j8 = j7 | (bArr[r8] & 255);
        buffer.setSize$okio(buffer.size() - 8);
        if (i4 == i2) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return j8;
    }

    public static final short commonReadShort(@m41 Buffer buffer) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() < 2) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        buffer.setSize$okio(buffer.size() - 2);
        if (i4 == i2) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) i5;
    }

    @m41
    public static final Buffer.UnsafeCursor commonReadUnsafe(@m41 Buffer buffer, @m41 Buffer.UnsafeCursor unsafeCursor) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (!(unsafeCursorResolveDefaultParameter.buffer == null)) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = false;
        return unsafeCursorResolveDefaultParameter;
    }

    @m41
    public static final String commonReadUtf8(@m41 Buffer buffer, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount: ", Long.valueOf(j)).toString());
        }
        if (buffer.size() < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        Segment segment = buffer.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        if (i + j > segment.limit) {
            return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j), 0, 0, 3, null);
        }
        int i2 = (int) j;
        String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i, i + i2);
        segment.pos += i2;
        buffer.setSize$okio(buffer.size() - j);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return strCommonToUtf8String;
    }

    public static final int commonReadUtf8CodePoint(@m41 Buffer buffer) throws EOFException {
        int i;
        int i2;
        int i3;
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        byte b = buffer.getByte(0L);
        boolean z = false;
        if ((b & 128) == 0) {
            i = b & Byte.MAX_VALUE;
            i2 = 1;
            i3 = 0;
        } else if ((b & 224) == 192) {
            i = b & t3.f6399protected;
            i2 = 2;
            i3 = 128;
        } else if ((b & 240) == 224) {
            i = b & 15;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((b & 248) != 240) {
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i = b & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (buffer.size() < j) {
            throw new EOFException("size < " + i2 + ": " + buffer.size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b) + ')');
        }
        if (1 < i2) {
            int i4 = 1;
            while (true) {
                int i5 = i4 + 1;
                long j2 = i4;
                byte b2 = buffer.getByte(j2);
                if ((b2 & 192) != 128) {
                    buffer.skip(j2);
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                i = (i << 6) | (b2 & Utf8.REPLACEMENT_BYTE);
                if (i5 >= i2) {
                    break;
                }
                i4 = i5;
            }
        }
        buffer.skip(j);
        if (i > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        if (55296 <= i && i <= 57343) {
            z = true;
        }
        return (!z && i >= i3) ? i : Utf8.REPLACEMENT_CODE_POINT;
    }

    @z41
    public static final String commonReadUtf8Line(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        long jIndexOf = buffer.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    @m41
    public static final String commonReadUtf8LineStrict(@m41 Buffer buffer, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("limit < 0: ", Long.valueOf(j)).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        byte b = (byte) 10;
        long jIndexOf = buffer.indexOf(b, 0L, j2);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (j2 < buffer.size() && buffer.getByte(j2 - 1) == ((byte) 13) && buffer.getByte(j2) == b) {
            return readUtf8Line(buffer, j2);
        }
        Buffer buffer2 = new Buffer();
        buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j) + " content=" + buffer2.readByteString().hex() + ca2.f672continue);
    }

    public static final long commonResizeBuffer(@m41 Buffer.UnsafeCursor unsafeCursor, long j) {
        Csuper.m30700throw(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
        }
        long size = buffer.size();
        int i = 1;
        if (j <= size) {
            if (!(j >= 0)) {
                throw new IllegalArgumentException(Csuper.m30690private("newSize < 0: ", Long.valueOf(j)).toString());
            }
            long j2 = size - j;
            while (true) {
                if (j2 <= 0) {
                    break;
                }
                Segment segment = buffer.head;
                Csuper.m30672const(segment);
                Segment segment2 = segment.prev;
                Csuper.m30672const(segment2);
                int i2 = segment2.limit;
                long j3 = i2 - segment2.pos;
                if (j3 > j2) {
                    segment2.limit = i2 - ((int) j2);
                    break;
                }
                buffer.head = segment2.pop();
                SegmentPool.recycle(segment2);
                j2 -= j3;
            }
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
        } else if (j > size) {
            long j4 = j - size;
            boolean z = true;
            while (j4 > 0) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i);
                int iMin = (int) Math.min(j4, 8192 - segmentWritableSegment$okio.limit);
                segmentWritableSegment$okio.limit += iMin;
                j4 -= iMin;
                if (z) {
                    unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
                    unsafeCursor.offset = size;
                    unsafeCursor.data = segmentWritableSegment$okio.data;
                    int i3 = segmentWritableSegment$okio.limit;
                    unsafeCursor.start = i3 - iMin;
                    unsafeCursor.end = i3;
                    i = 1;
                    z = false;
                } else {
                    i = 1;
                }
            }
        }
        buffer.setSize$okio(j);
        return size;
    }

    public static final int commonSeek(@m41 Buffer.UnsafeCursor unsafeCursor, long j) {
        Segment segmentPush;
        Csuper.m30700throw(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (j < -1 || j > buffer.size()) {
            throw new ArrayIndexOutOfBoundsException("offset=" + j + " > size=" + buffer.size());
        }
        if (j == -1 || j == buffer.size()) {
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return -1;
        }
        long j2 = 0;
        long size = buffer.size();
        Segment segment$okio = buffer.head;
        if (unsafeCursor.getSegment$okio() != null) {
            long j3 = unsafeCursor.offset;
            int i = unsafeCursor.start;
            Csuper.m30672const(unsafeCursor.getSegment$okio());
            long j4 = j3 - (i - r12.pos);
            if (j4 > j) {
                segment$okio = unsafeCursor.getSegment$okio();
                size = j4;
                segmentPush = segment$okio;
            } else {
                segmentPush = unsafeCursor.getSegment$okio();
                j2 = j4;
            }
        } else {
            segmentPush = segment$okio;
        }
        if (size - j > j - j2) {
            while (true) {
                Csuper.m30672const(segmentPush);
                int i2 = segmentPush.limit;
                int i3 = segmentPush.pos;
                if (j < (i2 - i3) + j2) {
                    break;
                }
                j2 += i2 - i3;
                segmentPush = segmentPush.next;
            }
        } else {
            while (size > j) {
                Csuper.m30672const(segment$okio);
                segment$okio = segment$okio.prev;
                Csuper.m30672const(segment$okio);
                size -= segment$okio.limit - segment$okio.pos;
            }
            j2 = size;
            segmentPush = segment$okio;
        }
        if (unsafeCursor.readWrite) {
            Csuper.m30672const(segmentPush);
            if (segmentPush.shared) {
                Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                if (buffer.head == segmentPush) {
                    buffer.head = segmentUnsharedCopy;
                }
                segmentPush = segmentPush.push(segmentUnsharedCopy);
                Segment segment = segmentPush.prev;
                Csuper.m30672const(segment);
                segment.pop();
            }
        }
        unsafeCursor.setSegment$okio(segmentPush);
        unsafeCursor.offset = j;
        Csuper.m30672const(segmentPush);
        unsafeCursor.data = segmentPush.data;
        int i4 = segmentPush.pos + ((int) (j - j2));
        unsafeCursor.start = i4;
        int i5 = segmentPush.limit;
        unsafeCursor.end = i5;
        return i5 - i4;
    }

    public static final int commonSelect(@m41 Buffer buffer, @m41 Options options) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(options, "options");
        int iSelectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings$okio()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public static final void commonSkip(@m41 Buffer buffer, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        while (j > 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            long j2 = iMin;
            buffer.setSize$okio(buffer.size() - j2);
            j -= j2;
            int i = segment.pos + iMin;
            segment.pos = i;
            if (i == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @m41
    public static final ByteString commonSnapshot(@m41 Buffer buffer) {
        Csuper.m30700throw(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(Csuper.m30690private("size > Int.MAX_VALUE: ", Long.valueOf(buffer.size())).toString());
    }

    @m41
    public static final Segment commonWritableSegment(@m41 Buffer buffer, int i) {
        Csuper.m30700throw(buffer, "<this>");
        if (!(i >= 1 && i <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        Segment segment = buffer.head;
        if (segment != null) {
            Csuper.m30672const(segment);
            Segment segment2 = segment.prev;
            Csuper.m30672const(segment2);
            return (segment2.limit + i > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        buffer.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @m41
    public static final Buffer commonWrite(@m41 Buffer buffer, @m41 ByteString byteString, int i, int i2) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(byteString, "byteString");
        byteString.write$okio(buffer, i, i2);
        return buffer;
    }

    public static /* synthetic */ Buffer commonWrite$default(Buffer buffer, ByteString byteString, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = byteString.size();
        }
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(byteString, "byteString");
        byteString.write$okio(buffer, i, i2);
        return buffer;
    }

    public static final long commonWriteAll(@m41 Buffer buffer, @m41 Source source) throws IOException {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    @m41
    public static final Buffer commonWriteByte(@m41 Buffer buffer, int i) {
        Csuper.m30700throw(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i2 + 1;
        bArr[i2] = (byte) i;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    @m41
    public static final Buffer commonWriteDecimalLong(@m41 Buffer buffer, long j) {
        Csuper.m30700throw(buffer, "<this>");
        if (j == 0) {
            return buffer.writeByte(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr[i2] = getHEX_DIGIT_BYTES()[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i2 - 1] = (byte) 45;
        }
        segmentWritableSegment$okio.limit += i;
        buffer.setSize$okio(buffer.size() + i);
        return buffer;
    }

    @m41
    public static final Buffer commonWriteHexadecimalUnsignedLong(@m41 Buffer buffer, long j) {
        Csuper.m30700throw(buffer, "<this>");
        if (j == 0) {
            return buffer.writeByte(48);
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = getHEX_DIGIT_BYTES()[(int) (15 & j)];
            j >>>= 4;
        }
        segmentWritableSegment$okio.limit += i;
        buffer.setSize$okio(buffer.size() + i);
        return buffer;
    }

    @m41
    public static final Buffer commonWriteInt(@m41 Buffer buffer, int i) {
        Csuper.m30700throw(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        segmentWritableSegment$okio.limit = i5 + 1;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    @m41
    public static final Buffer commonWriteLong(@m41 Buffer buffer, long j) {
        Csuper.m30700throw(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        segmentWritableSegment$okio.limit = i8 + 1;
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    @m41
    public static final Buffer commonWriteShort(@m41 Buffer buffer, int i) {
        Csuper.m30700throw(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        segmentWritableSegment$okio.limit = i3 + 1;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    @m41
    public static final Buffer commonWriteUtf8(@m41 Buffer buffer, @m41 String string, int i, int i2) {
        char cCharAt;
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(string, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        while (i < i2) {
            char cCharAt2 = string.charAt(i);
            if (cCharAt2 < 128) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                byte[] bArr = segmentWritableSegment$okio.data;
                int i3 = segmentWritableSegment$okio.limit - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = string.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = segmentWritableSegment$okio.limit;
                int i6 = (i3 + i) - i5;
                segmentWritableSegment$okio.limit = i5 + i6;
                buffer.setSize$okio(buffer.size() + i6);
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(2);
                    byte[] bArr2 = segmentWritableSegment$okio2.data;
                    int i7 = segmentWritableSegment$okio2.limit;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio2.limit = i7 + 2;
                    buffer.setSize$okio(buffer.size() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(3);
                    byte[] bArr3 = segmentWritableSegment$okio3.data;
                    int i8 = segmentWritableSegment$okio3.limit;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio3.limit = i8 + 3;
                    buffer.setSize$okio(buffer.size() + 3);
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? string.charAt(i9) : (char) 0;
                    if (cCharAt2 <= 56319) {
                        if (56320 <= cCharAt3 && cCharAt3 <= 57343) {
                            int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            Segment segmentWritableSegment$okio4 = buffer.writableSegment$okio(4);
                            byte[] bArr4 = segmentWritableSegment$okio4.data;
                            int i11 = segmentWritableSegment$okio4.limit;
                            bArr4[i11] = (byte) ((i10 >> 18) | MountainSceneView.f20267finally);
                            bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                            bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                            bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                            segmentWritableSegment$okio4.limit = i11 + 4;
                            buffer.setSize$okio(buffer.size() + 4);
                            i += 2;
                        }
                    }
                    buffer.writeByte(63);
                    i = i9;
                }
                i++;
            }
        }
        return buffer;
    }

    @m41
    public static final Buffer commonWriteUtf8CodePoint(@m41 Buffer buffer, int i) {
        Csuper.m30700throw(buffer, "<this>");
        if (i < 128) {
            buffer.writeByte(i);
        } else if (i < 2048) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i2 = segmentWritableSegment$okio.limit;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            segmentWritableSegment$okio.limit = i2 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else {
            boolean z = false;
            if (55296 <= i && i <= 57343) {
                z = true;
            }
            if (z) {
                buffer.writeByte(63);
            } else if (i < 65536) {
                Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(3);
                byte[] bArr2 = segmentWritableSegment$okio2.data;
                int i3 = segmentWritableSegment$okio2.limit;
                bArr2[i3] = (byte) ((i >> 12) | 224);
                bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
                bArr2[i3 + 2] = (byte) ((i & 63) | 128);
                segmentWritableSegment$okio2.limit = i3 + 3;
                buffer.setSize$okio(buffer.size() + 3);
            } else {
                if (i > 1114111) {
                    throw new IllegalArgumentException(Csuper.m30690private("Unexpected code point: 0x", _UtilKt.toHexString(i)));
                }
                Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(4);
                byte[] bArr3 = segmentWritableSegment$okio3.data;
                int i4 = segmentWritableSegment$okio3.limit;
                bArr3[i4] = (byte) ((i >> 18) | MountainSceneView.f20267finally);
                bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
                bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
                bArr3[i4 + 3] = (byte) ((i & 63) | 128);
                segmentWritableSegment$okio3.limit = i4 + 4;
                buffer.setSize$okio(buffer.size() + 4);
            }
        }
        return buffer;
    }

    @m41
    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final boolean rangeEquals(@m41 Segment segment, int i, @m41 byte[] bytes, int i2, int i3) {
        Csuper.m30700throw(segment, "segment");
        Csuper.m30700throw(bytes, "bytes");
        int i4 = segment.limit;
        byte[] bArr = segment.data;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.next;
                Csuper.m30672const(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i = segment.pos;
                i4 = segment.limit;
            }
            if (bArr[i] != bytes[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @m41
    public static final String readUtf8Line(@m41 Buffer buffer, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (j > 0) {
            long j2 = j - 1;
            if (buffer.getByte(j2) == ((byte) 13)) {
                String utf8 = buffer.readUtf8(j2);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf82 = buffer.readUtf8(j);
        buffer.skip(1L);
        return utf82;
    }

    public static final <T> T seek(@m41 Buffer buffer, long j, @m41 Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return lambda.invoke(null, -1L);
        }
        if (buffer.size() - j < j) {
            long size = buffer.size();
            while (size > j) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size -= segment.limit - segment.pos;
            }
            return lambda.invoke(segment, Long.valueOf(size));
        }
        long j2 = 0;
        while (true) {
            long j3 = (segment.limit - segment.pos) + j2;
            if (j3 > j) {
                return lambda.invoke(segment, Long.valueOf(j2));
            }
            segment = segment.next;
            Csuper.m30672const(segment);
            j2 = j3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        if (r19 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int selectPrefix(@m41 Buffer buffer, @m41 Options options, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        Segment segment;
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 != null) {
            byte[] bArr = segment2.data;
            int i5 = segment2.pos;
            int i6 = segment2.limit;
            int[] trie$okio = options.getTrie$okio();
            Segment segment3 = segment2;
            int i7 = 0;
            int i8 = -1;
            loop0: while (true) {
                int i9 = i7 + 1;
                int i10 = trie$okio[i7];
                int i11 = i9 + 1;
                int i12 = trie$okio[i9];
                if (i12 != -1) {
                    i8 = i12;
                }
                if (segment3 == null) {
                    break;
                }
                if (i10 >= 0) {
                    i = i5 + 1;
                    int i13 = bArr[i5] & 255;
                    int i14 = i11 + i10;
                    while (i11 != i14) {
                        if (i13 == trie$okio[i11]) {
                            i2 = trie$okio[i11 + i10];
                            if (i == i6) {
                                segment3 = segment3.next;
                                Csuper.m30672const(segment3);
                                i = segment3.pos;
                                bArr = segment3.data;
                                i6 = segment3.limit;
                                if (segment3 == segment2) {
                                    segment3 = null;
                                }
                            }
                        } else {
                            i11++;
                        }
                    }
                    return i8;
                }
                int i15 = i11 + (i10 * (-1));
                while (true) {
                    int i16 = i5 + 1;
                    int i17 = i11 + 1;
                    if ((bArr[i5] & 255) != trie$okio[i11]) {
                        return i8;
                    }
                    boolean z2 = i17 == i15;
                    if (i16 == i6) {
                        Csuper.m30672const(segment3);
                        Segment segment4 = segment3.next;
                        Csuper.m30672const(segment4);
                        i4 = segment4.pos;
                        byte[] bArr2 = segment4.data;
                        i3 = segment4.limit;
                        if (segment4 != segment2) {
                            segment = segment4;
                            bArr = bArr2;
                        } else {
                            if (!z2) {
                                break loop0;
                            }
                            bArr = bArr2;
                            segment = null;
                        }
                    } else {
                        Segment segment5 = segment3;
                        i3 = i6;
                        i4 = i16;
                        segment = segment5;
                    }
                    if (z2) {
                        i2 = trie$okio[i17];
                        i = i4;
                        i6 = i3;
                        segment3 = segment;
                        break;
                    }
                    i5 = i4;
                    i6 = i3;
                    i11 = i17;
                    segment3 = segment;
                }
                if (i2 >= 0) {
                    return i2;
                }
                i7 = -i2;
                i5 = i;
            }
        } else {
            return z ? -2 : -1;
        }
    }

    public static /* synthetic */ int selectPrefix$default(Buffer buffer, Options options, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return selectPrefix(buffer, options, z);
    }

    public static final int commonRead(@m41 Buffer buffer, @m41 byte[] sink, int i, int i2) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i, i2);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i2, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i3 = segment.pos;
        Ccatch.j0(bArr, sink, i, i3, i3 + iMin);
        segment.pos += iMin;
        buffer.setSize$okio(buffer.size() - iMin);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @m41
    public static final byte[] commonReadByteArray(@m41 Buffer buffer, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount: ", Long.valueOf(j)).toString());
        }
        if (buffer.size() < j) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j];
        buffer.readFully(bArr);
        return bArr;
    }

    @m41
    public static final ByteString commonReadByteString(@m41 Buffer buffer, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount: ", Long.valueOf(j)).toString());
        }
        if (buffer.size() < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new ByteString(buffer.readByteArray(j));
        }
        ByteString byteStringSnapshot = buffer.snapshot((int) j);
        buffer.skip(j);
        return byteStringSnapshot;
    }

    @m41
    public static final Buffer commonWrite(@m41 Buffer buffer, @m41 byte[] source) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(source, "source");
        return buffer.write(source, 0, source.length);
    }

    @m41
    public static final Buffer commonWrite(@m41 Buffer buffer, @m41 byte[] source, int i, int i2) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(source, "source");
        long j = i2;
        _UtilKt.checkOffsetAndCount(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            int iMin = Math.min(i3 - i, 8192 - segmentWritableSegment$okio.limit);
            int i4 = i + iMin;
            Ccatch.j0(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, i, i4);
            segmentWritableSegment$okio.limit += iMin;
            i = i4;
        }
        buffer.setSize$okio(buffer.size() + j);
        return buffer;
    }

    public static final void commonReadFully(@m41 Buffer buffer, @m41 Buffer sink, long j) throws EOFException {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(sink, "sink");
        if (buffer.size() >= j) {
            sink.write(buffer, j);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    @m41
    public static final ByteString commonSnapshot(@m41 Buffer buffer, int i) {
        Csuper.m30700throw(buffer, "<this>");
        if (i == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(buffer.size(), 0L, i);
        Segment segment = buffer.head;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Csuper.m30672const(segment);
            int i5 = segment.limit;
            int i6 = segment.pos;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = buffer.head;
        int i7 = 0;
        while (i2 < i) {
            Csuper.m30672const(segment2);
            bArr[i7] = segment2.data;
            i2 += segment2.limit - segment2.pos;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = segment2.pos;
            segment2.shared = true;
            i7++;
            segment2 = segment2.next;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    @m41
    public static final Buffer commonWrite(@m41 Buffer buffer, @m41 Source source, long j) throws IOException {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(source, "source");
        while (j > 0) {
            long j2 = source.read(buffer, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
        }
        return buffer;
    }

    public static final long commonRead(@m41 Buffer buffer, @m41 Buffer sink, long j) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (buffer.size() == 0) {
            return -1L;
        }
        if (j > buffer.size()) {
            j = buffer.size();
        }
        sink.write(buffer, j);
        return j;
    }

    public static final void commonWrite(@m41 Buffer buffer, @m41 Buffer source, long j) {
        Segment segment;
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(source, "source");
        if (source != buffer) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j);
            while (j > 0) {
                Segment segment2 = source.head;
                Csuper.m30672const(segment2);
                int i = segment2.limit;
                Csuper.m30672const(source.head);
                if (j < i - r2.pos) {
                    Segment segment3 = buffer.head;
                    if (segment3 != null) {
                        Csuper.m30672const(segment3);
                        segment = segment3.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((segment.limit + j) - (segment.shared ? 0 : segment.pos) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment4 = source.head;
                            Csuper.m30672const(segment4);
                            segment4.writeTo(segment, (int) j);
                            source.setSize$okio(source.size() - j);
                            buffer.setSize$okio(buffer.size() + j);
                            return;
                        }
                    }
                    Segment segment5 = source.head;
                    Csuper.m30672const(segment5);
                    source.head = segment5.split((int) j);
                }
                Segment segment6 = source.head;
                Csuper.m30672const(segment6);
                long j2 = segment6.limit - segment6.pos;
                source.head = segment6.pop();
                Segment segment7 = buffer.head;
                if (segment7 == null) {
                    buffer.head = segment6;
                    segment6.prev = segment6;
                    segment6.next = segment6;
                } else {
                    Csuper.m30672const(segment7);
                    Segment segment8 = segment7.prev;
                    Csuper.m30672const(segment8);
                    segment8.push(segment6).compact();
                }
                source.setSize$okio(source.size() - j2);
                buffer.setSize$okio(buffer.size() + j2);
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public static final long commonIndexOf(@m41 Buffer buffer, @m41 ByteString bytes, long j) {
        Csuper.m30700throw(buffer, "<this>");
        Csuper.m30700throw(bytes, "bytes");
        if (!(bytes.size() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j2 = 0;
        if (j >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j < j) {
                long size = buffer.size();
                while (size > j) {
                    segment = segment.prev;
                    Csuper.m30672const(segment);
                    size -= segment.limit - segment.pos;
                }
                byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                byte b = bArrInternalArray$okio[0];
                int size2 = bytes.size();
                long size3 = (buffer.size() - size2) + 1;
                long j3 = size;
                Segment segment2 = segment;
                long j4 = j;
                while (j3 < size3) {
                    byte[] bArr = segment2.data;
                    Segment segment3 = segment2;
                    int iMin = (int) Math.min(segment2.limit, (segment2.pos + size3) - j3);
                    int i = (int) ((segment3.pos + j4) - j3);
                    if (i < iMin) {
                        while (true) {
                            int i2 = i + 1;
                            if (bArr[i] == b && rangeEquals(segment3, i2, bArrInternalArray$okio, 1, size2)) {
                                return (i - segment3.pos) + j3;
                            }
                            if (i2 >= iMin) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    j3 += segment3.limit - segment3.pos;
                    segment2 = segment3.next;
                    Csuper.m30672const(segment2);
                    j4 = j3;
                }
                return -1L;
            }
            while (true) {
                long j5 = (segment.limit - segment.pos) + j2;
                if (j5 > j) {
                    break;
                }
                segment = segment.next;
                Csuper.m30672const(segment);
                j2 = j5;
            }
            byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
            byte b2 = bArrInternalArray$okio2[0];
            int size4 = bytes.size();
            long size5 = (buffer.size() - size4) + 1;
            long j6 = j2;
            Segment segment4 = segment;
            long j7 = j;
            while (j6 < size5) {
                byte[] bArr2 = segment4.data;
                long j8 = size5;
                int iMin2 = (int) Math.min(segment4.limit, (segment4.pos + size5) - j6);
                int i3 = (int) ((segment4.pos + j7) - j6);
                if (i3 < iMin2) {
                    while (true) {
                        int i4 = i3 + 1;
                        if (bArr2[i3] == b2 && rangeEquals(segment4, i4, bArrInternalArray$okio2, 1, size4)) {
                            return (i3 - segment4.pos) + j6;
                        }
                        if (i4 >= iMin2) {
                            break;
                        }
                        i3 = i4;
                    }
                }
                j6 += segment4.limit - segment4.pos;
                segment4 = segment4.next;
                Csuper.m30672const(segment4);
                size5 = j8;
                j7 = j6;
            }
            return -1L;
        }
        throw new IllegalArgumentException(Csuper.m30690private("fromIndex < 0: ", Long.valueOf(j)).toString());
    }
}
