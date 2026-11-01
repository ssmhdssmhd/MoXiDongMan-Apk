package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.hy1;
import android.support.v4.m41;
import android.support.v4.on0;
import android.support.v4.pk0;
import android.support.v4.rx;
import android.support.v4.vr;
import android.support.v4.wp0;
import android.support.v4.wr;
import android.support.v4.z41;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cgoto;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jsoup.nodes.Attributes;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0018\u0018\u0000 *2\u00020\u0001:\u0002+*BQ\b\u0002\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\n\u0012\u0006\u0010\u001d\u001a\u00020\n\u0012\u0006\u0010!\u001a\u00020\u0004\u0012\u0006\u0010\u001f\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b(\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0013\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0017J\b\u0010\u000b\u001a\u00020\nH\u0016J\u000f\u0010\u000e\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u001b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u001a\u0010\rJ\u000f\u0010\u001d\u001a\u00020\nH\u0007¢\u0006\u0004\b\u001c\u0010\rJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001e\u0010\u0012J\u000f\u0010!\u001a\u00020\u0004H\u0007¢\u0006\u0004\b \u0010\u0012J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0004H\u0000¢\u0006\u0004\b#\u0010$R\u0019\u0010\u000e\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\u000e\u0010%\u001a\u0004\b\u000e\u0010\rR\u0019\u0010\u0010\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\u0010\u0010%\u001a\u0004\b\u0010\u0010\rR\u0019\u0010\u0017\u001a\u00020\u00148\u0007@\u0006¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b\u0017\u0010\u0016R\u0019\u0010\u001b\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\u001b\u0010%\u001a\u0004\b\u001b\u0010\rR\u0019\u0010\u001d\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\u001d\u0010%\u001a\u0004\b\u001d\u0010\rR\u0019\u0010!\u001a\u00020\u00048\u0007@\u0006¢\u0006\f\n\u0004\b!\u0010'\u001a\u0004\b!\u0010\u0012R\u0019\u0010\u001f\u001a\u00020\u00048\u0007@\u0006¢\u0006\f\n\u0004\b\u001f\u0010'\u001a\u0004\b\u001f\u0010\u0012R\u0019\u0010\u0013\u001a\u00020\u00048\u0007@\u0006¢\u0006\f\n\u0004\b\u0013\u0010'\u001a\u0004\b\u0013\u0010\u0012R\u0019\u0010\u0019\u001a\u00020\u00048\u0007@\u0006¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b\u0019\u0010\u0012¨\u0006,"}, d2 = {"Lokhttp3/Cookie;", "", "Lokhttp3/HttpUrl;", "url", "", "matches", "other", "equals", "", "hashCode", "", "toString", "-deprecated_name", "()Ljava/lang/String;", "name", "-deprecated_value", ES6Iterator.VALUE_PROPERTY, "-deprecated_persistent", "()Z", "persistent", "", "-deprecated_expiresAt", "()J", "expiresAt", "-deprecated_hostOnly", "hostOnly", "-deprecated_domain", "domain", "-deprecated_path", "path", "-deprecated_httpOnly", "httpOnly", "-deprecated_secure", "secure", "forObsoleteRfc2965", "toString$okhttp", "(Z)Ljava/lang/String;", "Ljava/lang/String;", "J", "Z", "<init>", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Cookie {

    @m41
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;

    @m41
    private final String name;

    @m41
    private final String path;
    private final boolean persistent;
    private final boolean secure;

    @m41
    private final String value;
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\u0000J\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000f\u001a\u00020\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0010R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010R\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012¨\u0006\u0016"}, d2 = {"Lokhttp3/Cookie$Builder;", "", "", "domain", "", "hostOnly", "name", ES6Iterator.VALUE_PROPERTY, "", "expiresAt", "hostOnlyDomain", "path", "secure", "httpOnly", "Lokhttp3/Cookie;", "build", "Ljava/lang/String;", "J", "Z", "persistent", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;
        private String name;
        private boolean persistent;
        private boolean secure;
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;
        private String path = on0.f4694final;

        @m41
        public final Cookie build() {
            String str = this.name;
            Objects.requireNonNull(str, "builder.name == null");
            String str2 = this.value;
            Objects.requireNonNull(str2, "builder.value == null");
            long j = this.expiresAt;
            String str3 = this.domain;
            Objects.requireNonNull(str3, "builder.domain == null");
            return new Cookie(str, str2, j, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
        }

        @m41
        public final Builder domain(@m41 String domain) {
            Csuper.m30700throw(domain, "domain");
            return domain(domain, false);
        }

        @m41
        public final Builder expiresAt(long j) {
            if (j <= 0) {
                j = Long.MIN_VALUE;
            }
            if (j > DatesKt.MAX_DATE) {
                j = 253402300799999L;
            }
            this.expiresAt = j;
            this.persistent = true;
            return this;
        }

        @m41
        public final Builder hostOnlyDomain(@m41 String domain) {
            Csuper.m30700throw(domain, "domain");
            return domain(domain, true);
        }

        @m41
        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        @m41
        public final Builder name(@m41 String name) {
            Csuper.m30700throw(name, "name");
            if (!Csuper.m30676else(Cstatic.R4(name).toString(), name)) {
                throw new IllegalArgumentException("name is not trimmed".toString());
            }
            this.name = name;
            return this;
        }

        @m41
        public final Builder path(@m41 String path) {
            Csuper.m30700throw(path, "path");
            if (!Creturn.H1(path, on0.f4694final, false, 2, null)) {
                throw new IllegalArgumentException("path must start with '/'".toString());
            }
            this.path = path;
            return this;
        }

        @m41
        public final Builder secure() {
            this.secure = true;
            return this;
        }

        @m41
        public final Builder value(@m41 String value) {
            Csuper.m30700throw(value, "value");
            if (!Csuper.m30676else(Cstatic.R4(value).toString(), value)) {
                throw new IllegalArgumentException("value is not trimmed".toString());
            }
            this.value = value;
            return this;
        }

        private final Builder domain(String str, boolean z) {
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost != null) {
                this.domain = canonicalHost;
                this.hostOnly = z;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + str);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b'\u0010(J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0002J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002J(\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0002H\u0007J)\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00170\u001e2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0007R\u001e\u0010\"\u001a\n !*\u0004\u0018\u00010 0 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001e\u0010$\u001a\n !*\u0004\u0018\u00010 0 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010#R\u001e\u0010%\u001a\n !*\u0004\u0018\u00010 0 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u001e\u0010&\u001a\n !*\u0004\u0018\u00010 0 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010#¨\u0006)"}, d2 = {"Lokhttp3/Cookie$Companion;", "", "", "urlHost", "domain", "", "domainMatch", "Lokhttp3/HttpUrl;", "url", "path", "pathMatch", ak.aB, "", "pos", "limit", "", "parseExpires", "input", "invert", "dateCharacterOffset", "parseMaxAge", "parseDomain", "setCookie", "Lokhttp3/Cookie;", "parse", "currentTimeMillis", "parse$okhttp", "(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;", "Lokhttp3/Headers;", "headers", "", "parseAll", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "DAY_OF_MONTH_PATTERN", "Ljava/util/regex/Pattern;", "MONTH_PATTERN", "TIME_PATTERN", "YEAR_PATTERN", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        private final int dateCharacterOffset(String str, int i, int i2, boolean z) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && '9' >= cCharAt) || (('a' <= cCharAt && 'z' >= cCharAt) || (('A' <= cCharAt && 'Z' >= cCharAt) || cCharAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean domainMatch(String str, String str2) {
            if (Csuper.m30676else(str, str2)) {
                return true;
            }
            return Creturn.W0(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str);
        }

        private final String parseDomain(String str) {
            if (!(!Creturn.W0(str, ".", false, 2, null))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(Cstatic.p3(str, "."));
            if (canonicalHost != null) {
                return canonicalHost;
            }
            throw new IllegalArgumentException();
        }

        private final long parseExpires(String str, int i, int i2) throws NumberFormatException {
            int iDateCharacterOffset = dateCharacterOffset(str, i, i2, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int iE2 = -1;
            int i6 = -1;
            int i7 = -1;
            while (iDateCharacterOffset < i2) {
                int iDateCharacterOffset2 = dateCharacterOffset(str, iDateCharacterOffset + 1, i2, true);
                matcher.region(iDateCharacterOffset, iDateCharacterOffset2);
                if (i4 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String strGroup = matcher.group(1);
                    Csuper.m30696super(strGroup, "matcher.group(1)");
                    i4 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    Csuper.m30696super(strGroup2, "matcher.group(2)");
                    i6 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    Csuper.m30696super(strGroup3, "matcher.group(3)");
                    i7 = Integer.parseInt(strGroup3);
                } else if (i5 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String strGroup4 = matcher.group(1);
                    Csuper.m30696super(strGroup4, "matcher.group(1)");
                    i5 = Integer.parseInt(strGroup4);
                } else if (iE2 == -1 && matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    String strGroup5 = matcher.group(1);
                    Csuper.m30696super(strGroup5, "matcher.group(1)");
                    Locale locale = Locale.US;
                    Csuper.m30696super(locale, "Locale.US");
                    Objects.requireNonNull(strGroup5, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = strGroup5.toLowerCase(locale);
                    Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    String strPattern = Cookie.MONTH_PATTERN.pattern();
                    Csuper.m30696super(strPattern, "MONTH_PATTERN.pattern()");
                    iE2 = Cstatic.E2(strPattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i3 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                    String strGroup6 = matcher.group(1);
                    Csuper.m30696super(strGroup6, "matcher.group(1)");
                    i3 = Integer.parseInt(strGroup6);
                }
                iDateCharacterOffset = dateCharacterOffset(str, iDateCharacterOffset2 + 1, i2, false);
            }
            if (70 <= i3 && 99 >= i3) {
                i3 += 1900;
            }
            if (i3 >= 0 && 69 >= i3) {
                i3 += 2000;
            }
            if (!(i3 >= 1601)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(iE2 != -1)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(1 <= i5 && 31 >= i5)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i4 >= 0 && 23 >= i4)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i6 >= 0 && 59 >= i6)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(i7 >= 0 && 59 >= i7)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i3);
            gregorianCalendar.set(2, iE2 - 1);
            gregorianCalendar.set(5, i5);
            gregorianCalendar.set(11, i4);
            gregorianCalendar.set(12, i6);
            gregorianCalendar.set(13, i7);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        private final long parseMaxAge(String str) throws NumberFormatException {
            try {
                long j = Long.parseLong(str);
                if (j <= 0) {
                    return Long.MIN_VALUE;
                }
                return j;
            } catch (NumberFormatException e) {
                if (new Cgoto("-?\\d+").matches(str)) {
                    return Creturn.H1(str, "-", false, 2, null) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String strEncodedPath = httpUrl.encodedPath();
            if (Csuper.m30676else(strEncodedPath, str)) {
                return true;
            }
            return Creturn.H1(strEncodedPath, str, false, 2, null) && (Creturn.W0(str, on0.f4694final, false, 2, null) || strEncodedPath.charAt(str.length()) == '/');
        }

        @aq0
        @z41
        public final Cookie parse(@m41 HttpUrl url, @m41 String setCookie) {
            Csuper.m30700throw(url, "url");
            Csuper.m30700throw(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x00dc A[PHI: r1
          0x00dc: PHI (r1v24 long) = (r1v8 long), (r1v11 long) binds: [B:45:0x00da, B:56:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
        @z41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Cookie parse$okhttp(long j, @m41 HttpUrl url, @m41 String setCookie) throws NumberFormatException {
            long j2;
            long j3;
            Cookie cookie;
            String str;
            String str2;
            Csuper.m30700throw(url, "url");
            Csuper.m30700throw(setCookie, "setCookie");
            int iDelimiterOffset$default = Util.delimiterOffset$default(setCookie, ';', 0, 0, 6, (Object) null);
            int iDelimiterOffset$default2 = Util.delimiterOffset$default(setCookie, hy1.f2563new, 0, iDelimiterOffset$default, 2, (Object) null);
            if (iDelimiterOffset$default2 == iDelimiterOffset$default) {
                return null;
            }
            String strTrimSubstring$default = Util.trimSubstring$default(setCookie, 0, iDelimiterOffset$default2, 1, null);
            if ((strTrimSubstring$default.length() == 0) || Util.indexOfControlOrNonAscii(strTrimSubstring$default) != -1) {
                return null;
            }
            String strTrimSubstring = Util.trimSubstring(setCookie, iDelimiterOffset$default2 + 1, iDelimiterOffset$default);
            if (Util.indexOfControlOrNonAscii(strTrimSubstring) != -1) {
                return null;
            }
            int i = iDelimiterOffset$default + 1;
            int length = setCookie.length();
            String domain = null;
            String str3 = null;
            long maxAge = -1;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = true;
            long expires = DatesKt.MAX_DATE;
            while (i < length) {
                int iDelimiterOffset = Util.delimiterOffset(setCookie, ';', i, length);
                int iDelimiterOffset2 = Util.delimiterOffset(setCookie, hy1.f2563new, i, iDelimiterOffset);
                String strTrimSubstring2 = Util.trimSubstring(setCookie, i, iDelimiterOffset2);
                String strTrimSubstring3 = iDelimiterOffset2 < iDelimiterOffset ? Util.trimSubstring(setCookie, iDelimiterOffset2 + 1, iDelimiterOffset) : "";
                if (Creturn.X0(strTrimSubstring2, "expires", true)) {
                    try {
                        expires = parseExpires(strTrimSubstring3, 0, strTrimSubstring3.length());
                        z3 = true;
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                    }
                } else if (Creturn.X0(strTrimSubstring2, "max-age", true)) {
                    maxAge = parseMaxAge(strTrimSubstring3);
                    z3 = true;
                } else if (Creturn.X0(strTrimSubstring2, "domain", true)) {
                    domain = parseDomain(strTrimSubstring3);
                    z4 = false;
                } else if (Creturn.X0(strTrimSubstring2, "path", true)) {
                    str3 = strTrimSubstring3;
                } else if (Creturn.X0(strTrimSubstring2, "secure", true)) {
                    z = true;
                } else if (Creturn.X0(strTrimSubstring2, "httponly", true)) {
                    z2 = true;
                }
                i = iDelimiterOffset + 1;
            }
            long j4 = Long.MIN_VALUE;
            if (maxAge != Long.MIN_VALUE) {
                if (maxAge != -1) {
                    j4 = j + (maxAge <= 9223372036854775L ? maxAge * 1000 : Long.MAX_VALUE);
                    if (j4 >= j) {
                        j3 = DatesKt.MAX_DATE;
                        if (j4 <= DatesKt.MAX_DATE) {
                            j2 = j4;
                        }
                    } else {
                        j3 = DatesKt.MAX_DATE;
                    }
                    j2 = j3;
                } else {
                    j2 = expires;
                }
            }
            String strHost = url.host();
            if (domain == null) {
                str = strHost;
                cookie = null;
            } else {
                if (!domainMatch(strHost, domain)) {
                    return null;
                }
                cookie = null;
                str = domain;
            }
            if (strHost.length() != str.length() && PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(str) == null) {
                return cookie;
            }
            String strSubstring = on0.f4694final;
            String str4 = str3;
            if (str4 == null || !Creturn.H1(str4, on0.f4694final, false, 2, cookie)) {
                String strEncodedPath = url.encodedPath();
                int iR2 = Cstatic.R2(strEncodedPath, Attributes.InternalPrefix, 0, false, 6, null);
                if (iR2 != 0) {
                    Objects.requireNonNull(strEncodedPath, "null cannot be cast to non-null type java.lang.String");
                    strSubstring = strEncodedPath.substring(0, iR2);
                    Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                }
                str2 = strSubstring;
            } else {
                str2 = str4;
            }
            return new Cookie(strTrimSubstring$default, strTrimSubstring, j2, str, str2, z, z2, z3, z4, null);
        }

        @m41
        @aq0
        public final List<Cookie> parseAll(@m41 HttpUrl url, @m41 Headers headers) {
            Csuper.m30700throw(url, "url");
            Csuper.m30700throw(headers, "headers");
            List<String> listValues = headers.values(pk0.M);
            int size = listValues.size();
            ArrayList arrayList = null;
            for (int i = 0; i < size; i++) {
                Cookie cookie = parse(url, listValues.get(i));
                if (cookie != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(cookie);
                }
            }
            if (arrayList == null) {
                return Cthrow.m30175continue();
            }
            List<Cookie> listUnmodifiableList = Collections.unmodifiableList(arrayList);
            Csuper.m30696super(listUnmodifiableList, "Collections.unmodifiableList(cookies)");
            return listUnmodifiableList;
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    private Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.persistent = z3;
        this.hostOnly = z4;
    }

    @aq0
    @z41
    public static final Cookie parse(@m41 HttpUrl httpUrl, @m41 String str) {
        return Companion.parse(httpUrl, str);
    }

    @m41
    @aq0
    public static final List<Cookie> parseAll(@m41 HttpUrl httpUrl, @m41 Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    @m41
    @wp0(name = "-deprecated_domain")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "domain", imports = {}))
    public final String a() {
        return this.domain;
    }

    @wp0(name = "-deprecated_expiresAt")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "expiresAt", imports = {}))
    public final long b() {
        return this.expiresAt;
    }

    @wp0(name = "-deprecated_hostOnly")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "hostOnly", imports = {}))
    public final boolean c() {
        return this.hostOnly;
    }

    @wp0(name = "-deprecated_httpOnly")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "httpOnly", imports = {}))
    public final boolean d() {
        return this.httpOnly;
    }

    @m41
    @wp0(name = "domain")
    public final String domain() {
        return this.domain;
    }

    @m41
    @wp0(name = "-deprecated_name")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "name", imports = {}))
    public final String e() {
        return this.name;
    }

    public boolean equals(@z41 Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Csuper.m30676else(cookie.name, this.name) && Csuper.m30676else(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && Csuper.m30676else(cookie.domain, this.domain) && Csuper.m30676else(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                return true;
            }
        }
        return false;
    }

    @wp0(name = "expiresAt")
    public final long expiresAt() {
        return this.expiresAt;
    }

    @m41
    @wp0(name = "-deprecated_path")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "path", imports = {}))
    public final String f() {
        return this.path;
    }

    @wp0(name = "-deprecated_persistent")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "persistent", imports = {}))
    public final boolean g() {
        return this.persistent;
    }

    @wp0(name = "-deprecated_secure")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "secure", imports = {}))
    public final boolean h() {
        return this.secure;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + vr.m8940do(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + wr.m9263do(this.secure)) * 31) + wr.m9263do(this.httpOnly)) * 31) + wr.m9263do(this.persistent)) * 31) + wr.m9263do(this.hostOnly);
    }

    @wp0(name = "hostOnly")
    public final boolean hostOnly() {
        return this.hostOnly;
    }

    @wp0(name = "httpOnly")
    public final boolean httpOnly() {
        return this.httpOnly;
    }

    @m41
    @wp0(name = "-deprecated_value")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = ES6Iterator.VALUE_PROPERTY, imports = {}))
    public final String i() {
        return this.value;
    }

    public final boolean matches(@m41 HttpUrl url) {
        Csuper.m30700throw(url, "url");
        if ((this.hostOnly ? Csuper.m30676else(url.host(), this.domain) : Companion.domainMatch(url.host(), this.domain)) && Companion.pathMatch(url, this.path)) {
            return !this.secure || url.isHttps();
        }
        return false;
    }

    @m41
    @wp0(name = "name")
    public final String name() {
        return this.name;
    }

    @m41
    @wp0(name = "path")
    public final String path() {
        return this.path;
    }

    @wp0(name = "persistent")
    public final boolean persistent() {
        return this.persistent;
    }

    @wp0(name = "secure")
    public final boolean secure() {
        return this.secure;
    }

    @m41
    public String toString() {
        return toString$okhttp(false);
    }

    @m41
    public final String toString$okhttp(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append(hy1.f2563new);
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.toHttpDateString(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        String string = sb.toString();
        Csuper.m30696super(string, "toString()");
        return string;
    }

    @m41
    @wp0(name = ES6Iterator.VALUE_PROPERTY)
    public final String value() {
        return this.value;
    }

    public /* synthetic */ Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, rx rxVar) {
        this(str, str2, j, str3, str4, z, z2, z3, z4);
    }
}
