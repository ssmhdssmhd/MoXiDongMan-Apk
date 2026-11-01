package okio;

import android.support.v4.al;
import android.support.v4.an1;
import android.support.v4.ca2;
import android.support.v4.m41;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.qy0;
import android.support.v4.t3;
import android.support.v4.tp0;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import com.umeng.analytics.pro.ak;
import freemarker.ext.servlet.FreemarkerServlet;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.internal.Csuper;
import okhttp3.internal.connection.RealConnection;
import okio.internal._BufferKt;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0095\u0001B\t¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J \u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u0000H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0000H\u0016J\b\u0010\u0017\u001a\u00020\u0000H\u0016J\b\u0010\u0018\u001a\u00020\tH\u0016J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u001b\u001a\u00020\u0001H\u0016J\b\u0010\u001c\u001a\u00020\u0005H\u0016J$\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00142\b\b\u0002\u0010\u001e\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0007J \u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u0007J\u001a\u0010 \u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00142\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\f\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010!\u001a\u00020\u0007J\b\u0010#\u001a\u00020\"H\u0016J\u0018\u0010'\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b%\u0010&J\b\u0010)\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020*H\u0016J\b\u0010,\u001a\u00020\u0007H\u0016J\b\u0010-\u001a\u00020(H\u0016J\b\u0010.\u001a\u00020*H\u0016J\b\u0010/\u001a\u00020\u0007H\u0016J\b\u00100\u001a\u00020\u0007H\u0016J\b\u00101\u001a\u00020\u0007H\u0016J\b\u00102\u001a\u00020\u000fH\u0016J\u0010\u00102\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u00105\u001a\u00020*2\u0006\u00104\u001a\u000203H\u0016J\u0018\u00107\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u00109\u001a\u00020\u00072\u0006\u00106\u001a\u000208H\u0016J\b\u0010:\u001a\u00020\rH\u0016J\u0010\u0010:\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010=\u001a\u00020\r2\u0006\u0010<\u001a\u00020;H\u0016J\u0018\u0010=\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010<\u001a\u00020;H\u0016J\n\u0010>\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010?\u001a\u00020\rH\u0016J\u0010\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\u0007H\u0016J\b\u0010A\u001a\u00020*H\u0016J\b\u0010C\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020B2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010D\u001a\u00020*2\u0006\u00106\u001a\u00020BH\u0016J\u0010\u00107\u001a\u00020\u000b2\u0006\u00106\u001a\u00020BH\u0016J \u0010D\u001a\u00020*2\u0006\u00106\u001a\u00020B2\u0006\u0010\u001e\u001a\u00020*2\u0006\u0010\b\u001a\u00020*H\u0016J\u0010\u0010D\u001a\u00020*2\u0006\u00106\u001a\u00020EH\u0016J\u0006\u0010F\u001a\u00020\u000bJ\u0010\u0010G\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u000fH\u0016J \u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020*2\u0006\u0010\b\u001a\u00020*H\u0016J\u0010\u0010K\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\rH\u0016J \u0010K\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\r2\u0006\u0010L\u001a\u00020*2\u0006\u0010M\u001a\u00020*H\u0016J\u0010\u0010O\u001a\u00020\u00002\u0006\u0010N\u001a\u00020*H\u0016J\u0018\u0010P\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\r2\u0006\u0010<\u001a\u00020;H\u0016J(\u0010P\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\r2\u0006\u0010L\u001a\u00020*2\u0006\u0010M\u001a\u00020*2\u0006\u0010<\u001a\u00020;H\u0016J\u0010\u0010I\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020BH\u0016J \u0010I\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020B2\u0006\u0010\u001e\u001a\u00020*2\u0006\u0010\b\u001a\u00020*H\u0016J\u0010\u0010I\u001a\u00020*2\u0006\u0010Q\u001a\u00020EH\u0016J\u0010\u0010S\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020RH\u0016J\u0018\u0010I\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020R2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010T\u001a\u00020*H\u0016J\u0010\u0010W\u001a\u00020\u00002\u0006\u0010V\u001a\u00020*H\u0016J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010V\u001a\u00020*H\u0016J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020*H\u0016J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020*H\u0016J\u0010\u0010]\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u0007H\u0016J\u0010\u0010^\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u0007H\u0016J\u0010\u0010_\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u0007H\u0016J\u0010\u0010`\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u0007H\u0016J\u0017\u0010e\u001a\u00020b2\u0006\u0010a\u001a\u00020*H\u0000¢\u0006\u0004\bc\u0010dJ\u0018\u0010I\u001a\u00020\u000b2\u0006\u0010Q\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0018\u0010D\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010f\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\"H\u0016J\u0018\u0010f\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\"2\u0006\u0010g\u001a\u00020\u0007H\u0016J \u0010f\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\"2\u0006\u0010g\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\u0007H\u0016J\u0010\u0010f\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u000fH\u0016J\u0018\u0010f\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020\u0007H\u0016J\u0010\u0010k\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u000fH\u0016J\u0018\u0010k\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020\u0007H\u0016J\u0018\u0010l\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u000fH\u0016J(\u0010l\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020*2\u0006\u0010\b\u001a\u00020*H\u0016J\b\u0010n\u001a\u00020\u000bH\u0016J\b\u0010o\u001a\u00020\tH\u0016J\b\u0010p\u001a\u00020\u000bH\u0016J\b\u0010r\u001a\u00020qH\u0016J\u0006\u0010s\u001a\u00020\u000fJ\u0006\u0010t\u001a\u00020\u000fJ\u0006\u0010u\u001a\u00020\u000fJ\u0006\u0010v\u001a\u00020\u000fJ\u000e\u0010w\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fJ\u000e\u0010x\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fJ\u000e\u0010y\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fJ\u0013\u0010|\u001a\u00020\t2\b\u0010{\u001a\u0004\u0018\u00010zH\u0096\u0002J\b\u0010}\u001a\u00020*H\u0016J\b\u0010~\u001a\u00020\rH\u0016J\u0006\u0010\u007f\u001a\u00020\u0000J\t\u0010\u0080\u0001\u001a\u00020\u0000H\u0016J\u0007\u0010\u0081\u0001\u001a\u00020\u000fJ\u000f\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020*J\u0016\u0010\u0084\u0001\u001a\u00030\u0082\u00012\n\b\u0002\u0010\u0083\u0001\u001a\u00030\u0082\u0001H\u0007J\u0016\u0010\u0085\u0001\u001a\u00030\u0082\u00012\n\b\u0002\u0010\u0083\u0001\u001a\u00030\u0082\u0001H\u0007J\u0019\u0010%\u001a\u00020\"2\u0007\u0010\u0086\u0001\u001a\u00020\u0007H\u0007¢\u0006\u0005\b\u0087\u0001\u0010&J\u0012\u0010\u008a\u0001\u001a\u00020\u0007H\u0007¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010b8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R2\u0010\u008a\u0001\u001a\u00020\u00072\u0007\u0010\u008d\u0001\u001a\u00020\u00078G@@X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u008e\u0001\u001a\u0006\b\u008a\u0001\u0010\u0089\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0018\u0010\u0013\u001a\u00020\u00008V@\u0016X\u0096\u0004¢\u0006\b\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001¨\u0006\u0096\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "Ljava/io/InputStream;", "input", "", "byteCount", "", "forever", "Landroid/support/v4/ub2;", "readFrom", "", "algorithm", "Lokio/ByteString;", "digest", "key", "hmac", "buffer", "Ljava/io/OutputStream;", "outputStream", "emitCompleteSegments", "emit", "exhausted", "require", "request", "peek", "inputStream", "out", TypedValues.Cycle.S_WAVE_OFFSET, "copyTo", "writeTo", "completeSegmentByteCount", "", "readByte", "pos", "getByte", "(J)B", "get", "", "readShort", "", "readInt", "readLong", "readShortLe", "readIntLe", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "readByteString", "Lokio/Options;", "options", "select", "sink", "readFully", "Lokio/Sink;", "readAll", "readUtf8", "Ljava/nio/charset/Charset;", "charset", "readString", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "", "readByteArray", "read", "Ljava/nio/ByteBuffer;", FreemarkerServlet.r, "skip", "byteString", "write", TypedValues.Custom.S_STRING, "writeUtf8", "beginIndex", "endIndex", "codePoint", "writeUtf8CodePoint", "writeString", "source", "Lokio/Source;", "writeAll", "b", "writeByte", ak.aB, "writeShort", "writeShortLe", ak.aC, "writeInt", "writeIntLe", "v", "writeLong", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "minimumCapacity", "Lokio/Segment;", "writableSegment$okio", "(I)Lokio/Segment;", "writableSegment", "indexOf", "fromIndex", "toIndex", "bytes", "targetBytes", "indexOfElement", "rangeEquals", "bytesOffset", "flush", "isOpen", "close", "Lokio/Timeout;", "timeout", "md5", "sha1", "sha256", "sha512", "hmacSha1", "hmacSha256", "hmacSha512", "", "other", "equals", "hashCode", "toString", "copy", "clone", "snapshot", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readUnsafe", "readAndWriteUnsafe", "index", "-deprecated_getByte", "-deprecated_size", "()J", "size", "head", "Lokio/Segment;", "<set-?>", "J", "setSize$okio", "(J)V", "getBuffer", "()Lokio/Buffer;", "<init>", "()V", "UnsafeCursor", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    @tp0
    @z41
    public Segment head;
    private long size;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001aR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010\u001f¨\u0006#"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "", ES6Iterator.NEXT_METHOD, "", TypedValues.Cycle.S_WAVE_OFFSET, "seek", "newSize", "resizeBuffer", "minByteCount", "expandBuffer", "Landroid/support/v4/ub2;", "close", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "", "readWrite", "Z", "Lokio/Segment;", "segment", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "J", "", "data", "[B", "start", OptRuntime.GeneratorState.resumptionPoint_TYPE, "end", "<init>", "()V", "okio"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes3.dex */
    public static final class UnsafeCursor implements Closeable {

        @tp0
        @z41
        public Buffer buffer;

        @tp0
        @z41
        public byte[] data;

        @tp0
        public boolean readWrite;

        @z41
        private Segment segment;

        @tp0
        public long offset = -1;

        @tp0
        public int start = -1;

        @tp0
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!(this.buffer != null)) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int i) {
            if (!(i > 0)) {
                throw new IllegalArgumentException(Csuper.m30690private("minByteCount <= 0: ", Integer.valueOf(i)).toString());
            }
            if (!(i <= 8192)) {
                throw new IllegalArgumentException(Csuper.m30690private("minByteCount > Segment.SIZE: ", Integer.valueOf(i)).toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
            }
            long size = buffer.size();
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i);
            int i2 = 8192 - segmentWritableSegment$okio.limit;
            segmentWritableSegment$okio.limit = 8192;
            long j = i2;
            buffer.setSize$okio(size + j);
            setSegment$okio(segmentWritableSegment$okio);
            this.offset = size;
            this.data = segmentWritableSegment$okio.data;
            this.start = 8192 - i2;
            this.end = 8192;
            return j;
        }

        @z41
        public final Segment getSegment$okio() {
            return this.segment;
        }

        public final int next() {
            long j = this.offset;
            Buffer buffer = this.buffer;
            Csuper.m30672const(buffer);
            if (!(j != buffer.size())) {
                throw new IllegalStateException("no more bytes".toString());
            }
            long j2 = this.offset;
            return seek(j2 == -1 ? 0L : j2 + (this.end - this.start));
        }

        public final long resizeBuffer(long j) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.readWrite) {
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
                setSegment$okio(null);
                this.offset = j;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (j > size) {
                long j4 = j - size;
                boolean z = true;
                while (j4 > 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i);
                    int iMin = (int) Math.min(j4, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j4 -= iMin;
                    if (z) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i3 = segmentWritableSegment$okio.limit;
                        this.start = i3 - iMin;
                        this.end = i3;
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

        public final int seek(long j) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (j < -1 || j > buffer.size()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + j + " > size=" + buffer.size());
            }
            if (j == -1 || j == buffer.size()) {
                setSegment$okio(null);
                this.offset = j;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long j2 = 0;
            long size = buffer.size();
            Segment segment$okio = buffer.head;
            if (getSegment$okio() != null) {
                long j3 = this.offset;
                int i = this.start;
                Csuper.m30672const(getSegment$okio());
                long j4 = j3 - (i - r12.pos);
                if (j4 > j) {
                    segment$okio = getSegment$okio();
                    size = j4;
                    segmentPush = segment$okio;
                } else {
                    segmentPush = getSegment$okio();
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
            if (this.readWrite) {
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
            setSegment$okio(segmentPush);
            this.offset = j;
            Csuper.m30672const(segmentPush);
            this.data = segmentPush.data;
            int i4 = segmentPush.pos + ((int) (j - j2));
            this.start = i4;
            int i5 = segmentPush.limit;
            this.end = i5;
            return i5 - i4;
        }

        public final void setSegment$okio(@z41 Segment segment) {
            this.segment = segment;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j, long j2, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = buffer.size - j3;
        }
        return buffer.copyTo(outputStream, j3, j2);
    }

    private final ByteString digest(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i = segment.pos;
            messageDigest.update(bArr, i, segment.limit - i);
            Segment segment2 = segment.next;
            Csuper.m30672const(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i2 = segment2.pos;
                messageDigest.update(bArr2, i2, segment2.limit - i2);
                segment2 = segment2.next;
                Csuper.m30672const(segment2);
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        Csuper.m30696super(bArrDigest, "messageDigest.digest()");
        return new ByteString(bArrDigest);
    }

    private final ByteString hmac(String str, ByteString byteString) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i = segment.pos;
                mac.update(bArr, i, segment.limit - i);
                Segment segment2 = segment.next;
                Csuper.m30672const(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i2 = segment2.pos;
                    mac.update(bArr2, i2, segment2.limit - i2);
                    segment2 = segment2.next;
                    Csuper.m30672const(segment2);
                }
            }
            byte[] bArrDoFinal = mac.doFinal();
            Csuper.m30696super(bArrDoFinal, "mac.doFinal()");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            j = buffer.size;
        }
        return buffer.writeTo(outputStream, j);
    }

    @wp0(name = "-deprecated_getByte")
    @Cfor(level = Ctry.ERROR, message = "moved to operator function", replaceWith = @an1(expression = "this[index]", imports = {}))
    public final byte a(long j) {
        return getByte(j);
    }

    @wp0(name = "-deprecated_size")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "size", imports = {}))
    public final long b() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @m41
    public Buffer buffer() {
        return this;
    }

    public final void clear() throws EOFException {
        skip(size());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        Csuper.m30672const(segment);
        Segment segment2 = segment.prev;
        Csuper.m30672const(segment2);
        if (segment2.limit < 8192 && segment2.owner) {
            size -= r3 - segment2.pos;
        }
        return size;
    }

    @m41
    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            Csuper.m30672const(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            buffer.head = segmentSharedCopy;
            segmentSharedCopy.prev = segmentSharedCopy;
            segmentSharedCopy.next = segmentSharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = segmentSharedCopy.prev;
                Csuper.m30672const(segment3);
                Csuper.m30672const(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    @m41
    @xp0
    public final Buffer copyTo(@m41 OutputStream out) throws IOException {
        Csuper.m30700throw(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @m41
    @xp0
    public final Buffer copyTo(@m41 OutputStream out, long j) throws IOException {
        Csuper.m30700throw(out, "out");
        return copyTo$default(this, out, j, 0L, 4, (Object) null);
    }

    @m41
    @xp0
    public final Buffer copyTo(@m41 OutputStream out, long j, long j2) throws IOException {
        Csuper.m30700throw(out, "out");
        _UtilKt.checkOffsetAndCount(this.size, j, j2);
        if (j2 == 0) {
            return this;
        }
        Segment segment = this.head;
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
            int iMin = (int) Math.min(segment.limit - r10, j2);
            out.write(segment.data, (int) (segment.pos + j), iMin);
            j2 -= iMin;
            segment = segment.next;
            j = 0;
        }
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(@z41 Object obj) {
        if (this != obj) {
            if (!(obj instanceof Buffer)) {
                return false;
            }
            Buffer buffer = (Buffer) obj;
            if (size() != buffer.size()) {
                return false;
            }
            if (size() != 0) {
                Segment segment = this.head;
                Csuper.m30672const(segment);
                Segment segment2 = buffer.head;
                Csuper.m30672const(segment2);
                int i = segment.pos;
                int i2 = segment2.pos;
                long j = 0;
                while (j < size()) {
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
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @m41
    public Buffer getBuffer() {
        return this;
    }

    @wp0(name = "getByte")
    public final byte getByte(long j) {
        _UtilKt.checkOffsetAndCount(size(), j, 1L);
        Segment segment = this.head;
        if (segment == null) {
            Csuper.m30672const(null);
            throw null;
        }
        if (size() - j < j) {
            long size = size();
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

    public int hashCode() {
        Segment segment = this.head;
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
        } while (segment != this.head);
        return i;
    }

    @m41
    public final ByteString hmacSha1(@m41 ByteString key) {
        Csuper.m30700throw(key, "key");
        return hmac("HmacSHA1", key);
    }

    @m41
    public final ByteString hmacSha256(@m41 ByteString key) {
        Csuper.m30700throw(key, "key");
        return hmac("HmacSHA256", key);
    }

    @m41
    public final ByteString hmacSha512(@m41 ByteString key) {
        Csuper.m30700throw(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@m41 ByteString targetBytes) {
        Csuper.m30700throw(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    @m41
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer.inputStream.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            @m41
            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@m41 byte[] sink, int i, int i2) {
                Csuper.m30700throw(sink, "sink");
                return Buffer.this.read(sink, i, i2);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @m41
    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    @m41
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.outputStream.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @m41
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                Buffer.this.writeByte(i);
            }

            @Override // java.io.OutputStream
            public void write(@m41 byte[] data, int i, int i2) {
                Csuper.m30700throw(data, "data");
                Buffer.this.write(data, i, i2);
            }
        };
    }

    @Override // okio.BufferedSource
    @m41
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, @m41 ByteString bytes) {
        Csuper.m30700throw(bytes, "bytes");
        return rangeEquals(j, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@m41 ByteBuffer sink) throws IOException {
        Csuper.m30700throw(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, iMin);
        int i = segment.pos + iMin;
        segment.pos = i;
        this.size -= iMin;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override // okio.BufferedSource
    public long readAll(@m41 Sink sink) throws IOException {
        Csuper.m30700throw(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @m41
    @xp0
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @m41
    @xp0
    public final UnsafeCursor readAndWriteUnsafe(@m41 UnsafeCursor unsafeCursor) {
        Csuper.m30700throw(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b = segment.data[i];
        setSize$okio(size() - 1);
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i3;
        }
        return b;
    }

    @Override // okio.BufferedSource
    @m41
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    @m41
    public ByteString readByteString() {
        return readByteString(size());
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        long j = -7;
        int i = 0;
        long j2 = 0;
        boolean z = false;
        boolean z2 = false;
        do {
            Segment segment = this.head;
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
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i2;
            }
            if (z2) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - i);
        if (i >= (z ? 2 : 1)) {
            return z ? j2 : -j2;
        }
        if (size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + _UtilKt.toHexString(getByte(0L)));
    }

    @m41
    public final Buffer readFrom(@m41 InputStream input) throws IOException {
        Csuper.m30700throw(input, "input");
        readFrom(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(@m41 Buffer sink, long j) throws EOFException {
        Csuper.m30700throw(sink, "sink");
        if (size() >= j) {
            sink.write(this, j);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0098 A[EDGE_INSN: B:44:0x0098->B:37:0x0098 BREAK  A[LOOP:0: B:5:0x000d->B:46:?], SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readHexadecimalUnsignedLong() throws EOFException {
        int i;
        if (size() == 0) {
            throw new EOFException();
        }
        int i2 = 0;
        long j = 0;
        boolean z = false;
        do {
            Segment segment = this.head;
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
                            this.head = segment.pop();
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
        } while (this.head != null);
        setSize$okio(size() - i2);
        return j;
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (size() < 4) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        setSize$okio(size() - 4);
        if (i8 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i8;
        }
        return i9;
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return _UtilKt.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (size() < 8) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
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
        setSize$okio(size() - 8);
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return j8;
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return _UtilKt.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (size() < 2) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        setSize$okio(size() - 2);
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i4;
        }
        return (short) i5;
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return _UtilKt.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    @m41
    public String readString(@m41 Charset charset) {
        Csuper.m30700throw(charset, "charset");
        return readString(this.size, charset);
    }

    @m41
    @xp0
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @m41
    @xp0
    public final UnsafeCursor readUnsafe(@m41 UnsafeCursor unsafeCursor) {
        Csuper.m30700throw(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @m41
    public String readUtf8() {
        return readString(this.size, al.f191do);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (size() == 0) {
            throw new EOFException();
        }
        byte b = getByte(0L);
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
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i = b & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (size() < j) {
            throw new EOFException("size < " + i2 + ": " + size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b) + ')');
        }
        if (1 < i2) {
            int i4 = 1;
            while (true) {
                int i5 = i4 + 1;
                long j2 = i4;
                byte b2 = getByte(j2);
                if ((b2 & 192) != 128) {
                    skip(j2);
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                i = (i << 6) | (b2 & Utf8.REPLACEMENT_BYTE);
                if (i5 >= i2) {
                    break;
                }
                i4 = i5;
            }
        }
        skip(j);
        if (i > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        if (55296 <= i && i <= 57343) {
            z = true;
        }
        return (!z && i >= i3) ? i : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Override // okio.BufferedSource
    @z41
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this, jIndexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @m41
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.size >= j;
    }

    @Override // okio.BufferedSource
    public void require(long j) throws EOFException {
        if (this.size < j) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(@m41 Options options) throws EOFException {
        Csuper.m30700throw(options, "options");
        int iSelectPrefix$default = _BufferKt.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings$okio()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public final void setSize$okio(long j) {
        this.size = j;
    }

    @m41
    public final ByteString sha1() {
        return digest(qy0.f5539case);
    }

    @m41
    public final ByteString sha256() {
        return digest("SHA-256");
    }

    @m41
    public final ByteString sha512() {
        return digest("SHA-512");
    }

    @wp0(name = "size")
    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long j) throws EOFException {
        while (j > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            long j2 = iMin;
            setSize$okio(size() - j2);
            j -= j2;
            int i = segment.pos + iMin;
            segment.pos = i;
            if (i == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @m41
    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(Csuper.m30690private("size > Int.MAX_VALUE: ", Long.valueOf(size())).toString());
    }

    @Override // okio.Source
    @m41
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @m41
    public String toString() {
        return snapshot().toString();
    }

    @m41
    public final Segment writableSegment$okio(int i) {
        if (!(i >= 1 && i <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        Segment segment = this.head;
        if (segment != null) {
            Csuper.m30672const(segment);
            Segment segment2 = segment.prev;
            Csuper.m30672const(segment2);
            return (segment2.limit + i > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        this.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @Override // okio.BufferedSink
    public long writeAll(@m41 Source source) throws IOException {
        Csuper.m30700throw(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    @m41
    @xp0
    public final Buffer writeTo(@m41 OutputStream out) throws IOException {
        Csuper.m30700throw(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    @m41
    @xp0
    public final Buffer writeTo(@m41 OutputStream out, long j) throws IOException {
        Csuper.m30700throw(out, "out");
        _UtilKt.checkOffsetAndCount(this.size, 0L, j);
        Segment segment = this.head;
        while (j > 0) {
            Csuper.m30672const(segment);
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, iMin);
            int i = segment.pos + iMin;
            segment.pos = i;
            long j2 = iMin;
            this.size -= j2;
            j -= j2;
            if (i == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.copyTo(buffer2, j, j2);
    }

    @m41
    public Buffer clone() {
        return copy();
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@m41 ByteString targetBytes, long j) {
        int i;
        int i2;
        Csuper.m30700throw(targetBytes, "targetBytes");
        long size = 0;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("fromIndex < 0: ", Long.valueOf(j)).toString());
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        if (size() - j < j) {
            size = size();
            while (size > j) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size -= segment.limit - segment.pos;
            }
            if (targetBytes.size() == 2) {
                byte b = targetBytes.getByte(0);
                byte b2 = targetBytes.getByte(1);
                while (size < size()) {
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
                return -1L;
            }
            byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
            while (size < size()) {
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
            while (size < size()) {
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
            return -1L;
        }
        byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
        while (size < size()) {
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
        return -1L;
        return (i - i2) + size;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, @m41 ByteString bytes, int i, int i2) {
        Csuper.m30700throw(bytes, "bytes");
        if (j < 0 || i < 0 || i2 < 0 || size() - j < i2 || bytes.size() - i < i2) {
            return false;
        }
        if (i2 > 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (getByte(i3 + j) != bytes.getByte(i3 + i)) {
                    return false;
                }
                if (i4 >= i2) {
                    break;
                }
                i3 = i4;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    @m41
    public byte[] readByteArray(long j) throws EOFException {
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount: ", Long.valueOf(j)).toString());
        }
        if (size() < j) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    @m41
    public ByteString readByteString(long j) throws EOFException {
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount: ", Long.valueOf(j)).toString());
        }
        if (size() < j) {
            throw new EOFException();
        }
        if (j < 4096) {
            return new ByteString(readByteArray(j));
        }
        ByteString byteStringSnapshot = snapshot((int) j);
        skip(j);
        return byteStringSnapshot;
    }

    @m41
    public final Buffer readFrom(@m41 InputStream input, long j) throws IOException {
        Csuper.m30700throw(input, "input");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        readFrom(input, j, false);
        return this;
    }

    @Override // okio.BufferedSource
    @m41
    public String readString(long j, @m41 Charset charset) throws EOFException {
        Csuper.m30700throw(charset, "charset");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount: ", Long.valueOf(j)).toString());
        }
        if (this.size < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        Segment segment = this.head;
        Csuper.m30672const(segment);
        int i = segment.pos;
        if (i + j > segment.limit) {
            return new String(readByteArray(j), charset);
        }
        int i2 = (int) j;
        String str = new String(segment.data, i, i2, charset);
        int i3 = segment.pos + i2;
        segment.pos = i3;
        this.size -= j;
        if (i3 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    @Override // okio.BufferedSource
    @m41
    public String readUtf8(long j) throws EOFException {
        return readString(j, al.f191do);
    }

    @Override // okio.BufferedSource
    @m41
    public String readUtf8LineStrict(long j) throws EOFException {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("limit < 0: ", Long.valueOf(j)).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        byte b = (byte) 10;
        long jIndexOf = indexOf(b, 0L, j2);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this, jIndexOf);
        }
        if (j2 < size() && getByte(j2 - 1) == ((byte) 13) && getByte(j2) == b) {
            return _BufferKt.readUtf8Line(this, j2);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + buffer.readByteString().hex() + ca2.f672continue);
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeByte(int i) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i2 + 1;
        bArr[i2] = (byte) i;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeDecimalLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return writeUtf8("-9223372036854775808");
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
        Segment segmentWritableSegment$okio = writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr[i2] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i2 - 1] = (byte) 45;
        }
        segmentWritableSegment$okio.limit += i;
        setSize$okio(size() + i);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
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
        Segment segmentWritableSegment$okio = writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (15 & j)];
            j >>>= 4;
        }
        segmentWritableSegment$okio.limit += i;
        setSize$okio(size() + i);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeInt(int i) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
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
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeIntLe(int i) {
        return writeInt(_UtilKt.reverseBytes(i));
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeLong(long j) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
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
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeLongLe(long j) {
        return writeLong(_UtilKt.reverseBytes(j));
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeShort(int i) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        segmentWritableSegment$okio.limit = i3 + 1;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeShortLe(int i) {
        return writeShort((int) _UtilKt.reverseBytes((short) i));
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i2 = segmentWritableSegment$okio.limit;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            segmentWritableSegment$okio.limit = i2 + 2;
            setSize$okio(size() + 2);
        } else {
            boolean z = false;
            if (55296 <= i && i <= 57343) {
                z = true;
            }
            if (z) {
                writeByte(63);
            } else if (i < 65536) {
                Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
                byte[] bArr2 = segmentWritableSegment$okio2.data;
                int i3 = segmentWritableSegment$okio2.limit;
                bArr2[i3] = (byte) ((i >> 12) | 224);
                bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
                bArr2[i3 + 2] = (byte) ((i & 63) | 128);
                segmentWritableSegment$okio2.limit = i3 + 3;
                setSize$okio(size() + 3);
            } else {
                if (i > 1114111) {
                    throw new IllegalArgumentException(Csuper.m30690private("Unexpected code point: 0x", _UtilKt.toHexString(i)));
                }
                Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                byte[] bArr3 = segmentWritableSegment$okio3.data;
                int i4 = segmentWritableSegment$okio3.limit;
                bArr3[i4] = (byte) ((i >> 18) | MountainSceneView.f20267finally);
                bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
                bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
                bArr3[i4 + 3] = (byte) ((i & 63) | 128);
                segmentWritableSegment$okio3.limit = i4 + 4;
                setSize$okio(size() + 4);
            }
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return buffer.copyTo(buffer2, j);
    }

    @Override // okio.BufferedSource
    public long indexOf(@m41 ByteString bytes) throws IOException {
        Csuper.m30700throw(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeString(@m41 String string, @m41 Charset charset) {
        Csuper.m30700throw(string, "string");
        Csuper.m30700throw(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeUtf8(@m41 String string) {
        Csuper.m30700throw(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    private final void readFrom(InputStream inputStream, long j, boolean z) throws IOException {
        while (true) {
            if (j <= 0 && !z) {
                return;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int i = inputStream.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(j, 8192 - segmentWritableSegment$okio.limit));
            if (i == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    this.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (!z) {
                    throw new EOFException();
                }
                return;
            }
            segmentWritableSegment$okio.limit += i;
            long j2 = i;
            this.size += j2;
            j -= j2;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        Segment segment;
        int i;
        long j3 = j;
        long size = j2;
        boolean z = false;
        long size2 = 0;
        if (0 <= j3 && j3 <= size) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + j3 + " toIndex=" + size).toString());
        }
        if (size > size()) {
            size = size();
        }
        long j4 = size;
        if (j3 == j4 || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - j3 < j3) {
            size2 = size();
            while (size2 > j3) {
                segment = segment.prev;
                Csuper.m30672const(segment);
                size2 -= segment.limit - segment.pos;
            }
            while (size2 < j4) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (segment.pos + j4) - size2);
                i = (int) ((segment.pos + j3) - size2);
                while (i < iMin) {
                    if (bArr[i] != b) {
                        i++;
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
            long j5 = (segment.limit - segment.pos) + size2;
            if (j5 > j3) {
                break;
            }
            segment = segment.next;
            Csuper.m30672const(segment);
            size2 = j5;
        }
        while (size2 < j4) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (segment.pos + j4) - size2);
            i = (int) ((segment.pos + j3) - size2);
            while (i < iMin2) {
                if (bArr2[i] != b) {
                    i++;
                }
            }
            size2 += segment.limit - segment.pos;
            segment = segment.next;
            Csuper.m30672const(segment);
            j3 = size2;
        }
        return -1L;
        return (i - segment.pos) + size2;
    }

    @m41
    public final ByteString snapshot(int i) {
        if (i == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(size(), 0L, i);
        Segment segment = this.head;
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
        Segment segment2 = this.head;
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

    @Override // okio.BufferedSink
    @m41
    public Buffer writeUtf8(@m41 String string, int i, int i2) {
        char cCharAt;
        Csuper.m30700throw(string, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (i2 >= i) {
            if (!(i2 <= string.length())) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
            }
            while (i < i2) {
                char cCharAt2 = string.charAt(i);
                if (cCharAt2 < 128) {
                    Segment segmentWritableSegment$okio = writableSegment$okio(1);
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
                    setSize$okio(size() + i6);
                } else {
                    if (cCharAt2 < 2048) {
                        Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = segmentWritableSegment$okio2.data;
                        int i7 = segmentWritableSegment$okio2.limit;
                        bArr2[i7] = (byte) ((cCharAt2 >> 6) | 192);
                        bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio2.limit = i7 + 2;
                        setSize$okio(size() + 2);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i8 = i + 1;
                        char cCharAt3 = i8 < i2 ? string.charAt(i8) : (char) 0;
                        if (cCharAt2 <= 56319) {
                            if (56320 <= cCharAt3 && cCharAt3 <= 57343) {
                                int i9 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                                Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                                byte[] bArr3 = segmentWritableSegment$okio3.data;
                                int i10 = segmentWritableSegment$okio3.limit;
                                bArr3[i10] = (byte) ((i9 >> 18) | MountainSceneView.f20267finally);
                                bArr3[i10 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                                bArr3[i10 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                                bArr3[i10 + 3] = (byte) ((i9 & 63) | 128);
                                segmentWritableSegment$okio3.limit = i10 + 4;
                                setSize$okio(size() + 4);
                                i += 2;
                            }
                        }
                        writeByte(63);
                        i = i8;
                    } else {
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i11 = segmentWritableSegment$okio4.limit;
                        bArr4[i11] = (byte) ((cCharAt2 >> '\f') | 224);
                        bArr4[i11 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                        bArr4[i11 + 2] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio4.limit = i11 + 3;
                        setSize$okio(size() + 3);
                    }
                    i++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
    }

    @Override // okio.BufferedSource
    public void readFully(@m41 byte[] sink) throws EOFException {
        Csuper.m30700throw(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int i2 = read(sink, i, sink.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer writeString(@m41 String string, int i, int i2, @m41 Charset charset) {
        Csuper.m30700throw(string, "string");
        Csuper.m30700throw(charset, "charset");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (i2 >= i) {
            if (i2 <= string.length()) {
                if (Csuper.m30676else(charset, al.f191do)) {
                    return writeUtf8(string, i, i2);
                }
                String strSubstring = string.substring(i, i2);
                Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
                byte[] bytes = strSubstring.getBytes(charset);
                Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
                return write(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@m41 ByteBuffer source) throws IOException {
        Csuper.m30700throw(source, "source");
        int iRemaining = source.remaining();
        int i = iRemaining;
        while (i > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i, 8192 - segmentWritableSegment$okio.limit);
            source.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += iRemaining;
        return iRemaining;
    }

    @Override // okio.BufferedSource
    public int read(@m41 byte[] sink) {
        Csuper.m30700throw(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @m41
    public final Buffer copyTo(@m41 Buffer out, long j) {
        Csuper.m30700throw(out, "out");
        return copyTo(out, j, this.size - j);
    }

    @Override // okio.BufferedSource
    public int read(@m41 byte[] sink, int i, int i2) {
        Csuper.m30700throw(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i, i2);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i2, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i3 = segment.pos;
        Ccatch.j0(bArr, sink, i, i3, i3 + iMin);
        segment.pos += iMin;
        setSize$okio(size() - iMin);
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @m41
    public final Buffer copyTo(@m41 Buffer out, long j, long j2) {
        Csuper.m30700throw(out, "out");
        _UtilKt.checkOffsetAndCount(size(), j, j2);
        if (j2 != 0) {
            out.setSize$okio(out.size() + j2);
            Segment segment = this.head;
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
        }
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer write(@m41 ByteString byteString) {
        Csuper.m30700throw(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer write(@m41 ByteString byteString, int i, int i2) {
        Csuper.m30700throw(byteString, "byteString");
        byteString.write$okio(this, i, i2);
        return this;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer write(@m41 byte[] source) {
        Csuper.m30700throw(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer write(@m41 byte[] source, int i, int i2) {
        Csuper.m30700throw(source, "source");
        long j = i2;
        _UtilKt.checkOffsetAndCount(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i3 - i, 8192 - segmentWritableSegment$okio.limit);
            int i4 = i + iMin;
            Ccatch.j0(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, i, i4);
            segmentWritableSegment$okio.limit += iMin;
            i = i4;
        }
        setSize$okio(size() + j);
        return this;
    }

    @Override // okio.Source
    public long read(@m41 Buffer sink, long j) {
        Csuper.m30700throw(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Csuper.m30690private("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (j > size()) {
            j = size();
        }
        sink.write(this, j);
        return j;
    }

    @Override // okio.BufferedSink
    @m41
    public Buffer write(@m41 Source source, long j) throws IOException {
        Csuper.m30700throw(source, "source");
        while (j > 0) {
            long j2 = source.read(this, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@m41 ByteString bytes, long j) throws IOException {
        Csuper.m30700throw(bytes, "bytes");
        if (!(bytes.size() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j2 = 0;
        if (j >= 0) {
            Segment segment = this.head;
            if (segment != null) {
                if (size() - j < j) {
                    long size = size();
                    while (size > j) {
                        segment = segment.prev;
                        Csuper.m30672const(segment);
                        size -= segment.limit - segment.pos;
                    }
                    byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                    byte b = bArrInternalArray$okio[0];
                    int size2 = bytes.size();
                    long size3 = (size() - size2) + 1;
                    Segment segment2 = segment;
                    long j3 = size;
                    long j4 = j;
                    while (j3 < size3) {
                        byte[] bArr = segment2.data;
                        long j5 = j4;
                        int iMin = (int) Math.min(segment2.limit, (segment2.pos + size3) - j3);
                        int i = (int) ((segment2.pos + j5) - j3);
                        if (i < iMin) {
                            while (true) {
                                int i2 = i + 1;
                                if (bArr[i] == b && _BufferKt.rangeEquals(segment2, i2, bArrInternalArray$okio, 1, size2)) {
                                    return (i - segment2.pos) + j3;
                                }
                                if (i2 >= iMin) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                        j3 += segment2.limit - segment2.pos;
                        segment2 = segment2.next;
                        Csuper.m30672const(segment2);
                        j4 = j3;
                    }
                } else {
                    while (true) {
                        long j6 = (segment.limit - segment.pos) + j2;
                        if (j6 > j) {
                            break;
                        }
                        segment = segment.next;
                        Csuper.m30672const(segment);
                        j2 = j6;
                    }
                    byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
                    byte b2 = bArrInternalArray$okio2[0];
                    int size4 = bytes.size();
                    long size5 = (size() - size4) + 1;
                    long j7 = j2;
                    long j8 = j;
                    while (j7 < size5) {
                        byte[] bArr2 = segment.data;
                        long j9 = size5;
                        int iMin2 = (int) Math.min(segment.limit, (segment.pos + size5) - j7);
                        int i3 = (int) ((segment.pos + j8) - j7);
                        if (i3 < iMin2) {
                            while (true) {
                                int i4 = i3 + 1;
                                if (bArr2[i3] == b2 && _BufferKt.rangeEquals(segment, i4, bArrInternalArray$okio2, 1, size4)) {
                                    return (i3 - segment.pos) + j7;
                                }
                                if (i4 >= iMin2) {
                                    break;
                                }
                                i3 = i4;
                            }
                        }
                        j7 += segment.limit - segment.pos;
                        segment = segment.next;
                        Csuper.m30672const(segment);
                        j8 = j7;
                        size5 = j9;
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(Csuper.m30690private("fromIndex < 0: ", Long.valueOf(j)).toString());
    }

    @Override // okio.Sink
    public void write(@m41 Buffer source, long j) {
        Segment segment;
        Csuper.m30700throw(source, "source");
        if (source != this) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j);
            while (j > 0) {
                Segment segment2 = source.head;
                Csuper.m30672const(segment2);
                int i = segment2.limit;
                Csuper.m30672const(source.head);
                if (j < i - r2.pos) {
                    Segment segment3 = this.head;
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
                            setSize$okio(size() + j);
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
                Segment segment7 = this.head;
                if (segment7 == null) {
                    this.head = segment6;
                    segment6.prev = segment6;
                    segment6.next = segment6;
                } else {
                    Csuper.m30672const(segment7);
                    Segment segment8 = segment7.prev;
                    Csuper.m30672const(segment8);
                    segment8.push(segment6).compact();
                }
                source.setSize$okio(source.size() - j2);
                setSize$okio(size() + j2);
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }
}
