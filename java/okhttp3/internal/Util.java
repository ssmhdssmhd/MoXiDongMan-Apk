package okhttp3.internal;

import android.support.v4.al;
import android.support.v4.an0;
import android.support.v4.dn0;
import android.support.v4.f22;
import android.support.v4.k92;
import android.support.v4.m41;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.pk0;
import android.support.v4.qm;
import android.support.v4.tm0;
import android.support.v4.tp0;
import android.support.v4.ub2;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.material.datepicker.Cbreak;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.Celse;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.collections.Cinterface;
import kotlin.collections.Cthrow;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.text.Cgoto;
import kotlin.text.Cstatic;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;
import org.mozilla.javascript.ES6Iterator;

@wp0(name = "Util")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000´\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000\u001a\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b\u001a;\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\f*\b\u0012\u0004\u0012\u00020\u00060\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\f2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00060\u000e¢\u0006\u0004\b\u0010\u0010\u0011\u001a7\u0010\u0012\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00060\f2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\f2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00060\u000e¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0014\u0010\u0016\u001a\u00020\u0006*\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\b\u001a-\u0010\u0019\u001a\u00020\u0018*\b\u0012\u0004\u0012\u00020\u00060\f2\u0006\u0010\u0017\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e¢\u0006\u0004\b\u0019\u0010\u001a\u001a%\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\f*\b\u0012\u0004\u0012\u00020\u00060\f2\u0006\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001e\u0010\u001f\u001a\u00020\u0018*\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u0018\u001a\u001e\u0010 \u001a\u00020\u0018*\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u0018\u001a\u001e\u0010!\u001a\u00020\u0006*\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u0018\u001a&\u0010#\u001a\u00020\u0018*\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u0018\u001a&\u0010#\u001a\u00020\u0018*\u00020\u00062\u0006\u0010%\u001a\u00020$2\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u0018\u001a\n\u0010&\u001a\u00020\u0018*\u00020\u0006\u001a\n\u0010'\u001a\u00020\b*\u00020\u0006\u001a)\u0010(\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u00020)0\f\"\u00020)¢\u0006\u0004\b(\u0010+\u001a\u0012\u0010/\u001a\u00020-*\u00020,2\u0006\u0010.\u001a\u00020-\u001a \u00103\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00002\b\u00102\u001a\u0004\u0018\u000101\u001a\n\u00104\u001a\u00020\u0018*\u00020$\u001a\u0010\u00108\u001a\u000207*\b\u0012\u0004\u0012\u00020605\u001a\u0010\u00109\u001a\b\u0012\u0004\u0012\u00020605*\u000207\u001a\u0012\u0010:\u001a\u00020\b*\u00020\u00142\u0006\u0010\r\u001a\u00020\u0014\u001a\n\u0010=\u001a\u00020<*\u00020;\u001a\u0015\u0010@\u001a\u00020\u0018*\u00020>2\u0006\u0010?\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0018*\u00020A2\u0006\u0010?\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010@\u001a\u00020\u0000*\u00020\u00182\u0006\u0010?\u001a\u00020\u0000H\u0086\u0004\u001a\u0012\u0010D\u001a\u00020\u0004*\u00020B2\u0006\u0010C\u001a\u00020\u0018\u001a\n\u0010E\u001a\u00020\u0018*\u00020,\u001a\u001a\u0010H\u001a\u00020\b*\u00020F2\u0006\u00100\u001a\u00020\u00182\u0006\u0010G\u001a\u000201\u001a\u001a\u0010J\u001a\u00020\b*\u00020F2\u0006\u0010I\u001a\u00020\u00182\u0006\u0010G\u001a\u000201\u001a\n\u0010L\u001a\u00020\u0006*\u00020K\u001a\u0012\u0010N\u001a\u00020\b*\u00020K2\u0006\u0010M\u001a\u00020,\u001a\u001a\u0010Q\u001a\u00020\u00042\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00040OH\u0086\bø\u0001\u0000\u001a\"\u0010R\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00040OH\u0086\bø\u0001\u0000\u001a\u0012\u0010H\u001a\u00020\u0018*\u00020S2\u0006\u0010T\u001a\u00020>\u001a\u0014\u0010U\u001a\u00020\u0018*\u00020\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u0018\u001a\n\u0010W\u001a\u00020\u0000*\u00020V\u001a\u0012\u0010Y\u001a\u00020\u0000*\u00020\u00062\u0006\u0010X\u001a\u00020\u0000\u001a\u0014\u0010Z\u001a\u00020\u0018*\u0004\u0018\u00010\u00062\u0006\u0010X\u001a\u00020\u0018\u001a\u001c\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u000005\"\u0004\b\u0000\u0010[*\b\u0012\u0004\u0012\u00028\u000005\u001a/\u0010^\u001a\b\u0012\u0004\u0012\u00028\u000005\"\u0004\b\u0000\u0010[2\u0012\u0010]\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\f\"\u00028\u0000H\u0007¢\u0006\u0004\b^\u0010_\u001a.\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010b\"\u0004\b\u0000\u0010`\"\u0004\b\u0001\u0010a*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010b\u001a\n\u0010e\u001a\u00020\u0004*\u00020d\u001a\n\u0010e\u001a\u00020\u0004*\u00020K\u001a\n\u0010e\u001a\u00020\u0004*\u00020f\u001a\u0012\u0010j\u001a\u00020\b*\u00020g2\u0006\u0010i\u001a\u00020h\u001a\n\u0010k\u001a\u00020\u0006*\u00020\u0000\u001a\n\u0010k\u001a\u00020\u0006*\u00020\u0018\u001a\r\u0010l\u001a\u00020\u0004*\u00020)H\u0086\b\u001a\r\u0010m\u001a\u00020\u0004*\u00020)H\u0086\b\u001a\r\u0010n\u001a\u00020\u0004*\u00020)H\u0086\b\u001a3\u0010s\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010[2\u0006\u0010o\u001a\u00020)2\f\u0010q\u001a\b\u0012\u0004\u0012\u00028\u00000p2\u0006\u0010r\u001a\u00020\u0006¢\u0006\u0004\bs\u0010t\u001a'\u0010x\u001a\u00020\u0004\"\u0004\b\u0000\u0010u*\b\u0012\u0004\u0012\u00028\u00000v2\u0006\u0010w\u001a\u00028\u0000H\u0000¢\u0006\u0004\bx\u0010y\u001a\r\u0010z\u001a\u00020\u0004*\u00020)H\u0080\b\u001a\r\u0010{\u001a\u00020\u0004*\u00020)H\u0080\b\u001a!\u0010\u0080\u0001\u001a\u00020\u007f*\u00060|j\u0002`}2\u0010\u0010~\u001a\f\u0012\b\u0012\u00060|j\u0002`}05\u001a@\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00028\u000005\"\u0004\b\u0000\u0010[*\t\u0012\u0004\u0012\u00028\u00000\u0081\u00012\u001a\u0010\u0084\u0001\u001a\u0015\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0\u0082\u0001¢\u0006\u0003\b\u0083\u0001H\u0086\bø\u0001\u0000\"\u001a\u0010\u0087\u0001\u001a\u00030\u0086\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0019\u0010\u0089\u0001\u001a\u0002078\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u001a\u0010\u008c\u0001\u001a\u00030\u008b\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u001a\u0010\u008f\u0001\u001a\u00030\u008e\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u001a\u0010\u0092\u0001\u001a\u00030\u0091\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001\"\u001a\u0010\u0095\u0001\u001a\u00030\u0094\u00018\u0006@\u0007X\u0087\u0004¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001\"\u001a\u0010\u0098\u0001\u001a\u00030\u0097\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0019\u0010\u009a\u0001\u001a\u00020\b8\u0000@\u0001X\u0081\u0004¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0019\u0010\u009c\u0001\u001a\u00020\u00068\u0000@\u0001X\u0081\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0019\u0010\u009e\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086T¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009d\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u009f\u0001"}, d2 = {"", "arrayLength", TypedValues.Cycle.S_WAVE_OFFSET, "count", "Landroid/support/v4/ub2;", "checkOffsetAndCount", "", "name", "", "daemon", "Ljava/util/concurrent/ThreadFactory;", "threadFactory", "", "other", "Ljava/util/Comparator;", "comparator", "intersect", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "hasIntersection", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "Lokhttp3/HttpUrl;", "includeDefaultPort", "toHostHeader", ES6Iterator.VALUE_PROPERTY, "", "indexOf", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "concat", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "startIndex", "endIndex", "indexOfFirstNonAsciiWhitespace", "indexOfLastNonAsciiWhitespace", "trimSubstring", "delimiters", "delimiterOffset", "", "delimiter", "indexOfControlOrNonAscii", "canParseAsIpAddress", "format", "", "args", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lokio/BufferedSource;", "Ljava/nio/charset/Charset;", "default", "readBomAsCharset", "duration", "Ljava/util/concurrent/TimeUnit;", "unit", "checkDuration", "parseHexDigit", "", "Lokhttp3/internal/http2/Header;", "Lokhttp3/Headers;", "toHeaders", "toHeaderList", "canReuseConnectionFor", "Lokhttp3/EventListener;", "Lokhttp3/EventListener$Factory;", "asFactory", "", "mask", "and", "", "Lokio/BufferedSink;", "medium", "writeMedium", "readMedium", "Lokio/Source;", "timeUnit", "skipAll", "timeout", "discard", "Ljava/net/Socket;", "peerName", "source", "isHealthy", "Lkotlin/Function0;", "block", "ignoreIoExceptions", "threadName", "Lokio/Buffer;", "b", "indexOfNonWhitespace", "Lokhttp3/Response;", "headersContentLength", "defaultValue", "toLongOrDefault", "toNonNegativeInt", ExifInterface.GPS_DIRECTION_TRUE, "toImmutableList", "elements", "immutableListOf", "([Ljava/lang/Object;)Ljava/util/List;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "toImmutableMap", "Ljava/io/Closeable;", "closeQuietly", "Ljava/net/ServerSocket;", "Lokhttp3/internal/io/FileSystem;", "Ljava/io/File;", "file", "isCivilized", "toHexString", "wait", "notify", "notifyAll", "instance", "Ljava/lang/Class;", "fieldType", "fieldName", "readFieldOrNull", "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "", "element", "addIfAbsent", "(Ljava/util/List;Ljava/lang/Object;)V", "assertThreadHoldsLock", "assertThreadDoesntHoldLock", "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", "", "withSuppressed", "", "Lkotlin/Function1;", "Landroid/support/v4/w90;", "predicate", "filterList", "", "EMPTY_BYTE_ARRAY", "[B", "EMPTY_HEADERS", "Lokhttp3/Headers;", "Lokhttp3/ResponseBody;", "EMPTY_RESPONSE", "Lokhttp3/ResponseBody;", "Lokhttp3/RequestBody;", "EMPTY_REQUEST", "Lokhttp3/RequestBody;", "Lokio/Options;", "UNICODE_BOMS", "Lokio/Options;", "Ljava/util/TimeZone;", Cbreak.f11820do, "Ljava/util/TimeZone;", "Lkotlin/text/goto;", "VERIFY_AS_IP_ADDRESS", "Lkotlin/text/goto;", "assertionsEnabled", "Z", "okHttpName", "Ljava/lang/String;", "userAgent", "okhttp"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class Util {

    @m41
    @tp0
    public static final byte[] EMPTY_BYTE_ARRAY;

    @m41
    @tp0
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);

    @m41
    @tp0
    public static final RequestBody EMPTY_REQUEST;

    @m41
    @tp0
    public static final ResponseBody EMPTY_RESPONSE;
    private static final Options UNICODE_BOMS;

    @m41
    @tp0
    public static final TimeZone UTC;
    private static final Cgoto VERIFY_AS_IP_ADDRESS;

    @tp0
    public static final boolean assertionsEnabled;

    @m41
    @tp0
    public static final String okHttpName;

    @m41
    public static final String userAgent = "okhttp/4.9.1";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        UNICODE_BOMS = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        Csuper.m30672const(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new Cgoto("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String name = OkHttpClient.class.getName();
        Csuper.m30696super(name, "OkHttpClient::class.java.name");
        okHttpName = Cstatic.v3(Cstatic.p3(name, "okhttp3."), "Client");
    }

    public static final <E> void addIfAbsent(@m41 List<E> addIfAbsent, E e) {
        Csuper.m30700throw(addIfAbsent, "$this$addIfAbsent");
        if (addIfAbsent.contains(e)) {
            return;
        }
        addIfAbsent.add(e);
    }

    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final int and(short s, int i) {
        return s & i;
    }

    public static final long and(int i, long j) {
        return j & i;
    }

    @m41
    public static final EventListener.Factory asFactory(@m41 final EventListener asFactory) {
        Csuper.m30700throw(asFactory, "$this$asFactory");
        return new EventListener.Factory() { // from class: okhttp3.internal.Util.asFactory.1
            @Override // okhttp3.EventListener.Factory
            @m41
            public final EventListener create(@m41 Call it) {
                Csuper.m30700throw(it, "it");
                return asFactory;
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(@m41 Object assertThreadDoesntHoldLock) {
        Csuper.m30700throw(assertThreadDoesntHoldLock, "$this$assertThreadDoesntHoldLock");
        if (assertionsEnabled && Thread.holdsLock(assertThreadDoesntHoldLock)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Thread ");
            Thread threadCurrentThread = Thread.currentThread();
            Csuper.m30696super(threadCurrentThread, "Thread.currentThread()");
            sb.append(threadCurrentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(assertThreadDoesntHoldLock);
            throw new AssertionError(sb.toString());
        }
    }

    public static final void assertThreadHoldsLock(@m41 Object assertThreadHoldsLock) {
        Csuper.m30700throw(assertThreadHoldsLock, "$this$assertThreadHoldsLock");
        if (!assertionsEnabled || Thread.holdsLock(assertThreadHoldsLock)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread ");
        Thread threadCurrentThread = Thread.currentThread();
        Csuper.m30696super(threadCurrentThread, "Thread.currentThread()");
        sb.append(threadCurrentThread.getName());
        sb.append(" MUST hold lock on ");
        sb.append(assertThreadHoldsLock);
        throw new AssertionError(sb.toString());
    }

    public static final boolean canParseAsIpAddress(@m41 String canParseAsIpAddress) {
        Csuper.m30700throw(canParseAsIpAddress, "$this$canParseAsIpAddress");
        return VERIFY_AS_IP_ADDRESS.matches(canParseAsIpAddress);
    }

    public static final boolean canReuseConnectionFor(@m41 HttpUrl canReuseConnectionFor, @m41 HttpUrl other) {
        Csuper.m30700throw(canReuseConnectionFor, "$this$canReuseConnectionFor");
        Csuper.m30700throw(other, "other");
        return Csuper.m30676else(canReuseConnectionFor.host(), other.host()) && canReuseConnectionFor.port() == other.port() && Csuper.m30676else(canReuseConnectionFor.scheme(), other.scheme());
    }

    public static final int checkDuration(@m41 String name, long j, @z41 TimeUnit timeUnit) {
        Csuper.m30700throw(name, "name");
        boolean z = true;
        if (!(j >= 0)) {
            throw new IllegalStateException((name + " < 0").toString());
        }
        if (!(timeUnit != null)) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(j);
        if (!(millis <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException((name + " too large.").toString());
        }
        if (millis == 0 && j > 0) {
            z = false;
        }
        if (z) {
            return (int) millis;
        }
        throw new IllegalArgumentException((name + " too small.").toString());
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(@m41 Closeable closeQuietly) {
        Csuper.m30700throw(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    @m41
    public static final String[] concat(@m41 String[] concat, @m41 String value) {
        Csuper.m30700throw(concat, "$this$concat");
        Csuper.m30700throw(value, "value");
        Object[] objArrCopyOf = Arrays.copyOf(concat, concat.length + 1);
        Csuper.m30696super(objArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        String[] strArr = (String[]) objArrCopyOf;
        strArr[Cclass.gd(strArr)] = value;
        return strArr;
    }

    public static final int delimiterOffset(@m41 String delimiterOffset, @m41 String delimiters, int i, int i2) {
        Csuper.m30700throw(delimiterOffset, "$this$delimiterOffset");
        Csuper.m30700throw(delimiters, "delimiters");
        while (i < i2) {
            if (Cstatic.h2(delimiters, delimiterOffset.charAt(i), false, 2, null)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, str2, i, i2);
    }

    public static final boolean discard(@m41 Source discard, int i, @m41 TimeUnit timeUnit) {
        Csuper.m30700throw(discard, "$this$discard");
        Csuper.m30700throw(timeUnit, "timeUnit");
        try {
            return skipAll(discard, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    @m41
    public static final <T> List<T> filterList(@m41 Iterable<? extends T> filterList, @m41 Function1<? super T, Boolean> predicate) {
        Csuper.m30700throw(filterList, "$this$filterList");
        Csuper.m30700throw(predicate, "predicate");
        List<T> listM30175continue = Cthrow.m30175continue();
        for (T t : filterList) {
            if (predicate.invoke(t).booleanValue()) {
                if (listM30175continue.isEmpty()) {
                    listM30175continue = new ArrayList<>();
                }
                k92.m4306else(listM30175continue).add(t);
            }
        }
        return listM30175continue;
    }

    @m41
    public static final String format(@m41 String format, @m41 Object... args) {
        Csuper.m30700throw(format, "format");
        Csuper.m30700throw(args, "args");
        f22 f22Var = f22.f1678do;
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        String str = String.format(locale, format, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        Csuper.m30696super(str, "java.lang.String.format(locale, format, *args)");
        return str;
    }

    public static final boolean hasIntersection(@m41 String[] hasIntersection, @z41 String[] strArr, @m41 Comparator<? super String> comparator) {
        Csuper.m30700throw(hasIntersection, "$this$hasIntersection");
        Csuper.m30700throw(comparator, "comparator");
        if (!(hasIntersection.length == 0) && strArr != null) {
            if (!(strArr.length == 0)) {
                for (String str : hasIntersection) {
                    for (String str2 : strArr) {
                        if (comparator.compare(str, str2) == 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final long headersContentLength(@m41 Response headersContentLength) {
        Csuper.m30700throw(headersContentLength, "$this$headersContentLength");
        String str = headersContentLength.headers().get(pk0.f5055if);
        if (str != null) {
            return toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final void ignoreIoExceptions(@m41 Function0<ub2> block) {
        Csuper.m30700throw(block, "block");
        try {
            block.invoke();
        } catch (IOException unused) {
        }
    }

    @m41
    @SafeVarargs
    public static final <T> List<T> immutableListOf(@m41 T... elements) {
        Csuper.m30700throw(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(Cthrow.m30181instanceof(Arrays.copyOf(objArr, objArr.length)));
        Csuper.m30696super(listUnmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int indexOf(@m41 String[] indexOf, @m41 String value, @m41 Comparator<String> comparator) {
        Csuper.m30700throw(indexOf, "$this$indexOf");
        Csuper.m30700throw(value, "value");
        Csuper.m30700throw(comparator, "comparator");
        int length = indexOf.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(indexOf[i], value) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(@m41 String indexOfControlOrNonAscii) {
        Csuper.m30700throw(indexOfControlOrNonAscii, "$this$indexOfControlOrNonAscii");
        int length = indexOfControlOrNonAscii.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = indexOfControlOrNonAscii.charAt(i);
            if (Csuper.m30692public(cCharAt, 31) <= 0 || Csuper.m30692public(cCharAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(@m41 String indexOfFirstNonAsciiWhitespace, int i, int i2) {
        Csuper.m30700throw(indexOfFirstNonAsciiWhitespace, "$this$indexOfFirstNonAsciiWhitespace");
        while (i < i2) {
            char cCharAt = indexOfFirstNonAsciiWhitespace.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfLastNonAsciiWhitespace(@m41 String indexOfLastNonAsciiWhitespace, int i, int i2) {
        Csuper.m30700throw(indexOfLastNonAsciiWhitespace, "$this$indexOfLastNonAsciiWhitespace");
        int i3 = i2 - 1;
        if (i3 >= i) {
            while (true) {
                char cCharAt = indexOfLastNonAsciiWhitespace.charAt(i3);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfNonWhitespace(@m41 String indexOfNonWhitespace, int i) {
        Csuper.m30700throw(indexOfNonWhitespace, "$this$indexOfNonWhitespace");
        int length = indexOfNonWhitespace.length();
        while (i < length) {
            char cCharAt = indexOfNonWhitespace.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i;
            }
            i++;
        }
        return indexOfNonWhitespace.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return indexOfNonWhitespace(str, i);
    }

    @m41
    public static final String[] intersect(@m41 String[] intersect, @m41 String[] other, @m41 Comparator<? super String> comparator) {
        Csuper.m30700throw(intersect, "$this$intersect");
        Csuper.m30700throw(other, "other");
        Csuper.m30700throw(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : intersect) {
            int length = other.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, other[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    public static final boolean isCivilized(@m41 FileSystem isCivilized, @m41 File file) throws IOException {
        Csuper.m30700throw(isCivilized, "$this$isCivilized");
        Csuper.m30700throw(file, "file");
        Sink sink = isCivilized.sink(file);
        try {
            try {
                isCivilized.delete(file);
                qm.m6624do(sink, null);
                return true;
            } catch (IOException unused) {
                ub2 ub2Var = ub2.f6820do;
                qm.m6624do(sink, null);
                isCivilized.delete(file);
                return false;
            }
        } finally {
        }
    }

    public static final boolean isHealthy(@m41 Socket isHealthy, @m41 BufferedSource source) throws SocketException {
        Csuper.m30700throw(isHealthy, "$this$isHealthy");
        Csuper.m30700throw(source, "source");
        try {
            int soTimeout = isHealthy.getSoTimeout();
            try {
                isHealthy.setSoTimeout(1);
                boolean z = !source.exhausted();
                isHealthy.setSoTimeout(soTimeout);
                return z;
            } catch (Throwable th) {
                isHealthy.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final void notify(@m41 Object notify) {
        Csuper.m30700throw(notify, "$this$notify");
        notify.notify();
    }

    public static final void notifyAll(@m41 Object notifyAll) {
        Csuper.m30700throw(notifyAll, "$this$notifyAll");
        notifyAll.notifyAll();
    }

    public static final int parseHexDigit(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    @m41
    public static final String peerName(@m41 Socket peerName) {
        Csuper.m30700throw(peerName, "$this$peerName");
        SocketAddress remoteSocketAddress = peerName.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        Csuper.m30696super(hostName, "address.hostName");
        return hostName;
    }

    @m41
    public static final Charset readBomAsCharset(@m41 BufferedSource readBomAsCharset, @m41 Charset charset) throws IOException {
        Csuper.m30700throw(readBomAsCharset, "$this$readBomAsCharset");
        Csuper.m30700throw(charset, "default");
        int iSelect = readBomAsCharset.select(UNICODE_BOMS);
        if (iSelect == -1) {
            return charset;
        }
        if (iSelect == 0) {
            Charset UTF_8 = StandardCharsets.UTF_8;
            Csuper.m30696super(UTF_8, "UTF_8");
            return UTF_8;
        }
        if (iSelect == 1) {
            Charset UTF_16BE = StandardCharsets.UTF_16BE;
            Csuper.m30696super(UTF_16BE, "UTF_16BE");
            return UTF_16BE;
        }
        if (iSelect == 2) {
            Charset UTF_16LE = StandardCharsets.UTF_16LE;
            Csuper.m30696super(UTF_16LE, "UTF_16LE");
            return UTF_16LE;
        }
        if (iSelect == 3) {
            return al.f189break.m265if();
        }
        if (iSelect == 4) {
            return al.f189break.m264for();
        }
        throw new AssertionError();
    }

    @z41
    public static final <T> T readFieldOrNull(@m41 Object instance, @m41 Class<T> fieldType, @m41 String fieldName) {
        T tCast;
        Object fieldOrNull;
        Csuper.m30700throw(instance, "instance");
        Csuper.m30700throw(fieldType, "fieldType");
        Csuper.m30700throw(fieldName, "fieldName");
        Class<?> superclass = instance.getClass();
        while (true) {
            tCast = null;
            if (!(!Csuper.m30676else(superclass, Object.class))) {
                if (!(!Csuper.m30676else(fieldName, "delegate")) || (fieldOrNull = readFieldOrNull(instance, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, fieldType, fieldName);
            }
            try {
                Field field = superclass.getDeclaredField(fieldName);
                Csuper.m30696super(field, "field");
                field.setAccessible(true);
                Object obj = field.get(instance);
                if (!fieldType.isInstance(obj)) {
                    break;
                }
                tCast = fieldType.cast(obj);
                break;
            } catch (NoSuchFieldException unused) {
                superclass = superclass.getSuperclass();
                Csuper.m30696super(superclass, "c.superclass");
            }
        }
        return tCast;
    }

    public static final int readMedium(@m41 BufferedSource readMedium) throws IOException {
        Csuper.m30700throw(readMedium, "$this$readMedium");
        return and(readMedium.readByte(), 255) | (and(readMedium.readByte(), 255) << 16) | (and(readMedium.readByte(), 255) << 8);
    }

    public static final boolean skipAll(@m41 Source skipAll, int i, @m41 TimeUnit timeUnit) throws IOException {
        boolean z;
        Csuper.m30700throw(skipAll, "$this$skipAll");
        Csuper.m30700throw(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = skipAll.timeout().hasDeadline() ? skipAll.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        skipAll.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (skipAll.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                buffer.clear();
            }
            z = true;
        } catch (InterruptedIOException unused) {
            z = false;
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
            }
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                skipAll.timeout().clearDeadline();
            } else {
                skipAll.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
        if (jDeadlineNanoTime == Long.MAX_VALUE) {
            skipAll.timeout().clearDeadline();
        } else {
            skipAll.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
        }
        return z;
    }

    @m41
    public static final ThreadFactory threadFactory(@m41 final String name, final boolean z) {
        Csuper.m30700throw(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal.Util.threadFactory.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static final void threadName(@m41 String name, @m41 Function0<ub2> block) {
        Csuper.m30700throw(name, "name");
        Csuper.m30700throw(block, "block");
        Thread currentThread = Thread.currentThread();
        Csuper.m30696super(currentThread, "currentThread");
        String name2 = currentThread.getName();
        currentThread.setName(name);
        try {
            block.invoke();
        } finally {
            tm0.m7996new(1);
            currentThread.setName(name2);
            tm0.m7994for(1);
        }
    }

    @m41
    public static final List<Header> toHeaderList(@m41 Headers toHeaderList) {
        Csuper.m30700throw(toHeaderList, "$this$toHeaderList");
        dn0 dn0VarA0 = Ccase.A0(0, toHeaderList.size());
        ArrayList arrayList = new ArrayList(kotlin.collections.Cwhile.l(dn0VarA0, 10));
        Iterator<Integer> it = dn0VarA0.iterator();
        while (it.hasNext()) {
            int iMo290if = ((an0) it).mo290if();
            arrayList.add(new Header(toHeaderList.name(iMo290if), toHeaderList.value(iMo290if)));
        }
        return arrayList;
    }

    @m41
    public static final Headers toHeaders(@m41 List<Header> toHeaders) {
        Csuper.m30700throw(toHeaders, "$this$toHeaders");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : toHeaders) {
            builder.addLenient$okhttp(header.component1().utf8(), header.component2().utf8());
        }
        return builder.build();
    }

    @m41
    public static final String toHexString(long j) {
        String hexString = Long.toHexString(j);
        Csuper.m30696super(hexString, "java.lang.Long.toHexString(this)");
        return hexString;
    }

    @m41
    public static final String toHostHeader(@m41 HttpUrl toHostHeader, boolean z) {
        String strHost;
        Csuper.m30700throw(toHostHeader, "$this$toHostHeader");
        if (Cstatic.i2(toHostHeader.host(), ":", false, 2, null)) {
            strHost = '[' + toHostHeader.host() + ']';
        } else {
            strHost = toHostHeader.host();
        }
        if (!z && toHostHeader.port() == HttpUrl.Companion.defaultPort(toHostHeader.scheme())) {
            return strHost;
        }
        return strHost + ':' + toHostHeader.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return toHostHeader(httpUrl, z);
    }

    @m41
    public static final <T> List<T> toImmutableList(@m41 List<? extends T> toImmutableList) {
        Csuper.m30700throw(toImmutableList, "$this$toImmutableList");
        List<T> listUnmodifiableList = Collections.unmodifiableList(Cthrows.Y4(toImmutableList));
        Csuper.m30696super(listUnmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    @m41
    public static final <K, V> Map<K, V> toImmutableMap(@m41 Map<K, ? extends V> toImmutableMap) {
        Csuper.m30700throw(toImmutableMap, "$this$toImmutableMap");
        if (toImmutableMap.isEmpty()) {
            return Cinterface.m30101extends();
        }
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(toImmutableMap));
        Csuper.m30696super(mapUnmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        return mapUnmodifiableMap;
    }

    public static final long toLongOrDefault(@m41 String toLongOrDefault, long j) {
        Csuper.m30700throw(toLongOrDefault, "$this$toLongOrDefault");
        try {
            return Long.parseLong(toLongOrDefault);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static final int toNonNegativeInt(@z41 String str, int i) throws NumberFormatException {
        if (str != null) {
            try {
                long j = Long.parseLong(str);
                if (j > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (j < 0) {
                    return 0;
                }
                return (int) j;
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    @m41
    public static final String trimSubstring(@m41 String trimSubstring, int i, int i2) {
        Csuper.m30700throw(trimSubstring, "$this$trimSubstring");
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(trimSubstring, i, i2);
        String strSubstring = trimSubstring.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(trimSubstring, iIndexOfFirstNonAsciiWhitespace, i2));
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return trimSubstring(str, i, i2);
    }

    public static final void wait(@m41 Object wait) throws InterruptedException {
        Csuper.m30700throw(wait, "$this$wait");
        wait.wait();
    }

    @m41
    public static final Throwable withSuppressed(@m41 Exception withSuppressed, @m41 List<? extends Exception> suppressed) {
        Csuper.m30700throw(withSuppressed, "$this$withSuppressed");
        Csuper.m30700throw(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        Iterator<? extends Exception> it = suppressed.iterator();
        while (it.hasNext()) {
            Celse.m30428do(withSuppressed, it.next());
        }
        return withSuppressed;
    }

    public static final void writeMedium(@m41 BufferedSink writeMedium, int i) throws IOException {
        Csuper.m30700throw(writeMedium, "$this$writeMedium");
        writeMedium.writeByte((i >>> 16) & 255);
        writeMedium.writeByte((i >>> 8) & 255);
        writeMedium.writeByte(i & 255);
    }

    public static final int delimiterOffset(@m41 String delimiterOffset, char c, int i, int i2) {
        Csuper.m30700throw(delimiterOffset, "$this$delimiterOffset");
        while (i < i2) {
            if (delimiterOffset.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, c, i, i2);
    }

    @m41
    public static final String toHexString(int i) {
        String hexString = Integer.toHexString(i);
        Csuper.m30696super(hexString, "Integer.toHexString(this)");
        return hexString;
    }

    public static final void closeQuietly(@m41 Socket closeQuietly) throws IOException {
        Csuper.m30700throw(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!Csuper.m30676else(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(@m41 ServerSocket closeQuietly) throws IOException {
        Csuper.m30700throw(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final int skipAll(@m41 Buffer skipAll, byte b) throws EOFException {
        Csuper.m30700throw(skipAll, "$this$skipAll");
        int i = 0;
        while (!skipAll.exhausted() && skipAll.getByte(0L) == b) {
            i++;
            skipAll.readByte();
        }
        return i;
    }
}
