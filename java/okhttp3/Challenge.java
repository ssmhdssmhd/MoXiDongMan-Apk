package okhttp3;

import android.support.v4.an1;
import android.support.v4.m41;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cinterface;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0014\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00050\t¢\u0006\u0004\b\u0019\u0010\u001aB\u0019\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000f\u0010\b\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00050\tH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\r\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016R'\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00050\t8G@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\f\u0010\u000bR\u0019\u0010\b\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\b\u0010\u0007R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u00058G@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0007R\u0013\u0010\u0003\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0010¨\u0006\u001c"}, d2 = {"Lokhttp3/Challenge;", "", "Ljava/nio/charset/Charset;", "charset", "withCharset", "", "-deprecated_scheme", "()Ljava/lang/String;", "scheme", "", "-deprecated_authParams", "()Ljava/util/Map;", "authParams", "-deprecated_realm", "realm", "-deprecated_charset", "()Ljava/nio/charset/Charset;", "other", "", "equals", "", "hashCode", "toString", "Ljava/util/Map;", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "(Ljava/lang/String;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Challenge {

    @m41
    private final Map<String, String> authParams;

    @m41
    private final String scheme;

    public Challenge(@m41 String scheme, @m41 Map<String, String> authParams) {
        String lowerCase;
        Csuper.m30700throw(scheme, "scheme");
        Csuper.m30700throw(authParams, "authParams");
        this.scheme = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : authParams.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale US = Locale.US;
                Csuper.m30696super(US, "US");
                lowerCase = key.toLowerCase(US);
                Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            linkedHashMap.put(lowerCase, value);
        }
        Map<String, String> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Csuper.m30696super(mapUnmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.authParams = mapUnmodifiableMap;
    }

    @m41
    @wp0(name = "-deprecated_authParams")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "authParams", imports = {}))
    public final Map<String, String> a() {
        return this.authParams;
    }

    @m41
    @wp0(name = "authParams")
    public final Map<String, String> authParams() {
        return this.authParams;
    }

    @m41
    @wp0(name = "-deprecated_charset")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "charset", imports = {}))
    public final Charset b() {
        return charset();
    }

    @wp0(name = "-deprecated_realm")
    @z41
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "realm", imports = {}))
    public final String c() {
        return realm();
    }

    @m41
    @wp0(name = "charset")
    public final Charset charset() {
        String str = this.authParams.get("charset");
        if (str != null) {
            try {
                Charset charsetForName = Charset.forName(str);
                Csuper.m30696super(charsetForName, "Charset.forName(charset)");
                return charsetForName;
            } catch (Exception unused) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        Csuper.m30696super(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    @m41
    @wp0(name = "-deprecated_scheme")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "scheme", imports = {}))
    public final String d() {
        return this.scheme;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (Csuper.m30676else(challenge.scheme, this.scheme) && Csuper.m30676else(challenge.authParams, this.authParams)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.scheme.hashCode()) * 31) + this.authParams.hashCode();
    }

    @wp0(name = "realm")
    @z41
    public final String realm() {
        return this.authParams.get("realm");
    }

    @m41
    @wp0(name = "scheme")
    public final String scheme() {
        return this.scheme;
    }

    @m41
    public String toString() {
        return this.scheme + " authParams=" + this.authParams;
    }

    @m41
    public final Challenge withCharset(@m41 Charset charset) {
        Csuper.m30700throw(charset, "charset");
        Map mapW = Cinterface.W(this.authParams);
        String strName = charset.name();
        Csuper.m30696super(strName, "charset.name()");
        mapW.put("charset", strName);
        return new Challenge(this.scheme, (Map<String, String>) mapW);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Challenge(@m41 String scheme, @m41 String realm) {
        Csuper.m30700throw(scheme, "scheme");
        Csuper.m30700throw(realm, "realm");
        Map mapSingletonMap = Collections.singletonMap("realm", realm);
        Csuper.m30696super(mapSingletonMap, "singletonMap(\"realm\", realm)");
        this(scheme, (Map<String, String>) mapSingletonMap);
    }
}
