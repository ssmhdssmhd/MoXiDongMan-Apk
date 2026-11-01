package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.bn0;
import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.m41;
import android.support.v4.on0;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.core.app.NotificationCompat;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.collections.c;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.text.Cgoto;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;
import org.bouncycastle.math.Cdo;
import org.jsoup.nodes.Attributes;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;
import sun.security.util.SecurityConstants;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b%\n\u0002\u0010\"\n\u0002\b\u0013\u0018\u0000 P2\u00020\u0001:\u0002QPBc\b\u0000\u0012\u0006\u0010\"\u001a\u00020\n\u0012\u0006\u0010&\u001a\u00020\n\u0012\u0006\u0010*\u001a\u00020\n\u0012\u0006\u0010,\u001a\u00020\n\u0012\u0006\u0010/\u001a\u00020\u000f\u0012\f\u00108\u001a\b\u0012\u0004\u0012\u00020\n0\r\u0012\u0010\u0010M\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\r\u0012\b\u0010F\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0003\u001a\u00020\n¢\u0006\u0004\bN\u0010OJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\r2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0013\u001a\u00020\nJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0014\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0014\u001a\u00020\nJ\u0013\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001b\u001a\u00020\u000fH\u0016J\b\u0010\u001c\u001a\u00020\nH\u0016J\b\u0010\u001d\u001a\u0004\u0018\u00010\nJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001f\u0010\bJ\u000f\u0010\"\u001a\u00020\nH\u0007¢\u0006\u0004\b \u0010!J\u000f\u0010$\u001a\u00020\nH\u0007¢\u0006\u0004\b#\u0010!J\u000f\u0010&\u001a\u00020\nH\u0007¢\u0006\u0004\b%\u0010!J\u000f\u0010(\u001a\u00020\nH\u0007¢\u0006\u0004\b'\u0010!J\u000f\u0010*\u001a\u00020\nH\u0007¢\u0006\u0004\b)\u0010!J\u000f\u0010,\u001a\u00020\nH\u0007¢\u0006\u0004\b+\u0010!J\u000f\u0010/\u001a\u00020\u000fH\u0007¢\u0006\u0004\b-\u0010.J\u000f\u00101\u001a\u00020\u000fH\u0007¢\u0006\u0004\b0\u0010.J\u000f\u00103\u001a\u00020\nH\u0007¢\u0006\u0004\b2\u0010!J\u0015\u00106\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0007¢\u0006\u0004\b4\u00105J\u0015\u00108\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0007¢\u0006\u0004\b7\u00105J\u0011\u0010:\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b9\u0010!J\u0011\u0010<\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b;\u0010!J\u000f\u0010>\u001a\u00020\u000fH\u0007¢\u0006\u0004\b=\u0010.J\u0015\u0010B\u001a\b\u0012\u0004\u0012\u00020\n0?H\u0007¢\u0006\u0004\b@\u0010AJ\u0011\u0010D\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\bC\u0010!J\u0011\u0010F\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\bE\u0010!R\u0019\u0010G\u001a\u00020\u00198\u0006@\u0006¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bG\u0010IR\u0019\u0010\"\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\"\u0010J\u001a\u0004\b\"\u0010!R\u0019\u0010&\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b&\u0010J\u001a\u0004\b&\u0010!R\u0019\u0010*\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b*\u0010J\u001a\u0004\b*\u0010!R\u0019\u0010,\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b,\u0010J\u001a\u0004\b,\u0010!R\u0019\u0010/\u001a\u00020\u000f8\u0007@\u0006¢\u0006\f\n\u0004\b/\u0010K\u001a\u0004\b/\u0010.R\u001f\u00108\u001a\b\u0012\u0004\u0012\u00020\n0\r8\u0007@\u0006¢\u0006\f\n\u0004\b8\u0010L\u001a\u0004\b8\u00105R \u0010M\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010LR\u001b\u0010F\u001a\u0004\u0018\u00010\n8\u0007@\u0006¢\u0006\f\n\u0004\bF\u0010J\u001a\u0004\bF\u0010!R\u0016\u0010\u0003\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010JR\u0013\u0010$\u001a\u00020\n8G@\u0006¢\u0006\u0006\u001a\u0004\b$\u0010!R\u0013\u0010(\u001a\u00020\n8G@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010!R\u0013\u00101\u001a\u00020\u000f8G@\u0006¢\u0006\u0006\u001a\u0004\b1\u0010.R\u0013\u00103\u001a\u00020\n8G@\u0006¢\u0006\u0006\u001a\u0004\b3\u0010!R\u0019\u00106\u001a\b\u0012\u0004\u0012\u00020\n0\r8G@\u0006¢\u0006\u0006\u001a\u0004\b6\u00105R\u0015\u0010:\u001a\u0004\u0018\u00010\n8G@\u0006¢\u0006\u0006\u001a\u0004\b:\u0010!R\u0015\u0010<\u001a\u0004\u0018\u00010\n8G@\u0006¢\u0006\u0006\u001a\u0004\b<\u0010!R\u0013\u0010>\u001a\u00020\u000f8G@\u0006¢\u0006\u0006\u001a\u0004\b>\u0010.R\u0019\u0010B\u001a\b\u0012\u0004\u0012\u00020\n0?8G@\u0006¢\u0006\u0006\u001a\u0004\bB\u0010AR\u0015\u0010D\u001a\u0004\u0018\u00010\n8G@\u0006¢\u0006\u0006\u001a\u0004\bD\u0010!¨\u0006R"}, d2 = {"Lokhttp3/HttpUrl;", "", "Ljava/net/URL;", "url", "()Ljava/net/URL;", "toUrl", "Ljava/net/URI;", NotificationCompat.MessagingStyle.Message.KEY_DATA_URI, "()Ljava/net/URI;", "toUri", "", "name", "queryParameter", "", "queryParameterValues", "", "index", "queryParameterName", "queryParameterValue", "redact", "link", SecurityConstants.SOCKET_RESOLVE_ACTION, "Lokhttp3/HttpUrl$Builder;", "newBuilder", "other", "", "equals", "hashCode", "toString", "topPrivateDomain", "-deprecated_url", "-deprecated_uri", "-deprecated_scheme", "()Ljava/lang/String;", "scheme", "-deprecated_encodedUsername", "encodedUsername", "-deprecated_username", "username", "-deprecated_encodedPassword", "encodedPassword", "-deprecated_password", "password", "-deprecated_host", "host", "-deprecated_port", "()I", "port", "-deprecated_pathSize", "pathSize", "-deprecated_encodedPath", "encodedPath", "-deprecated_encodedPathSegments", "()Ljava/util/List;", "encodedPathSegments", "-deprecated_pathSegments", "pathSegments", "-deprecated_encodedQuery", "encodedQuery", "-deprecated_query", "query", "-deprecated_querySize", "querySize", "", "-deprecated_queryParameterNames", "()Ljava/util/Set;", "queryParameterNames", "-deprecated_encodedFragment", "encodedFragment", "-deprecated_fragment", "fragment", "isHttps", "Z", "()Z", "Ljava/lang/String;", OptRuntime.GeneratorState.resumptionPoint_TYPE, "Ljava/util/List;", "queryNamesAndValues", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class HttpUrl {

    @m41
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";

    @m41
    public static final String FRAGMENT_ENCODE_SET = "";

    @m41
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";

    @m41
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";

    @m41
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";

    @m41
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";

    @m41
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";

    @m41
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";

    @m41
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";

    @m41
    public static final String QUERY_ENCODE_SET = " \"'<>#";

    @m41
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";

    @z41
    private final String fragment;

    @m41
    private final String host;
    private final boolean isHttps;

    @m41
    private final String password;

    @m41
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;

    @m41
    private final String scheme;
    private final String url;

    @m41
    private final String username;
    public static final Companion Companion = new Companion(null);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010!\n\u0002\b\r\u0018\u0000 \\2\u00020\u0001:\u0001\\B\u0007¢\u0006\u0004\bZ\u0010[J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0004H\u0002J \u0010\u000f\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0002J0\u0010\u0012\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\nH\u0002J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0002J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004J\u0016\u0010%\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0002J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u0004J\u0010\u0010(\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010\u0004J\u0010\u0010)\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010\u0004J\u0018\u0010,\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u00042\b\u0010+\u001a\u0004\u0018\u00010\u0004J\u0018\u0010/\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u00042\b\u0010.\u001a\u0004\u0018\u00010\u0004J\u0018\u00100\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u00042\b\u0010+\u001a\u0004\u0018\u00010\u0004J\u0018\u00101\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u00042\b\u0010.\u001a\u0004\u0018\u00010\u0004J\u000e\u00102\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0004J\u000e\u00103\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0004J\u0010\u00104\u001a\u00020\u00002\b\u00104\u001a\u0004\u0018\u00010\u0004J\u0010\u00105\u001a\u00020\u00002\b\u00105\u001a\u0004\u0018\u00010\u0004J\u000f\u00108\u001a\u00020\u0000H\u0000¢\u0006\u0004\b6\u00107J\u0006\u0010:\u001a\u000209J\b\u0010;\u001a\u00020\u0004H\u0016J!\u0010?\u001a\u00020\u00002\b\u0010<\u001a\u0004\u0018\u0001092\u0006\u0010\f\u001a\u00020\u0004H\u0000¢\u0006\u0004\b=\u0010>R$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010\u0018\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010@\u001a\u0004\bE\u0010B\"\u0004\bF\u0010DR\"\u0010\u001a\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010@\u001a\u0004\bG\u0010B\"\u0004\bH\u0010DR$\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010@\u001a\u0004\bI\u0010B\"\u0004\bJ\u0010DR\"\u0010\u001c\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040P8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b!\u0010Q\u001a\u0004\bR\u0010SR,\u0010T\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010P8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bT\u0010Q\u001a\u0004\bU\u0010S\"\u0004\bV\u0010WR$\u00105\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b5\u0010@\u001a\u0004\bX\u0010B\"\u0004\bY\u0010D¨\u0006]"}, d2 = {"Lokhttp3/HttpUrl$Builder;", "", "", "effectivePort", "", "pathSegments", "", "alreadyEncoded", "addPathSegments", "canonicalName", "Landroid/support/v4/ub2;", "removeAllCanonicalQueryParameters", "input", "startPos", "limit", "resolvePath", "pos", "addTrailingSlash", "push", "isDot", "isDotDot", "pop", "scheme", "username", "encodedUsername", "password", "encodedPassword", "host", "port", "pathSegment", "addPathSegment", "encodedPathSegment", "addEncodedPathSegment", "encodedPathSegments", "addEncodedPathSegments", "index", "setPathSegment", "setEncodedPathSegment", "removePathSegment", "encodedPath", "query", "encodedQuery", "name", ES6Iterator.VALUE_PROPERTY, "addQueryParameter", "encodedName", "encodedValue", "addEncodedQueryParameter", "setQueryParameter", "setEncodedQueryParameter", "removeAllQueryParameters", "removeAllEncodedQueryParameters", "fragment", "encodedFragment", "reencodeForUri$okhttp", "()Lokhttp3/HttpUrl$Builder;", "reencodeForUri", "Lokhttp3/HttpUrl;", "build", "toString", "base", "parse$okhttp", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "parse", "Ljava/lang/String;", "getScheme$okhttp", "()Ljava/lang/String;", "setScheme$okhttp", "(Ljava/lang/String;)V", "getEncodedUsername$okhttp", "setEncodedUsername$okhttp", "getEncodedPassword$okhttp", "setEncodedPassword$okhttp", "getHost$okhttp", "setHost$okhttp", OptRuntime.GeneratorState.resumptionPoint_TYPE, "getPort$okhttp", "()I", "setPort$okhttp", "(I)V", "", "Ljava/util/List;", "getEncodedPathSegments$okhttp", "()Ljava/util/List;", "encodedQueryNamesAndValues", "getEncodedQueryNamesAndValues$okhttp", "setEncodedQueryNamesAndValues$okhttp", "(Ljava/util/List;)V", "getEncodedFragment$okhttp", "setEncodedFragment$okhttp", "<init>", "()V", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {
        public static final Companion Companion = new Companion(null);

        @m41
        public static final String INVALID_HOST = "Invalid URL host";

        @z41
        private String encodedFragment;

        @m41
        private final List<String> encodedPathSegments;

        @z41
        private List<String> encodedQueryNamesAndValues;

        @z41
        private String host;

        @z41
        private String scheme;

        @m41
        private String encodedUsername = "";

        @m41
        private String encodedPassword = "";
        private int port = -1;

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u001c\u0010\b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J \u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002R\u0016\u0010\u000b\u001a\u00020\u00028\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lokhttp3/HttpUrl$Builder$Companion;", "", "", "input", "", "pos", "limit", "schemeDelimiterOffset", "slashCount", "portColonOffset", "parsePort", "INVALID_HOST", "Ljava/lang/String;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
        public static final class Companion {
            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i, int i2) throws NumberFormatException {
                try {
                    int i3 = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, "", false, false, false, false, null, 248, null));
                    if (1 <= i3 && 65535 >= i3) {
                        return i3;
                    }
                    return -1;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i, int i2) {
                while (i < i2) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == ':') {
                        return i;
                    }
                    if (cCharAt == '[') {
                        do {
                            i++;
                            if (i < i2) {
                            }
                        } while (str.charAt(i) != ']');
                    }
                    i++;
                }
                return i2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int schemeDelimiterOffset(String str, int i, int i2) {
                if (i2 - i < 2) {
                    return -1;
                }
                char cCharAt = str.charAt(i);
                if ((Csuper.m30692public(cCharAt, 97) < 0 || Csuper.m30692public(cCharAt, 122) > 0) && (Csuper.m30692public(cCharAt, 65) < 0 || Csuper.m30692public(cCharAt, 90) > 0)) {
                    return -1;
                }
                while (true) {
                    i++;
                    if (i >= i2) {
                        return -1;
                    }
                    char cCharAt2 = str.charAt(i);
                    if ('a' > cCharAt2 || 'z' < cCharAt2) {
                        if ('A' > cCharAt2 || 'Z' < cCharAt2) {
                            if ('0' > cCharAt2 || '9' < cCharAt2) {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i;
                                    }
                                    return -1;
                                }
                            }
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i, int i2) {
                int i3 = 0;
                while (i < i2) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i3++;
                    i++;
                }
                return i3;
            }

            public /* synthetic */ Companion(rx rxVar) {
                this();
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private final int effectivePort() {
            int i = this.port;
            if (i != -1) {
                return i;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            Csuper.m30672const(str);
            return companion.defaultPort(str);
        }

        private final boolean isDot(String str) {
            return Csuper.m30676else(str, ".") || Creturn.X0(str, "%2e", true);
        }

        private final boolean isDotDot(String str) {
            return Csuper.m30676else(str, "..") || Creturn.X0(str, "%2e.", true) || Creturn.X0(str, ".%2e", true) || Creturn.X0(str, "%2e%2e", true);
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (!(list.remove(list.size() - 1).length() == 0) || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add("");
            } else {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, "");
            }
        }

        private final void push(String str, int i, int i2, boolean z, boolean z2) {
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, false, null, MountainSceneView.f20267finally, null);
            if (isDot(strCanonicalize$okhttp$default)) {
                return;
            }
            if (isDotDot(strCanonicalize$okhttp$default)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).length() == 0) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, strCanonicalize$okhttp$default);
            } else {
                this.encodedPathSegments.add(strCanonicalize$okhttp$default);
            }
            if (z) {
                this.encodedPathSegments.add("");
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            List<String> list = this.encodedQueryNamesAndValues;
            Csuper.m30672const(list);
            bn0 bn0VarF0 = Ccase.f0(Ccase.j(list.size() - 2, 0), 2);
            int iM592do = bn0VarF0.m592do();
            int iM594if = bn0VarF0.m594if();
            int iM593for = bn0VarF0.m593for();
            if (iM593for >= 0) {
                if (iM592do > iM594if) {
                    return;
                }
            } else if (iM592do < iM594if) {
                return;
            }
            while (true) {
                List<String> list2 = this.encodedQueryNamesAndValues;
                Csuper.m30672const(list2);
                if (Csuper.m30676else(str, list2.get(iM592do))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    Csuper.m30672const(list3);
                    list3.remove(iM592do + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    Csuper.m30672const(list4);
                    list4.remove(iM592do);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    Csuper.m30672const(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (iM592do == iM594if) {
                    return;
                } else {
                    iM592do += iM593for;
                }
            }
        }

        private final void resolvePath(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                if (i3 >= i2) {
                    return;
                }
                i = Util.delimiterOffset(str, "/\\", i3, i2);
                boolean z = i < i2;
                push(str, i3, i, z, true);
                if (z) {
                    i++;
                }
            }
        }

        @m41
        public final Builder addEncodedPathSegment(@m41 String encodedPathSegment) {
            Csuper.m30700throw(encodedPathSegment, "encodedPathSegment");
            push(encodedPathSegment, 0, encodedPathSegment.length(), false, true);
            return this;
        }

        @m41
        public final Builder addEncodedPathSegments(@m41 String encodedPathSegments) {
            Csuper.m30700throw(encodedPathSegments, "encodedPathSegments");
            return addPathSegments(encodedPathSegments, true);
        }

        @m41
        public final Builder addEncodedQueryParameter(@m41 String encodedName, @z41 String str) {
            Csuper.m30700throw(encodedName, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            Csuper.m30672const(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, Cdo.f31781do, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            Csuper.m30672const(list2);
            list2.add(str != null ? Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, Cdo.f31781do, null) : null);
            return this;
        }

        @m41
        public final Builder addPathSegment(@m41 String pathSegment) {
            Csuper.m30700throw(pathSegment, "pathSegment");
            push(pathSegment, 0, pathSegment.length(), false, false);
            return this;
        }

        @m41
        public final Builder addPathSegments(@m41 String pathSegments) {
            Csuper.m30700throw(pathSegments, "pathSegments");
            return addPathSegments(pathSegments, false);
        }

        @m41
        public final Builder addQueryParameter(@m41 String name, @z41 String str) {
            Csuper.m30700throw(name, "name");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            Csuper.m30672const(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            Csuper.m30672const(list2);
            list2.add(str != null ? Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
            return this;
        }

        @m41
        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            Companion companion = HttpUrl.Companion;
            String strPercentDecode$okhttp$default = Companion.percentDecode$okhttp$default(companion, this.encodedUsername, 0, 0, false, 7, null);
            String strPercentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(companion, this.encodedPassword, 0, 0, false, 7, null);
            String str2 = this.host;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iEffectivePort = effectivePort();
            List<String> list = this.encodedPathSegments;
            ArrayList arrayList2 = new ArrayList(kotlin.collections.Cwhile.l(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, (String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                arrayList = new ArrayList(kotlin.collections.Cwhile.l(list2, 10));
                for (String str3 : list2) {
                    arrayList.add(str3 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, true, 3, null) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, strPercentDecode$okhttp$default, strPercentDecode$okhttp$default2, str2, iEffectivePort, arrayList2, arrayList, str4 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str4, 0, 0, false, 7, null) : null, toString());
        }

        @m41
        public final Builder encodedFragment(@z41 String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", true, false, false, true, null, 179, null) : null;
            return this;
        }

        @m41
        public final Builder encodedPassword(@m41 String encodedPassword) {
            Csuper.m30700throw(encodedPassword, "encodedPassword");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPassword, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        @m41
        public final Builder encodedPath(@m41 String encodedPath) {
            Csuper.m30700throw(encodedPath, "encodedPath");
            if (Creturn.H1(encodedPath, on0.f4694final, false, 2, null)) {
                resolvePath(encodedPath, 0, encodedPath.length());
                return this;
            }
            throw new IllegalArgumentException(("unexpected encodedPath: " + encodedPath).toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
        @m41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Builder encodedQuery(@z41 String str) {
            List<String> queryNamesAndValues$okhttp;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, Cdo.f31781do, null);
                queryNamesAndValues$okhttp = strCanonicalize$okhttp$default != null ? companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default) : null;
            }
            this.encodedQueryNamesAndValues = queryNamesAndValues$okhttp;
            return this;
        }

        @m41
        public final Builder encodedUsername(@m41 String encodedUsername) {
            Csuper.m30700throw(encodedUsername, "encodedUsername");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedUsername, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        @m41
        public final Builder fragment(@z41 String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", false, false, false, true, null, 187, null) : null;
            return this;
        }

        @z41
        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        @m41
        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        @m41
        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        @z41
        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        @m41
        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        @z41
        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        @z41
        public final String getScheme$okhttp() {
            return this.scheme;
        }

        @m41
        public final Builder host(@m41 String host) {
            Csuper.m30700throw(host, "host");
            String canonicalHost = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, host, 0, 0, false, 7, null));
            if (canonicalHost != null) {
                this.host = canonicalHost;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + host);
        }

        @m41
        public final Builder parse$okhttp(@z41 HttpUrl httpUrl, @m41 String input) throws NumberFormatException {
            int iDelimiterOffset;
            int i;
            int i2;
            String str;
            int i3;
            String str2;
            int i4;
            boolean z;
            boolean z2;
            Csuper.m30700throw(input, "input");
            int iIndexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(input, 0, 0, 3, null);
            int iIndexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(input, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            Companion companion = Companion;
            int iSchemeDelimiterOffset = companion.schemeDelimiterOffset(input, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            String str3 = "(this as java.lang.Strin…ing(startIndex, endIndex)";
            char c = 65535;
            if (iSchemeDelimiterOffset != -1) {
                if (Creturn.E1(input, "https:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = "https";
                    iIndexOfFirstNonAsciiWhitespace$default += 6;
                } else {
                    if (!Creturn.E1(input, "http:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected URL scheme 'http' or 'https' but was '");
                        String strSubstring = input.substring(0, iSchemeDelimiterOffset);
                        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        sb.append(strSubstring);
                        sb.append("'");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.scheme = "http";
                    iIndexOfFirstNonAsciiWhitespace$default += 5;
                }
            } else {
                if (httpUrl == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.scheme = httpUrl.scheme();
            }
            int iSlashCount = companion.slashCount(input, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            char c2 = '?';
            char c3 = '#';
            if (iSlashCount >= 2 || httpUrl == null || (!Csuper.m30676else(httpUrl.scheme(), this.scheme))) {
                int i5 = iIndexOfFirstNonAsciiWhitespace$default + iSlashCount;
                boolean z3 = false;
                boolean z4 = false;
                while (true) {
                    iDelimiterOffset = Util.delimiterOffset(input, "@/\\?#", i5, iIndexOfLastNonAsciiWhitespace$default);
                    char cCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? input.charAt(iDelimiterOffset) : (char) 65535;
                    if (cCharAt == c || cCharAt == c3 || cCharAt == '/' || cCharAt == '\\' || cCharAt == c2) {
                        break;
                    }
                    if (cCharAt != '@') {
                        str2 = str3;
                        i3 = iIndexOfLastNonAsciiWhitespace$default;
                    } else {
                        if (z3) {
                            i3 = iIndexOfLastNonAsciiWhitespace$default;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(this.encodedPassword);
                            sb2.append("%40");
                            str2 = str3;
                            i4 = iDelimiterOffset;
                            sb2.append(Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i5, iDelimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, MountainSceneView.f20267finally, null));
                            this.encodedPassword = sb2.toString();
                            z = z4;
                        } else {
                            int iDelimiterOffset2 = Util.delimiterOffset(input, ':', i5, iDelimiterOffset);
                            Companion companion2 = HttpUrl.Companion;
                            i3 = iIndexOfLastNonAsciiWhitespace$default;
                            String str4 = str3;
                            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion2, input, i5, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, MountainSceneView.f20267finally, null);
                            if (z4) {
                                strCanonicalize$okhttp$default = this.encodedUsername + "%40" + strCanonicalize$okhttp$default;
                            }
                            this.encodedUsername = strCanonicalize$okhttp$default;
                            if (iDelimiterOffset2 != iDelimiterOffset) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(companion2, input, iDelimiterOffset2 + 1, iDelimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, MountainSceneView.f20267finally, null);
                                z2 = true;
                            } else {
                                z2 = z3;
                            }
                            z3 = z2;
                            str2 = str4;
                            z = true;
                            i4 = iDelimiterOffset;
                        }
                        i5 = i4 + 1;
                        z4 = z;
                    }
                    str3 = str2;
                    iIndexOfLastNonAsciiWhitespace$default = i3;
                    c3 = '#';
                    c2 = '?';
                    c = 65535;
                }
                String str5 = str3;
                i = iIndexOfLastNonAsciiWhitespace$default;
                Companion companion3 = Companion;
                int iPortColonOffset = companion3.portColonOffset(input, i5, iDelimiterOffset);
                int i6 = iPortColonOffset + 1;
                if (i6 < iDelimiterOffset) {
                    i2 = i5;
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, input, i5, iPortColonOffset, false, 4, null));
                    int port = companion3.parsePort(input, i6, iDelimiterOffset);
                    this.port = port;
                    if (!(port != -1)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Invalid URL port: \"");
                        String strSubstring2 = input.substring(i6, iDelimiterOffset);
                        Csuper.m30696super(strSubstring2, str5);
                        sb3.append(strSubstring2);
                        sb3.append(ca2.f674do);
                        throw new IllegalArgumentException(sb3.toString().toString());
                    }
                    str = str5;
                } else {
                    i2 = i5;
                    str = str5;
                    Companion companion4 = HttpUrl.Companion;
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(companion4, input, i2, iPortColonOffset, false, 4, null));
                    String str6 = this.scheme;
                    Csuper.m30672const(str6);
                    this.port = companion4.defaultPort(str6);
                }
                if (!(this.host != null)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Invalid URL host: \"");
                    String strSubstring3 = input.substring(i2, iPortColonOffset);
                    Csuper.m30696super(strSubstring3, str);
                    sb4.append(strSubstring3);
                    sb4.append(ca2.f674do);
                    throw new IllegalArgumentException(sb4.toString().toString());
                }
                iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || input.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                i = iIndexOfLastNonAsciiWhitespace$default;
            }
            int i7 = i;
            int iDelimiterOffset3 = Util.delimiterOffset(input, "?#", iIndexOfFirstNonAsciiWhitespace$default, i7);
            resolvePath(input, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
            if (iDelimiterOffset3 < i7 && input.charAt(iDelimiterOffset3) == '?') {
                int iDelimiterOffset4 = Util.delimiterOffset(input, '#', iDelimiterOffset3, i7);
                Companion companion5 = HttpUrl.Companion;
                this.encodedQueryNamesAndValues = companion5.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion5, input, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < i7 && input.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, iDelimiterOffset3 + 1, i7, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        @m41
        public final Builder password(@m41 String password) {
            Csuper.m30700throw(password, "password");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        @m41
        public final Builder port(int i) {
            if (1 <= i && 65535 >= i) {
                this.port = i;
                return this;
            }
            throw new IllegalArgumentException(("unexpected port: " + i).toString());
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
        @m41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Builder query(@z41 String str) {
            List<String> queryNamesAndValues$okhttp;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null);
                queryNamesAndValues$okhttp = strCanonicalize$okhttp$default != null ? companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default) : null;
            }
            this.encodedQueryNamesAndValues = queryNamesAndValues$okhttp;
            return this;
        }

        @m41
        public final Builder reencodeForUri$okhttp() {
            String str = this.host;
            this.host = str != null ? new Cgoto("[\"<>^`{|}]").replace(str, "") : null;
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                List<String> list = this.encodedPathSegments;
                list.set(i, Companion.canonicalize$okhttp$default(HttpUrl.Companion, list.get(i), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str2 = list2.get(i2);
                    list2.set(i2, str2 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
                }
            }
            String str3 = this.encodedFragment;
            this.encodedFragment = str3 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null) : null;
            return this;
        }

        @m41
        public final Builder removeAllEncodedQueryParameters(@m41 String encodedName) {
            Csuper.m30700throw(encodedName, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, Cdo.f31781do, null));
            return this;
        }

        @m41
        public final Builder removeAllQueryParameters(@m41 String name) {
            Csuper.m30700throw(name, "name");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        @m41
        public final Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        @m41
        public final Builder scheme(@m41 String scheme) {
            Csuper.m30700throw(scheme, "scheme");
            if (Creturn.X0(scheme, "http", true)) {
                this.scheme = "http";
            } else {
                if (!Creturn.X0(scheme, "https", true)) {
                    throw new IllegalArgumentException("unexpected scheme: " + scheme);
                }
                this.scheme = "https";
            }
            return this;
        }

        public final void setEncodedFragment$okhttp(@z41 String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(@m41 String str) {
            Csuper.m30700throw(str, "<set-?>");
            this.encodedPassword = str;
        }

        @m41
        public final Builder setEncodedPathSegment(int i, @m41 String encodedPathSegment) {
            Csuper.m30700throw(encodedPathSegment, "encodedPathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            this.encodedPathSegments.set(i, strCanonicalize$okhttp$default);
            if ((isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) ? false : true) {
                return this;
            }
            throw new IllegalArgumentException(("unexpected path segment: " + encodedPathSegment).toString());
        }

        public final void setEncodedQueryNamesAndValues$okhttp(@z41 List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        @m41
        public final Builder setEncodedQueryParameter(@m41 String encodedName, @z41 String str) {
            Csuper.m30700throw(encodedName, "encodedName");
            removeAllEncodedQueryParameters(encodedName);
            addEncodedQueryParameter(encodedName, str);
            return this;
        }

        public final void setEncodedUsername$okhttp(@m41 String str) {
            Csuper.m30700throw(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(@z41 String str) {
            this.host = str;
        }

        @m41
        public final Builder setPathSegment(int i, @m41 String pathSegment) {
            Csuper.m30700throw(pathSegment, "pathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, pathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
            if ((isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) ? false : true) {
                this.encodedPathSegments.set(i, strCanonicalize$okhttp$default);
                return this;
            }
            throw new IllegalArgumentException(("unexpected path segment: " + pathSegment).toString());
        }

        public final void setPort$okhttp(int i) {
            this.port = i;
        }

        @m41
        public final Builder setQueryParameter(@m41 String name, @z41 String str) {
            Csuper.m30700throw(name, "name");
            removeAllQueryParameters(name);
            addQueryParameter(name, str);
            return this;
        }

        public final void setScheme$okhttp(@z41 String str) {
            this.scheme = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0093  */
        @m41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.scheme;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.encodedUsername.length() > 0) {
                sb.append(this.encodedUsername);
                if (this.encodedPassword.length() > 0) {
                    sb.append(':');
                    sb.append(this.encodedPassword);
                }
                sb.append('@');
            } else {
                if (this.encodedPassword.length() > 0) {
                }
            }
            String str2 = this.host;
            if (str2 != null) {
                Csuper.m30672const(str2);
                if (Cstatic.h2(str2, ':', false, 2, null)) {
                    sb.append('[');
                    sb.append(this.host);
                    sb.append(']');
                } else {
                    sb.append(this.host);
                }
            }
            if (this.port != -1 || this.scheme != null) {
                int iEffectivePort = effectivePort();
                String str3 = this.scheme;
                if (str3 != null) {
                    Companion companion = HttpUrl.Companion;
                    Csuper.m30672const(str3);
                    if (iEffectivePort != companion.defaultPort(str3)) {
                        sb.append(':');
                        sb.append(iEffectivePort);
                    }
                }
            }
            Companion companion2 = HttpUrl.Companion;
            companion2.toPathString$okhttp(this.encodedPathSegments, sb);
            if (this.encodedQueryNamesAndValues != null) {
                sb.append('?');
                List<String> list = this.encodedQueryNamesAndValues;
                Csuper.m30672const(list);
                companion2.toQueryString$okhttp(list, sb);
            }
            if (this.encodedFragment != null) {
                sb.append('#');
                sb.append(this.encodedFragment);
            }
            String string = sb.toString();
            Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }

        @m41
        public final Builder username(@m41 String username) {
            Csuper.m30700throw(username, "username");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        private final Builder addPathSegments(String str, boolean z) {
            int i = 0;
            do {
                int iDelimiterOffset = Util.delimiterOffset(str, "/\\", i, str.length());
                push(str, i, iDelimiterOffset, iDelimiterOffset < str.length(), z);
                i = iDelimiterOffset + 1;
            } while (i <= str.length());
            return this;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0019\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bG\u0010HJ,\u0010\u000b\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u001c\u0010\f\u001a\u00020\b*\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0002JV\u0010\u0014\u001a\u00020\n*\u00020\u00022\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0003H\u0007J%\u0010\u001d\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u00030\u00172\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u0019H\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001f\u001a\u00020\n*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00172\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u0019H\u0000¢\u0006\u0004\b\u001e\u0010\u001cJ\u001b\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030 *\u00020\u0003H\u0000¢\u0006\u0004\b!\u0010\"J\u0013\u0010'\u001a\u00020$*\u00020\u0003H\u0007¢\u0006\u0004\b%\u0010&J\u0015\u0010)\u001a\u0004\u0018\u00010$*\u00020\u0003H\u0007¢\u0006\u0004\b(\u0010&J\u0015\u0010)\u001a\u0004\u0018\u00010$*\u00020*H\u0007¢\u0006\u0004\b%\u0010+J\u0015\u0010)\u001a\u0004\u0018\u00010$*\u00020,H\u0007¢\u0006\u0004\b%\u0010-J\u0017\u0010%\u001a\u00020$2\u0006\u0010.\u001a\u00020\u0003H\u0007¢\u0006\u0004\b/\u0010&J\u0019\u0010(\u001a\u0004\u0018\u00010$2\u0006\u0010.\u001a\u00020\u0003H\u0007¢\u0006\u0004\b0\u0010&J\u0019\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010.\u001a\u00020*H\u0007¢\u0006\u0004\b/\u0010+J\u0019\u0010%\u001a\u0004\u0018\u00010$2\u0006\u00101\u001a\u00020,H\u0007¢\u0006\u0004\b/\u0010-J1\u00104\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b2\u00103Jc\u00107\u001a\u00020\u0003*\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0004\b5\u00106R\u0016\u00108\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b:\u00109R\u0016\u0010;\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b;\u00109R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b?\u00109R\u0016\u0010@\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b@\u00109R\u0016\u0010A\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bA\u00109R\u0016\u0010B\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bB\u00109R\u0016\u0010C\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bC\u00109R\u0016\u0010D\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bD\u00109R\u0016\u0010E\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bE\u00109R\u0016\u0010F\u001a\u00020\u00038\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\bF\u00109¨\u0006I"}, d2 = {"Lokhttp3/HttpUrl$Companion;", "", "Lokio/Buffer;", "", "encoded", "", "pos", "limit", "", "plusIsSpace", "Landroid/support/v4/ub2;", "writePercentDecoded", "isPercentEncoded", "input", "encodeSet", "alreadyEncoded", "strict", "unicodeAllowed", "Ljava/nio/charset/Charset;", "charset", "writeCanonicalized", "scheme", "defaultPort", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "out", "toPathString$okhttp", "(Ljava/util/List;Ljava/lang/StringBuilder;)V", "toPathString", "toQueryString$okhttp", "toQueryString", "", "toQueryNamesAndValues$okhttp", "(Ljava/lang/String;)Ljava/util/List;", "toQueryNamesAndValues", "Lokhttp3/HttpUrl;", "get", "(Ljava/lang/String;)Lokhttp3/HttpUrl;", "toHttpUrl", "parse", "toHttpUrlOrNull", "Ljava/net/URL;", "(Ljava/net/URL;)Lokhttp3/HttpUrl;", "Ljava/net/URI;", "(Ljava/net/URI;)Lokhttp3/HttpUrl;", "url", "-deprecated_get", "-deprecated_parse", NotificationCompat.MessagingStyle.Message.KEY_DATA_URI, "percentDecode$okhttp", "(Ljava/lang/String;IIZ)Ljava/lang/String;", "percentDecode", "canonicalize$okhttp", "(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;", "canonicalize", "FORM_ENCODE_SET", "Ljava/lang/String;", "FRAGMENT_ENCODE_SET", "FRAGMENT_ENCODE_SET_URI", "", "HEX_DIGITS", "[C", "PASSWORD_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET_URI", "QUERY_COMPONENT_ENCODE_SET", "QUERY_COMPONENT_ENCODE_SET_URI", "QUERY_COMPONENT_REENCODE_SET", "QUERY_ENCODE_SET", "USERNAME_ENCODE_SET", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
            return companion.canonicalize$okhttp(str, (i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? str.length() : i2, str2, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? false : z3, (i3 & 64) != 0 ? false : z4, (i3 & 128) != 0 ? null : charset);
        }

        private final boolean isPercentEncoded(String str, int i, int i2) {
            int i3 = i + 2;
            return i3 < i2 && str.charAt(i) == '%' && Util.parseHexDigit(str.charAt(i + 1)) != -1 && Util.parseHexDigit(str.charAt(i3)) != -1;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i, int i2, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            return companion.percentDecode$okhttp(str, i, i2, z);
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0096 A[LOOP:1: B:50:0x0090->B:52:0x0096, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final void writeCanonicalized(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
            int iCharCount = i;
            Buffer buffer2 = null;
            while (iCharCount < i2) {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                int iCodePointAt = str.codePointAt(iCharCount);
                if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                    if (iCodePointAt == 43 && z3) {
                        buffer.writeUtf8(z ? "+" : "%2B");
                    } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z4) || Cstatic.h2(str2, (char) iCodePointAt, false, 2, null))) {
                        if (buffer2 == null) {
                            buffer2 = new Buffer();
                        }
                        if (charset != null || Csuper.m30676else(charset, StandardCharsets.UTF_8)) {
                            buffer2.writeUtf8CodePoint(iCodePointAt);
                        } else {
                            buffer2.writeString(str, iCharCount, Character.charCount(iCodePointAt) + iCharCount, charset);
                        }
                        while (!buffer2.exhausted()) {
                            int i3 = buffer2.readByte() & 255;
                            buffer.writeByte(37);
                            buffer.writeByte((int) HttpUrl.HEX_DIGITS[(i3 >> 4) & 15]);
                            buffer.writeByte((int) HttpUrl.HEX_DIGITS[i3 & 15]);
                        }
                    } else if (iCodePointAt != 37) {
                        buffer.writeUtf8CodePoint(iCodePointAt);
                    } else {
                        if (z) {
                            if (z2) {
                                if (!isPercentEncoded(str, iCharCount, i2)) {
                                }
                            }
                            buffer.writeUtf8CodePoint(iCodePointAt);
                        }
                        if (buffer2 == null) {
                        }
                        if (charset != null) {
                            buffer2.writeUtf8CodePoint(iCodePointAt);
                            while (!buffer2.exhausted()) {
                            }
                        }
                    }
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
        }

        private final void writePercentDecoded(Buffer buffer, String str, int i, int i2, boolean z) {
            int i3;
            while (i < i2) {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                int iCodePointAt = str.codePointAt(i);
                if (iCodePointAt == 37 && (i3 = i + 2) < i2) {
                    int hexDigit = Util.parseHexDigit(str.charAt(i + 1));
                    int hexDigit2 = Util.parseHexDigit(str.charAt(i3));
                    if (hexDigit == -1 || hexDigit2 == -1) {
                        buffer.writeUtf8CodePoint(iCodePointAt);
                        i += Character.charCount(iCodePointAt);
                    } else {
                        buffer.writeByte((hexDigit << 4) + hexDigit2);
                        i = Character.charCount(iCodePointAt) + i3;
                    }
                } else if (iCodePointAt == 43 && z) {
                    buffer.writeByte(32);
                    i++;
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                    i += Character.charCount(iCodePointAt);
                }
            }
        }

        @m41
        @wp0(name = "-deprecated_get")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "url.toHttpUrl()", imports = {"okhttp3.HttpUrl.Companion.toHttpUrl"}))
        public final HttpUrl a(@m41 String url) {
            Csuper.m30700throw(url, "url");
            return get(url);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
        @m41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String canonicalize$okhttp(@m41 String canonicalize, int i, int i2, @m41 String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, @z41 Charset charset) {
            Csuper.m30700throw(canonicalize, "$this$canonicalize");
            Csuper.m30700throw(encodeSet, "encodeSet");
            int iCharCount = i;
            while (iCharCount < i2) {
                int iCodePointAt = canonicalize.codePointAt(iCharCount);
                if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || z4) && !Cstatic.h2(encodeSet, (char) iCodePointAt, false, 2, null))) {
                    if (iCodePointAt != 37) {
                        if (iCodePointAt == 43 || !z3) {
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    } else if (z) {
                        if (z2) {
                            if (isPercentEncoded(canonicalize, iCharCount, i2)) {
                            }
                        }
                        if (iCodePointAt == 43) {
                        }
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                    Buffer buffer = new Buffer();
                    buffer.writeUtf8(canonicalize, i, iCharCount);
                    writeCanonicalized(buffer, canonicalize, iCharCount, i2, encodeSet, z, z2, z3, z4, charset);
                    return buffer.readUtf8();
                }
                Buffer buffer2 = new Buffer();
                buffer2.writeUtf8(canonicalize, i, iCharCount);
                writeCanonicalized(buffer2, canonicalize, iCharCount, i2, encodeSet, z, z2, z3, z4, charset);
                return buffer2.readUtf8();
            }
            String strSubstring = canonicalize.substring(i, i2);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return strSubstring;
        }

        @wp0(name = "-deprecated_parse")
        @z41
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "url.toHttpUrlOrNull()", imports = {"okhttp3.HttpUrl.Companion.toHttpUrlOrNull"}))
        public final HttpUrl d(@m41 String url) {
            Csuper.m30700throw(url, "url");
            return parse(url);
        }

        @aq0
        public final int defaultPort(@m41 String scheme) {
            Csuper.m30700throw(scheme, "scheme");
            int iHashCode = scheme.hashCode();
            if (iHashCode != 3213448) {
                if (iHashCode == 99617003 && scheme.equals("https")) {
                    return 443;
                }
            } else if (scheme.equals("http")) {
                return 80;
            }
            return -1;
        }

        @m41
        @aq0
        @wp0(name = "get")
        public final HttpUrl get(@m41 String toHttpUrl) {
            Csuper.m30700throw(toHttpUrl, "$this$toHttpUrl");
            return new Builder().parse$okhttp(null, toHttpUrl).build();
        }

        @aq0
        @wp0(name = "parse")
        @z41
        public final HttpUrl parse(@m41 String toHttpUrlOrNull) {
            Csuper.m30700throw(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            try {
                return get(toHttpUrlOrNull);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @m41
        public final String percentDecode$okhttp(@m41 String percentDecode, int i, int i2, boolean z) {
            Csuper.m30700throw(percentDecode, "$this$percentDecode");
            for (int i3 = i; i3 < i2; i3++) {
                char cCharAt = percentDecode.charAt(i3);
                if (cCharAt == '%' || (cCharAt == '+' && z)) {
                    Buffer buffer = new Buffer();
                    buffer.writeUtf8(percentDecode, i, i3);
                    writePercentDecoded(buffer, percentDecode, i3, i2, z);
                    return buffer.readUtf8();
                }
            }
            String strSubstring = percentDecode.substring(i, i2);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public final void toPathString$okhttp(@m41 List<String> toPathString, @m41 StringBuilder out) {
            Csuper.m30700throw(toPathString, "$this$toPathString");
            Csuper.m30700throw(out, "out");
            int size = toPathString.size();
            for (int i = 0; i < size; i++) {
                out.append(Attributes.InternalPrefix);
                out.append(toPathString.get(i));
            }
        }

        @m41
        public final List<String> toQueryNamesAndValues$okhttp(@m41 String toQueryNamesAndValues) {
            Csuper.m30700throw(toQueryNamesAndValues, "$this$toQueryNamesAndValues");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= toQueryNamesAndValues.length()) {
                int iD2 = Cstatic.D2(toQueryNamesAndValues, ca2.f679for, i, false, 4, null);
                if (iD2 == -1) {
                    iD2 = toQueryNamesAndValues.length();
                }
                int i2 = iD2;
                int iD22 = Cstatic.D2(toQueryNamesAndValues, hy1.f2563new, i, false, 4, null);
                if (iD22 == -1 || iD22 > i2) {
                    String strSubstring = toQueryNamesAndValues.substring(i, i2);
                    Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = toQueryNamesAndValues.substring(i, iD22);
                    Csuper.m30696super(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = toQueryNamesAndValues.substring(iD22 + 1, i2);
                    Csuper.m30696super(strSubstring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                }
                i = i2 + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(@m41 List<String> toQueryString, @m41 StringBuilder out) {
            Csuper.m30700throw(toQueryString, "$this$toQueryString");
            Csuper.m30700throw(out, "out");
            bn0 bn0VarF0 = Ccase.f0(Ccase.A0(0, toQueryString.size()), 2);
            int iM592do = bn0VarF0.m592do();
            int iM594if = bn0VarF0.m594if();
            int iM593for = bn0VarF0.m593for();
            if (iM593for >= 0) {
                if (iM592do > iM594if) {
                    return;
                }
            } else if (iM592do < iM594if) {
                return;
            }
            while (true) {
                String str = toQueryString.get(iM592do);
                String str2 = toQueryString.get(iM592do + 1);
                if (iM592do > 0) {
                    out.append(ca2.f679for);
                }
                out.append(str);
                if (str2 != null) {
                    out.append(hy1.f2563new);
                    out.append(str2);
                }
                if (iM592do == iM594if) {
                    return;
                } else {
                    iM592do += iM593for;
                }
            }
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        @wp0(name = "-deprecated_get")
        @z41
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "url.toHttpUrlOrNull()", imports = {"okhttp3.HttpUrl.Companion.toHttpUrlOrNull"}))
        public final HttpUrl c(@m41 URL url) {
            Csuper.m30700throw(url, "url");
            return get(url);
        }

        @aq0
        @wp0(name = "get")
        @z41
        public final HttpUrl get(@m41 URL toHttpUrlOrNull) {
            Csuper.m30700throw(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            String string = toHttpUrlOrNull.toString();
            Csuper.m30696super(string, "toString()");
            return parse(string);
        }

        @wp0(name = "-deprecated_get")
        @z41
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "uri.toHttpUrlOrNull()", imports = {"okhttp3.HttpUrl.Companion.toHttpUrlOrNull"}))
        public final HttpUrl b(@m41 URI uri) {
            Csuper.m30700throw(uri, "uri");
            return get(uri);
        }

        @aq0
        @wp0(name = "get")
        @z41
        public final HttpUrl get(@m41 URI toHttpUrlOrNull) {
            Csuper.m30700throw(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            String string = toHttpUrlOrNull.toString();
            Csuper.m30696super(string, "toString()");
            return parse(string);
        }
    }

    public HttpUrl(@m41 String scheme, @m41 String username, @m41 String password, @m41 String host, int i, @m41 List<String> pathSegments, @z41 List<String> list, @z41 String str, @m41 String url) {
        Csuper.m30700throw(scheme, "scheme");
        Csuper.m30700throw(username, "username");
        Csuper.m30700throw(password, "password");
        Csuper.m30700throw(host, "host");
        Csuper.m30700throw(pathSegments, "pathSegments");
        Csuper.m30700throw(url, "url");
        this.scheme = scheme;
        this.username = username;
        this.password = password;
        this.host = host;
        this.port = i;
        this.pathSegments = pathSegments;
        this.queryNamesAndValues = list;
        this.fragment = str;
        this.url = url;
        this.isHttps = Csuper.m30676else(scheme, "https");
    }

    @aq0
    public static final int defaultPort(@m41 String str) {
        return Companion.defaultPort(str);
    }

    @m41
    @aq0
    @wp0(name = "get")
    public static final HttpUrl get(@m41 String str) {
        return Companion.get(str);
    }

    @aq0
    @wp0(name = "get")
    @z41
    public static final HttpUrl get(@m41 URI uri) {
        return Companion.get(uri);
    }

    @aq0
    @wp0(name = "get")
    @z41
    public static final HttpUrl get(@m41 URL url) {
        return Companion.get(url);
    }

    @aq0
    @wp0(name = "parse")
    @z41
    public static final HttpUrl parse(@m41 String str) {
        return Companion.parse(str);
    }

    @wp0(name = "-deprecated_encodedFragment")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "encodedFragment", imports = {}))
    public final String a() {
        return encodedFragment();
    }

    @m41
    @wp0(name = "-deprecated_encodedPassword")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "encodedPassword", imports = {}))
    public final String b() {
        return encodedPassword();
    }

    @m41
    @wp0(name = "-deprecated_encodedPath")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "encodedPath", imports = {}))
    public final String c() {
        return encodedPath();
    }

    @m41
    @wp0(name = "-deprecated_encodedPathSegments")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "encodedPathSegments", imports = {}))
    public final List<String> d() {
        return encodedPathSegments();
    }

    @wp0(name = "-deprecated_encodedQuery")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "encodedQuery", imports = {}))
    public final String e() {
        return encodedQuery();
    }

    @wp0(name = "encodedFragment")
    @z41
    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        int iD2 = Cstatic.D2(this.url, '#', 0, false, 6, null) + 1;
        String str = this.url;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iD2);
        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    @m41
    @wp0(name = "encodedPassword")
    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        int iD2 = Cstatic.D2(this.url, ':', this.scheme.length() + 3, false, 4, null) + 1;
        int iD22 = Cstatic.D2(this.url, '@', 0, false, 6, null);
        String str = this.url;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iD2, iD22);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @m41
    @wp0(name = "encodedPath")
    public final String encodedPath() {
        int iD2 = Cstatic.D2(this.url, Attributes.InternalPrefix, this.scheme.length() + 3, false, 4, null);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, "?#", iD2, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(iD2, iDelimiterOffset);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @m41
    @wp0(name = "encodedPathSegments")
    public final List<String> encodedPathSegments() {
        int iD2 = Cstatic.D2(this.url, Attributes.InternalPrefix, this.scheme.length() + 3, false, 4, null);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, "?#", iD2, str.length());
        ArrayList arrayList = new ArrayList();
        while (iD2 < iDelimiterOffset) {
            int i = iD2 + 1;
            int iDelimiterOffset2 = Util.delimiterOffset(this.url, Attributes.InternalPrefix, i, iDelimiterOffset);
            String str2 = this.url;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = str2.substring(i, iDelimiterOffset2);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            iD2 = iDelimiterOffset2;
        }
        return arrayList;
    }

    @wp0(name = "encodedQuery")
    @z41
    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iD2 = Cstatic.D2(this.url, '?', 0, false, 6, null) + 1;
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, '#', iD2, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(iD2, iDelimiterOffset);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @m41
    @wp0(name = "encodedUsername")
    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, ":@", length, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(length, iDelimiterOffset);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public boolean equals(@z41 Object obj) {
        return (obj instanceof HttpUrl) && Csuper.m30676else(((HttpUrl) obj).url, this.url);
    }

    @m41
    @wp0(name = "-deprecated_encodedUsername")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "encodedUsername", imports = {}))
    public final String f() {
        return encodedUsername();
    }

    @wp0(name = "fragment")
    @z41
    public final String fragment() {
        return this.fragment;
    }

    @wp0(name = "-deprecated_fragment")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "fragment", imports = {}))
    public final String g() {
        return this.fragment;
    }

    @m41
    @wp0(name = "-deprecated_host")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "host", imports = {}))
    public final String h() {
        return this.host;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    @m41
    @wp0(name = "host")
    public final String host() {
        return this.host;
    }

    @m41
    @wp0(name = "-deprecated_password")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "password", imports = {}))
    public final String i() {
        return this.password;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    @m41
    @wp0(name = "-deprecated_pathSegments")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "pathSegments", imports = {}))
    public final List<String> j() {
        return this.pathSegments;
    }

    @wp0(name = "-deprecated_pathSize")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "pathSize", imports = {}))
    public final int k() {
        return pathSize();
    }

    @wp0(name = "-deprecated_port")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "port", imports = {}))
    public final int l() {
        return this.port;
    }

    @wp0(name = "-deprecated_query")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "query", imports = {}))
    public final String m() {
        return query();
    }

    @m41
    @wp0(name = "-deprecated_queryParameterNames")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "queryParameterNames", imports = {}))
    public final Set<String> n() {
        return queryParameterNames();
    }

    @m41
    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    @wp0(name = "-deprecated_querySize")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "querySize", imports = {}))
    public final int o() {
        return querySize();
    }

    @m41
    @wp0(name = "-deprecated_scheme")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "scheme", imports = {}))
    public final String p() {
        return this.scheme;
    }

    @m41
    @wp0(name = "password")
    public final String password() {
        return this.password;
    }

    @m41
    @wp0(name = "pathSegments")
    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    @wp0(name = "pathSize")
    public final int pathSize() {
        return this.pathSegments.size();
    }

    @wp0(name = "port")
    public final int port() {
        return this.port;
    }

    @m41
    @wp0(name = "-deprecated_uri")
    @Cfor(level = Ctry.ERROR, message = "moved to toUri()", replaceWith = @an1(expression = "toUri()", imports = {}))
    public final URI q() {
        return uri();
    }

    @wp0(name = "query")
    @z41
    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    @z41
    public final String queryParameter(@m41 String name) {
        Csuper.m30700throw(name, "name");
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        bn0 bn0VarF0 = Ccase.f0(Ccase.A0(0, list.size()), 2);
        int iM592do = bn0VarF0.m592do();
        int iM594if = bn0VarF0.m594if();
        int iM593for = bn0VarF0.m593for();
        if (iM593for < 0 ? iM592do >= iM594if : iM592do <= iM594if) {
            while (!Csuper.m30676else(name, this.queryNamesAndValues.get(iM592do))) {
                if (iM592do != iM594if) {
                    iM592do += iM593for;
                }
            }
            return this.queryNamesAndValues.get(iM592do + 1);
        }
        return null;
    }

    @m41
    public final String queryParameterName(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            throw new IndexOutOfBoundsException();
        }
        String str = list.get(i * 2);
        Csuper.m30672const(str);
        return str;
    }

    @m41
    @wp0(name = "queryParameterNames")
    public final Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return c.m29956catch();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        bn0 bn0VarF0 = Ccase.f0(Ccase.A0(0, this.queryNamesAndValues.size()), 2);
        int iM592do = bn0VarF0.m592do();
        int iM594if = bn0VarF0.m594if();
        int iM593for = bn0VarF0.m593for();
        if (iM593for < 0 ? iM592do >= iM594if : iM592do <= iM594if) {
            while (true) {
                String str = this.queryNamesAndValues.get(iM592do);
                Csuper.m30672const(str);
                linkedHashSet.add(str);
                if (iM592do == iM594if) {
                    break;
                }
                iM592do += iM593for;
            }
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        Csuper.m30696super(setUnmodifiableSet, "Collections.unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    @z41
    public final String queryParameterValue(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    @m41
    public final List<String> queryParameterValues(@m41 String name) {
        Csuper.m30700throw(name, "name");
        if (this.queryNamesAndValues == null) {
            return Cthrow.m30175continue();
        }
        ArrayList arrayList = new ArrayList();
        bn0 bn0VarF0 = Ccase.f0(Ccase.A0(0, this.queryNamesAndValues.size()), 2);
        int iM592do = bn0VarF0.m592do();
        int iM594if = bn0VarF0.m594if();
        int iM593for = bn0VarF0.m593for();
        if (iM593for < 0 ? iM592do >= iM594if : iM592do <= iM594if) {
            while (true) {
                if (Csuper.m30676else(name, this.queryNamesAndValues.get(iM592do))) {
                    arrayList.add(this.queryNamesAndValues.get(iM592do + 1));
                }
                if (iM592do == iM594if) {
                    break;
                }
                iM592do += iM593for;
            }
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        Csuper.m30696super(listUnmodifiableList, "Collections.unmodifiableList(result)");
        return listUnmodifiableList;
    }

    @wp0(name = "querySize")
    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    @m41
    @wp0(name = "-deprecated_url")
    @Cfor(level = Ctry.ERROR, message = "moved to toUrl()", replaceWith = @an1(expression = "toUrl()", imports = {}))
    public final URL r() {
        return url();
    }

    @m41
    public final String redact() {
        Builder builderNewBuilder = newBuilder("/...");
        Csuper.m30672const(builderNewBuilder);
        return builderNewBuilder.username("").password("").build().toString();
    }

    @z41
    public final HttpUrl resolve(@m41 String link) {
        Csuper.m30700throw(link, "link");
        Builder builderNewBuilder = newBuilder(link);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    @m41
    @wp0(name = "-deprecated_username")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "username", imports = {}))
    public final String s() {
        return this.username;
    }

    @m41
    @wp0(name = "scheme")
    public final String scheme() {
        return this.scheme;
    }

    @m41
    public String toString() {
        return this.url;
    }

    @z41
    public final String topPrivateDomain() {
        if (Util.canParseAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    @m41
    @wp0(name = NotificationCompat.MessagingStyle.Message.KEY_DATA_URI)
    public final URI uri() {
        String string = newBuilder().reencodeForUri$okhttp().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                URI uriCreate = URI.create(new Cgoto("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(string, ""));
                Csuper.m30696super(uriCreate, "try {\n        val stripp…e) // Unexpected!\n      }");
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    @m41
    @wp0(name = "url")
    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    @m41
    @wp0(name = "username")
    public final String username() {
        return this.username;
    }

    @z41
    public final Builder newBuilder(@m41 String link) {
        Csuper.m30700throw(link, "link");
        try {
            return new Builder().parse$okhttp(this, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
