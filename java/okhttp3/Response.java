package okhttp3;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.pk0;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import com.scwang.smartrefresh.header.TaurusHeader;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;
import okio.Source;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;
import org.slf4j.helpers.MessageFormatter;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001RB}\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\r\u001a\u00020\n\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0018\u001a\u00020\u001b\u0012\b\u0010%\u001a\u0004\u0018\u00010!\u0012\b\u0010*\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u00107\u001a\u00020\u001f\u0012\u0006\u00109\u001a\u00020\u001f\u0012\b\u0010I\u001a\u0004\u0018\u00010H¢\u0006\u0004\bP\u0010QJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00172\u0006\u0010\u0016\u001a\u00020\u000eJ\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000eH\u0007J\u000f\u0010\u0018\u001a\u00020\u001bH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u001fJ\u0011\u0010%\u001a\u0004\u0018\u00010!H\u0007¢\u0006\u0004\b#\u0010$J\u0006\u0010'\u001a\u00020&J\u0011\u0010*\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b(\u0010)J\u0011\u0010,\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b+\u0010)J\u0011\u0010.\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b-\u0010)J\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0\u0017J\u000f\u00104\u001a\u000201H\u0007¢\u0006\u0004\b2\u00103J\u000f\u00107\u001a\u00020\u001fH\u0007¢\u0006\u0004\b5\u00106J\u000f\u00109\u001a\u00020\u001fH\u0007¢\u0006\u0004\b8\u00106J\b\u0010;\u001a\u00020:H\u0016J\b\u0010<\u001a\u00020\u000eH\u0016R\u0018\u0010=\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010?\u001a\u0004\b\u0005\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00068\u0007@\u0006¢\u0006\f\n\u0004\b\t\u0010@\u001a\u0004\b\t\u0010\bR\u0019\u0010\u0011\u001a\u00020\u000e8\u0007@\u0006¢\u0006\f\n\u0004\b\u0011\u0010A\u001a\u0004\b\u0011\u0010\u0010R\u0019\u0010\r\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\r\u0010B\u001a\u0004\b\r\u0010\fR\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0007@\u0006¢\u0006\f\n\u0004\b\u0015\u0010C\u001a\u0004\b\u0015\u0010\u0014R\u0019\u0010\u0018\u001a\u00020\u001b8\u0007@\u0006¢\u0006\f\n\u0004\b\u0018\u0010D\u001a\u0004\b\u0018\u0010\u001dR\u001b\u0010%\u001a\u0004\u0018\u00010!8\u0007@\u0006¢\u0006\f\n\u0004\b%\u0010E\u001a\u0004\b%\u0010$R\u001b\u0010*\u001a\u0004\u0018\u00010\u00008\u0007@\u0006¢\u0006\f\n\u0004\b*\u0010F\u001a\u0004\b*\u0010)R\u001b\u0010,\u001a\u0004\u0018\u00010\u00008\u0007@\u0006¢\u0006\f\n\u0004\b,\u0010F\u001a\u0004\b,\u0010)R\u001b\u0010.\u001a\u0004\u0018\u00010\u00008\u0007@\u0006¢\u0006\f\n\u0004\b.\u0010F\u001a\u0004\b.\u0010)R\u0019\u00107\u001a\u00020\u001f8\u0007@\u0006¢\u0006\f\n\u0004\b7\u0010G\u001a\u0004\b7\u00106R\u0019\u00109\u001a\u00020\u001f8\u0007@\u0006¢\u0006\f\n\u0004\b9\u0010G\u001a\u0004\b9\u00106R\u001e\u0010I\u001a\u0004\u0018\u00010H8\u0001@\u0000X\u0080\u0004¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bI\u0010KR\u0013\u0010M\u001a\u00020L8F@\u0006¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0013\u0010O\u001a\u00020L8F@\u0006¢\u0006\u0006\u001a\u0004\bO\u0010NR\u0013\u00104\u001a\u0002018G@\u0006¢\u0006\u0006\u001a\u0004\b4\u00103¨\u0006S"}, d2 = {"Lokhttp3/Response;", "Ljava/io/Closeable;", "Lokhttp3/Request;", "-deprecated_request", "()Lokhttp3/Request;", "request", "Lokhttp3/Protocol;", "-deprecated_protocol", "()Lokhttp3/Protocol;", "protocol", "", "-deprecated_code", "()I", "code", "", "-deprecated_message", "()Ljava/lang/String;", "message", "Lokhttp3/Handshake;", "-deprecated_handshake", "()Lokhttp3/Handshake;", "handshake", "name", "", "headers", "defaultValue", "header", "Lokhttp3/Headers;", "-deprecated_headers", "()Lokhttp3/Headers;", "trailers", "", "byteCount", "Lokhttp3/ResponseBody;", "peekBody", "-deprecated_body", "()Lokhttp3/ResponseBody;", "body", "Lokhttp3/Response$Builder;", "newBuilder", "-deprecated_networkResponse", "()Lokhttp3/Response;", "networkResponse", "-deprecated_cacheResponse", "cacheResponse", "-deprecated_priorResponse", "priorResponse", "Lokhttp3/Challenge;", "challenges", "Lokhttp3/CacheControl;", "-deprecated_cacheControl", "()Lokhttp3/CacheControl;", "cacheControl", "-deprecated_sentRequestAtMillis", "()J", "sentRequestAtMillis", "-deprecated_receivedResponseAtMillis", "receivedResponseAtMillis", "Landroid/support/v4/ub2;", "close", "toString", "lazyCacheControl", "Lokhttp3/CacheControl;", "Lokhttp3/Request;", "Lokhttp3/Protocol;", "Ljava/lang/String;", OptRuntime.GeneratorState.resumptionPoint_TYPE, "Lokhttp3/Handshake;", "Lokhttp3/Headers;", "Lokhttp3/ResponseBody;", "Lokhttp3/Response;", "J", "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/internal/connection/Exchange;", "()Lokhttp3/internal/connection/Exchange;", "", "isSuccessful", "()Z", "isRedirect", "<init>", "(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;)V", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Response implements Closeable {

    @z41
    private final ResponseBody body;

    @z41
    private final Response cacheResponse;
    private final int code;

    @z41
    private final Exchange exchange;

    @z41
    private final Handshake handshake;

    @m41
    private final Headers headers;
    private CacheControl lazyCacheControl;

    @m41
    private final String message;

    @z41
    private final Response networkResponse;

    @z41
    private final Response priorResponse;

    @m41
    private final Protocol protocol;
    private final long receivedResponseAtMillis;

    @m41
    private final Request request;
    private final long sentRequestAtMillis;

    public Response(@m41 Request request, @m41 Protocol protocol, @m41 String message, int i, @z41 Handshake handshake, @m41 Headers headers, @z41 ResponseBody responseBody, @z41 Response response, @z41 Response response2, @z41 Response response3, long j, long j2, @z41 Exchange exchange) {
        Csuper.m30700throw(request, "request");
        Csuper.m30700throw(protocol, "protocol");
        Csuper.m30700throw(message, "message");
        Csuper.m30700throw(headers, "headers");
        this.request = request;
        this.protocol = protocol;
        this.message = message;
        this.code = i;
        this.handshake = handshake;
        this.headers = headers;
        this.body = responseBody;
        this.networkResponse = response;
        this.cacheResponse = response2;
        this.priorResponse = response3;
        this.sentRequestAtMillis = j;
        this.receivedResponseAtMillis = j2;
        this.exchange = exchange;
    }

    public static /* synthetic */ String header$default(Response response, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return response.header(str, str2);
    }

    @wp0(name = "-deprecated_body")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "body", imports = {}))
    public final ResponseBody a() {
        return this.body;
    }

    @m41
    @wp0(name = "-deprecated_cacheControl")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "cacheControl", imports = {}))
    public final CacheControl b() {
        return cacheControl();
    }

    @wp0(name = "body")
    @z41
    public final ResponseBody body() {
        return this.body;
    }

    @wp0(name = "-deprecated_cacheResponse")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "cacheResponse", imports = {}))
    public final Response c() {
        return this.cacheResponse;
    }

    @m41
    @wp0(name = "cacheControl")
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    @wp0(name = "cacheResponse")
    @z41
    public final Response cacheResponse() {
        return this.cacheResponse;
    }

    @m41
    public final List<Challenge> challenges() {
        String str;
        Headers headers = this.headers;
        int i = this.code;
        if (i == 401) {
            str = pk0.U;
        } else {
            if (i != 407) {
                return Cthrow.m30175continue();
            }
            str = pk0.F;
        }
        return HttpHeaders.parseChallenges(headers, str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ResponseBody responseBody = this.body;
        if (responseBody == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed".toString());
        }
        responseBody.close();
    }

    @wp0(name = "code")
    public final int code() {
        return this.code;
    }

    @wp0(name = "-deprecated_code")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "code", imports = {}))
    public final int d() {
        return this.code;
    }

    @wp0(name = "-deprecated_handshake")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "handshake", imports = {}))
    public final Handshake e() {
        return this.handshake;
    }

    @wp0(name = "exchange")
    @z41
    public final Exchange exchange() {
        return this.exchange;
    }

    @m41
    @wp0(name = "-deprecated_headers")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "headers", imports = {}))
    public final Headers f() {
        return this.headers;
    }

    @m41
    @wp0(name = "-deprecated_message")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "message", imports = {}))
    public final String g() {
        return this.message;
    }

    @wp0(name = "-deprecated_networkResponse")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "networkResponse", imports = {}))
    public final Response h() {
        return this.networkResponse;
    }

    @wp0(name = "handshake")
    @z41
    public final Handshake handshake() {
        return this.handshake;
    }

    @z41
    @xp0
    public final String header(@m41 String str) {
        return header$default(this, str, null, 2, null);
    }

    @z41
    @xp0
    public final String header(@m41 String name, @z41 String str) {
        Csuper.m30700throw(name, "name");
        String str2 = this.headers.get(name);
        return str2 != null ? str2 : str;
    }

    @m41
    @wp0(name = "headers")
    public final Headers headers() {
        return this.headers;
    }

    @wp0(name = "-deprecated_priorResponse")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "priorResponse", imports = {}))
    public final Response i() {
        return this.priorResponse;
    }

    public final boolean isRedirect() {
        int i = this.code;
        if (i != 307 && i != 308) {
            switch (i) {
                case TaurusHeader.a /* 300 */:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public final boolean isSuccessful() {
        int i = this.code;
        return 200 <= i && 299 >= i;
    }

    @m41
    @wp0(name = "-deprecated_protocol")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "protocol", imports = {}))
    public final Protocol j() {
        return this.protocol;
    }

    @wp0(name = "-deprecated_receivedResponseAtMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "receivedResponseAtMillis", imports = {}))
    public final long k() {
        return this.receivedResponseAtMillis;
    }

    @m41
    @wp0(name = "-deprecated_request")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "request", imports = {}))
    public final Request l() {
        return this.request;
    }

    @wp0(name = "-deprecated_sentRequestAtMillis")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "sentRequestAtMillis", imports = {}))
    public final long m() {
        return this.sentRequestAtMillis;
    }

    @m41
    @wp0(name = "message")
    public final String message() {
        return this.message;
    }

    @wp0(name = "networkResponse")
    @z41
    public final Response networkResponse() {
        return this.networkResponse;
    }

    @m41
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @m41
    public final ResponseBody peekBody(long j) throws IOException {
        ResponseBody responseBody = this.body;
        Csuper.m30672const(responseBody);
        BufferedSource bufferedSourcePeek = responseBody.source().peek();
        Buffer buffer = new Buffer();
        bufferedSourcePeek.request(j);
        buffer.write((Source) bufferedSourcePeek, Math.min(j, bufferedSourcePeek.getBuffer().size()));
        return ResponseBody.Companion.create(buffer, this.body.contentType(), buffer.size());
    }

    @wp0(name = "priorResponse")
    @z41
    public final Response priorResponse() {
        return this.priorResponse;
    }

    @m41
    @wp0(name = "protocol")
    public final Protocol protocol() {
        return this.protocol;
    }

    @wp0(name = "receivedResponseAtMillis")
    public final long receivedResponseAtMillis() {
        return this.receivedResponseAtMillis;
    }

    @m41
    @wp0(name = "request")
    public final Request request() {
        return this.request;
    }

    @wp0(name = "sentRequestAtMillis")
    public final long sentRequestAtMillis() {
        return this.sentRequestAtMillis;
    }

    @m41
    public String toString() {
        return "Response{protocol=" + this.protocol + ", code=" + this.code + ", message=" + this.message + ", url=" + this.request.url() + MessageFormatter.DELIM_STOP;
    }

    @m41
    public final Headers trailers() throws IOException {
        Exchange exchange = this.exchange;
        if (exchange != null) {
            return exchange.trailers();
        }
        throw new IllegalStateException("trailers not available".toString());
    }

    @m41
    public final List<String> headers(@m41 String name) {
        Csuper.m30700throw(name, "name");
        return this.headers.values(name);
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\"\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b_\u0010`B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b_\u0010NJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\b\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0012\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0012\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001dH\u0016J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0000¢\u0006\u0004\b\"\u0010#J\b\u0010%\u001a\u00020\u0004H\u0016R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\n\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u0010\u000e\u001a\u00020\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000e\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000f\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010\u0017\u001a\u00020?8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR$\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR$\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR$\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010J\u001a\u0004\bO\u0010L\"\u0004\bP\u0010NR$\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010J\u001a\u0004\bQ\u0010L\"\u0004\bR\u0010NR\"\u0010\u001e\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010\u001f\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010S\u001a\u0004\bX\u0010U\"\u0004\bY\u0010WR$\u0010Z\u001a\u0004\u0018\u00010 8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010#¨\u0006a"}, d2 = {"Lokhttp3/Response$Builder;", "", "", "name", "Lokhttp3/Response;", "response", "Landroid/support/v4/ub2;", "checkSupportResponse", "checkPriorResponse", "Lokhttp3/Request;", "request", "Lokhttp3/Protocol;", "protocol", "", "code", "message", "Lokhttp3/Handshake;", "handshake", ES6Iterator.VALUE_PROPERTY, "header", "addHeader", "removeHeader", "Lokhttp3/Headers;", "headers", "Lokhttp3/ResponseBody;", "body", "networkResponse", "cacheResponse", "priorResponse", "", "sentRequestAtMillis", "receivedResponseAtMillis", "Lokhttp3/internal/connection/Exchange;", "deferredTrailers", "initExchange$okhttp", "(Lokhttp3/internal/connection/Exchange;)V", "initExchange", "build", "Lokhttp3/Request;", "getRequest$okhttp", "()Lokhttp3/Request;", "setRequest$okhttp", "(Lokhttp3/Request;)V", "Lokhttp3/Protocol;", "getProtocol$okhttp", "()Lokhttp3/Protocol;", "setProtocol$okhttp", "(Lokhttp3/Protocol;)V", OptRuntime.GeneratorState.resumptionPoint_TYPE, "getCode$okhttp", "()I", "setCode$okhttp", "(I)V", "Ljava/lang/String;", "getMessage$okhttp", "()Ljava/lang/String;", "setMessage$okhttp", "(Ljava/lang/String;)V", "Lokhttp3/Handshake;", "getHandshake$okhttp", "()Lokhttp3/Handshake;", "setHandshake$okhttp", "(Lokhttp3/Handshake;)V", "Lokhttp3/Headers$Builder;", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "Lokhttp3/ResponseBody;", "getBody$okhttp", "()Lokhttp3/ResponseBody;", "setBody$okhttp", "(Lokhttp3/ResponseBody;)V", "Lokhttp3/Response;", "getNetworkResponse$okhttp", "()Lokhttp3/Response;", "setNetworkResponse$okhttp", "(Lokhttp3/Response;)V", "getCacheResponse$okhttp", "setCacheResponse$okhttp", "getPriorResponse$okhttp", "setPriorResponse$okhttp", "J", "getSentRequestAtMillis$okhttp", "()J", "setSentRequestAtMillis$okhttp", "(J)V", "getReceivedResponseAtMillis$okhttp", "setReceivedResponseAtMillis$okhttp", "exchange", "Lokhttp3/internal/connection/Exchange;", "getExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "setExchange$okhttp", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static class Builder {

        @z41
        private ResponseBody body;

        @z41
        private Response cacheResponse;
        private int code;

        @z41
        private Exchange exchange;

        @z41
        private Handshake handshake;

        @m41
        private Headers.Builder headers;

        @z41
        private String message;

        @z41
        private Response networkResponse;

        @z41
        private Response priorResponse;

        @z41
        private Protocol protocol;
        private long receivedResponseAtMillis;

        @z41
        private Request request;
        private long sentRequestAtMillis;

        public Builder() {
            this.code = -1;
            this.headers = new Headers.Builder();
        }

        private final void checkPriorResponse(Response response) {
            if (response != null) {
                if (!(response.body() == null)) {
                    throw new IllegalArgumentException("priorResponse.body != null".toString());
                }
            }
        }

        private final void checkSupportResponse(String str, Response response) {
            if (response != null) {
                if (!(response.body() == null)) {
                    throw new IllegalArgumentException((str + ".body != null").toString());
                }
                if (!(response.networkResponse() == null)) {
                    throw new IllegalArgumentException((str + ".networkResponse != null").toString());
                }
                if (!(response.cacheResponse() == null)) {
                    throw new IllegalArgumentException((str + ".cacheResponse != null").toString());
                }
                if (response.priorResponse() == null) {
                    return;
                }
                throw new IllegalArgumentException((str + ".priorResponse != null").toString());
            }
        }

        @m41
        public Builder addHeader(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            this.headers.add(name, value);
            return this;
        }

        @m41
        public Builder body(@z41 ResponseBody responseBody) {
            this.body = responseBody;
            return this;
        }

        @m41
        public Response build() {
            int i = this.code;
            if (!(i >= 0)) {
                throw new IllegalStateException(("code < 0: " + this.code).toString());
            }
            Request request = this.request;
            if (request == null) {
                throw new IllegalStateException("request == null".toString());
            }
            Protocol protocol = this.protocol;
            if (protocol == null) {
                throw new IllegalStateException("protocol == null".toString());
            }
            String str = this.message;
            if (str != null) {
                return new Response(request, protocol, str, i, this.handshake, this.headers.build(), this.body, this.networkResponse, this.cacheResponse, this.priorResponse, this.sentRequestAtMillis, this.receivedResponseAtMillis, this.exchange);
            }
            throw new IllegalStateException("message == null".toString());
        }

        @m41
        public Builder cacheResponse(@z41 Response response) {
            checkSupportResponse("cacheResponse", response);
            this.cacheResponse = response;
            return this;
        }

        @m41
        public Builder code(int i) {
            this.code = i;
            return this;
        }

        @z41
        public final ResponseBody getBody$okhttp() {
            return this.body;
        }

        @z41
        public final Response getCacheResponse$okhttp() {
            return this.cacheResponse;
        }

        public final int getCode$okhttp() {
            return this.code;
        }

        @z41
        public final Exchange getExchange$okhttp() {
            return this.exchange;
        }

        @z41
        public final Handshake getHandshake$okhttp() {
            return this.handshake;
        }

        @m41
        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        @z41
        public final String getMessage$okhttp() {
            return this.message;
        }

        @z41
        public final Response getNetworkResponse$okhttp() {
            return this.networkResponse;
        }

        @z41
        public final Response getPriorResponse$okhttp() {
            return this.priorResponse;
        }

        @z41
        public final Protocol getProtocol$okhttp() {
            return this.protocol;
        }

        public final long getReceivedResponseAtMillis$okhttp() {
            return this.receivedResponseAtMillis;
        }

        @z41
        public final Request getRequest$okhttp() {
            return this.request;
        }

        public final long getSentRequestAtMillis$okhttp() {
            return this.sentRequestAtMillis;
        }

        @m41
        public Builder handshake(@z41 Handshake handshake) {
            this.handshake = handshake;
            return this;
        }

        @m41
        public Builder header(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            this.headers.set(name, value);
            return this;
        }

        @m41
        public Builder headers(@m41 Headers headers) {
            Csuper.m30700throw(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        public final void initExchange$okhttp(@m41 Exchange deferredTrailers) {
            Csuper.m30700throw(deferredTrailers, "deferredTrailers");
            this.exchange = deferredTrailers;
        }

        @m41
        public Builder message(@m41 String message) {
            Csuper.m30700throw(message, "message");
            this.message = message;
            return this;
        }

        @m41
        public Builder networkResponse(@z41 Response response) {
            checkSupportResponse("networkResponse", response);
            this.networkResponse = response;
            return this;
        }

        @m41
        public Builder priorResponse(@z41 Response response) {
            checkPriorResponse(response);
            this.priorResponse = response;
            return this;
        }

        @m41
        public Builder protocol(@m41 Protocol protocol) {
            Csuper.m30700throw(protocol, "protocol");
            this.protocol = protocol;
            return this;
        }

        @m41
        public Builder receivedResponseAtMillis(long j) {
            this.receivedResponseAtMillis = j;
            return this;
        }

        @m41
        public Builder removeHeader(@m41 String name) {
            Csuper.m30700throw(name, "name");
            this.headers.removeAll(name);
            return this;
        }

        @m41
        public Builder request(@m41 Request request) {
            Csuper.m30700throw(request, "request");
            this.request = request;
            return this;
        }

        @m41
        public Builder sentRequestAtMillis(long j) {
            this.sentRequestAtMillis = j;
            return this;
        }

        public final void setBody$okhttp(@z41 ResponseBody responseBody) {
            this.body = responseBody;
        }

        public final void setCacheResponse$okhttp(@z41 Response response) {
            this.cacheResponse = response;
        }

        public final void setCode$okhttp(int i) {
            this.code = i;
        }

        public final void setExchange$okhttp(@z41 Exchange exchange) {
            this.exchange = exchange;
        }

        public final void setHandshake$okhttp(@z41 Handshake handshake) {
            this.handshake = handshake;
        }

        public final void setHeaders$okhttp(@m41 Headers.Builder builder) {
            Csuper.m30700throw(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMessage$okhttp(@z41 String str) {
            this.message = str;
        }

        public final void setNetworkResponse$okhttp(@z41 Response response) {
            this.networkResponse = response;
        }

        public final void setPriorResponse$okhttp(@z41 Response response) {
            this.priorResponse = response;
        }

        public final void setProtocol$okhttp(@z41 Protocol protocol) {
            this.protocol = protocol;
        }

        public final void setReceivedResponseAtMillis$okhttp(long j) {
            this.receivedResponseAtMillis = j;
        }

        public final void setRequest$okhttp(@z41 Request request) {
            this.request = request;
        }

        public final void setSentRequestAtMillis$okhttp(long j) {
            this.sentRequestAtMillis = j;
        }

        public Builder(@m41 Response response) {
            Csuper.m30700throw(response, "response");
            this.code = -1;
            this.request = response.request();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.handshake = response.handshake();
            this.headers = response.headers().newBuilder();
            this.body = response.body();
            this.networkResponse = response.networkResponse();
            this.cacheResponse = response.cacheResponse();
            this.priorResponse = response.priorResponse();
            this.sentRequestAtMillis = response.sentRequestAtMillis();
            this.receivedResponseAtMillis = response.receivedResponseAtMillis();
            this.exchange = response.exchange();
        }
    }
}
