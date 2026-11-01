package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.ca2;
import android.support.v4.m41;
import android.support.v4.pk0;
import android.support.v4.rx;
import android.support.v4.tp0;
import android.support.v4.wp0;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import okhttp3.internal.Util;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 $2\u00020\u0001:\u0002%$Bs\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\"\u0010#J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\r\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0010\u0010\nJ\u000f\u0010\u0013\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0012\u0010\nJ\u000f\u0010\u0015\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0018\u0010\u0004J\b\u0010\u001b\u001a\u00020\u001aH\u0016R\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001c\u001a\u0004\b\u0005\u0010\u0004R\u0019\u0010\u0007\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001c\u001a\u0004\b\u0007\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\b8\u0007@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001d\u001a\u0004\b\u000b\u0010\nR\u0019\u0010\r\u001a\u00020\b8\u0007@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b\r\u0010\nR\u0019\u0010\u001e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001c\u001a\u0004\b\u001e\u0010\u0004R\u0019\u0010\u001f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001c\u001a\u0004\b\u001f\u0010\u0004R\u0019\u0010\u000f\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u000f\u0010\u0004R\u0019\u0010\u0011\u001a\u00020\b8\u0007@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001d\u001a\u0004\b\u0011\u0010\nR\u0019\u0010\u0013\u001a\u00020\b8\u0007@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001d\u001a\u0004\b\u0013\u0010\nR\u0019\u0010\u0015\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\u0017\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001c\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\u0019\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001c\u001a\u0004\b\u0019\u0010\u0004R\u0018\u0010 \u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006&"}, d2 = {"Lokhttp3/CacheControl;", "", "", "-deprecated_noCache", "()Z", "noCache", "-deprecated_noStore", "noStore", "", "-deprecated_maxAgeSeconds", "()I", "maxAgeSeconds", "-deprecated_sMaxAgeSeconds", "sMaxAgeSeconds", "-deprecated_mustRevalidate", "mustRevalidate", "-deprecated_maxStaleSeconds", "maxStaleSeconds", "-deprecated_minFreshSeconds", "minFreshSeconds", "-deprecated_onlyIfCached", "onlyIfCached", "-deprecated_noTransform", "noTransform", "-deprecated_immutable", "immutable", "", "toString", "Z", OptRuntime.GeneratorState.resumptionPoint_TYPE, "isPrivate", "isPublic", "headerValue", "Ljava/lang/String;", "<init>", "(ZZIIZZZIIZZZLjava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class CacheControl {
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final Companion Companion = new Companion(null);

    @m41
    @tp0
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();

    @m41
    @tp0
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0000J\u0006\u0010\u0006\u001a\u00020\u0000J\u0016\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\u0000J\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u0000J\u0006\u0010\u0010\u001a\u00020\u000fR\u0016\u0010\u0005\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0016\u0010\f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\u0016\u0010\r\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0012R\u0016\u0010\u000e\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0012¨\u0006\u0019"}, d2 = {"Lokhttp3/CacheControl$Builder;", "", "", "", "clampToInt", "noCache", "noStore", "maxAge", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "maxStale", "minFresh", "onlyIfCached", "noTransform", "immutable", "Lokhttp3/CacheControl;", "build", "", "Z", "maxAgeSeconds", OptRuntime.GeneratorState.resumptionPoint_TYPE, "maxStaleSeconds", "minFreshSeconds", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j) {
            if (j > Integer.MAX_VALUE) {
                return Integer.MAX_VALUE;
            }
            return (int) j;
        }

        @m41
        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }

        @m41
        public final Builder immutable() {
            this.immutable = true;
            return this;
        }

        @m41
        public final Builder maxAge(int i, @m41 TimeUnit timeUnit) {
            Csuper.m30700throw(timeUnit, "timeUnit");
            if (i >= 0) {
                this.maxAgeSeconds = clampToInt(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(("maxAge < 0: " + i).toString());
        }

        @m41
        public final Builder maxStale(int i, @m41 TimeUnit timeUnit) {
            Csuper.m30700throw(timeUnit, "timeUnit");
            if (i >= 0) {
                this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(("maxStale < 0: " + i).toString());
        }

        @m41
        public final Builder minFresh(int i, @m41 TimeUnit timeUnit) {
            Csuper.m30700throw(timeUnit, "timeUnit");
            if (i >= 0) {
                this.minFreshSeconds = clampToInt(timeUnit.toSeconds(i));
                return this;
            }
            throw new IllegalArgumentException(("minFresh < 0: " + i).toString());
        }

        @m41
        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        @m41
        public final Builder noStore() {
            this.noStore = true;
            return this;
        }

        @m41
        public final Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        @m41
        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001e\u0010\u0006\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0007R\u0016\u0010\u000b\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\f¨\u0006\u0010"}, d2 = {"Lokhttp3/CacheControl$Companion;", "", "", "characters", "", "startIndex", "indexOfElement", "Lokhttp3/Headers;", "headers", "Lokhttp3/CacheControl;", "parse", "FORCE_CACHE", "Lokhttp3/CacheControl;", "FORCE_NETWORK", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        private final int indexOfElement(String str, String str2, int i) {
            int length = str.length();
            while (i < length) {
                if (Cstatic.h2(str2, str.charAt(i), false, 2, null)) {
                    return i;
                }
                i++;
            }
            return str.length();
        }

        public static /* synthetic */ int indexOfElement$default(Companion companion, String str, String str2, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return companion.indexOfElement(str, str2, i);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00dd  */
        @m41
        @aq0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final CacheControl parse(@m41 Headers headers) {
            int i;
            int i2;
            boolean z;
            int iIndexOfElement;
            String string;
            Headers headers2 = headers;
            Csuper.m30700throw(headers2, "headers");
            int size = headers.size();
            boolean z2 = true;
            int i3 = 0;
            boolean z3 = true;
            String str = null;
            boolean z4 = false;
            boolean z5 = false;
            int nonNegativeInt = -1;
            int nonNegativeInt2 = -1;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            int nonNegativeInt3 = -1;
            int nonNegativeInt4 = -1;
            boolean z9 = false;
            boolean z10 = false;
            boolean z11 = false;
            while (i3 < size) {
                String strName = headers2.name(i3);
                String strValue = headers2.value(i3);
                if (Creturn.X0(strName, pk0.f5048do, z2)) {
                    if (str == null) {
                        str = strValue;
                    }
                    i2 = 0;
                    while (i2 < strValue.length()) {
                        int iIndexOfElement2 = indexOfElement(strValue, "=,;", i2);
                        String strSubstring = strValue.substring(i2, iIndexOfElement2);
                        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type kotlin.CharSequence");
                        String string2 = Cstatic.R4(strSubstring).toString();
                        int i4 = size;
                        if (iIndexOfElement2 != strValue.length()) {
                            z = z3;
                            if (strValue.charAt(iIndexOfElement2) != ',' && strValue.charAt(iIndexOfElement2) != ';') {
                                int iIndexOfNonWhitespace = Util.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                                if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                                    iIndexOfElement = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                                    String strSubstring2 = strValue.substring(iIndexOfNonWhitespace, iIndexOfElement);
                                    Csuper.m30696super(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    Objects.requireNonNull(strSubstring2, "null cannot be cast to non-null type kotlin.CharSequence");
                                    string = Cstatic.R4(strSubstring2).toString();
                                } else {
                                    int i5 = iIndexOfNonWhitespace + 1;
                                    int iD2 = Cstatic.D2(strValue, ca2.f674do, i5, false, 4, null);
                                    string = strValue.substring(i5, iD2);
                                    Csuper.m30696super(string, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                    iIndexOfElement = iD2 + 1;
                                }
                            }
                            z2 = true;
                            if (!Creturn.X0("no-cache", string2, true)) {
                                z4 = true;
                            } else if (Creturn.X0("no-store", string2, true)) {
                                z5 = true;
                            } else if (Creturn.X0("max-age", string2, true)) {
                                nonNegativeInt = Util.toNonNegativeInt(string, -1);
                            } else if (Creturn.X0("s-maxage", string2, true)) {
                                nonNegativeInt2 = Util.toNonNegativeInt(string, -1);
                            } else if (Creturn.X0("private", string2, true)) {
                                z6 = true;
                            } else if (Creturn.X0("public", string2, true)) {
                                z7 = true;
                            } else if (Creturn.X0("must-revalidate", string2, true)) {
                                z8 = true;
                            } else if (Creturn.X0("max-stale", string2, true)) {
                                nonNegativeInt3 = Util.toNonNegativeInt(string, Integer.MAX_VALUE);
                            } else if (Creturn.X0("min-fresh", string2, true)) {
                                nonNegativeInt4 = Util.toNonNegativeInt(string, -1);
                            } else if (Creturn.X0("only-if-cached", string2, true)) {
                                z9 = true;
                            } else if (Creturn.X0("no-transform", string2, true)) {
                                z10 = true;
                            } else if (Creturn.X0("immutable", string2, true)) {
                                z11 = true;
                            }
                            i2 = iIndexOfElement;
                            size = i4;
                            z3 = z;
                        } else {
                            z = z3;
                        }
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string = null;
                        z2 = true;
                        if (!Creturn.X0("no-cache", string2, true)) {
                        }
                        i2 = iIndexOfElement;
                        size = i4;
                        z3 = z;
                    }
                    i = size;
                    i3++;
                    headers2 = headers;
                    size = i;
                } else if (!Creturn.X0(strName, pk0.f5076try, z2)) {
                    i = size;
                    i3++;
                    headers2 = headers;
                    size = i;
                }
                z3 = false;
                i2 = 0;
                while (i2 < strValue.length()) {
                }
                i = size;
                i3++;
                headers2 = headers;
                size = i;
            }
            return new CacheControl(z4, z5, nonNegativeInt, nonNegativeInt2, z6, z7, z8, nonNegativeInt3, nonNegativeInt4, z9, z10, z11, !z3 ? null : str, null);
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    @m41
    @aq0
    public static final CacheControl parse(@m41 Headers headers) {
        return Companion.parse(headers);
    }

    @wp0(name = "-deprecated_immutable")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "immutable", imports = {}))
    public final boolean a() {
        return this.immutable;
    }

    @wp0(name = "-deprecated_maxAgeSeconds")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "maxAgeSeconds", imports = {}))
    public final int b() {
        return this.maxAgeSeconds;
    }

    @wp0(name = "-deprecated_maxStaleSeconds")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "maxStaleSeconds", imports = {}))
    public final int c() {
        return this.maxStaleSeconds;
    }

    @wp0(name = "-deprecated_minFreshSeconds")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "minFreshSeconds", imports = {}))
    public final int d() {
        return this.minFreshSeconds;
    }

    @wp0(name = "-deprecated_mustRevalidate")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "mustRevalidate", imports = {}))
    public final boolean e() {
        return this.mustRevalidate;
    }

    @wp0(name = "-deprecated_noCache")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "noCache", imports = {}))
    public final boolean f() {
        return this.noCache;
    }

    @wp0(name = "-deprecated_noStore")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "noStore", imports = {}))
    public final boolean g() {
        return this.noStore;
    }

    @wp0(name = "-deprecated_noTransform")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "noTransform", imports = {}))
    public final boolean h() {
        return this.noTransform;
    }

    @wp0(name = "-deprecated_onlyIfCached")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "onlyIfCached", imports = {}))
    public final boolean i() {
        return this.onlyIfCached;
    }

    @wp0(name = "immutable")
    public final boolean immutable() {
        return this.immutable;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    @wp0(name = "-deprecated_sMaxAgeSeconds")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "sMaxAgeSeconds", imports = {}))
    public final int j() {
        return this.sMaxAgeSeconds;
    }

    @wp0(name = "maxAgeSeconds")
    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    @wp0(name = "maxStaleSeconds")
    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    @wp0(name = "minFreshSeconds")
    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    @wp0(name = "mustRevalidate")
    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    @wp0(name = "noCache")
    public final boolean noCache() {
        return this.noCache;
    }

    @wp0(name = "noStore")
    public final boolean noStore() {
        return this.noStore;
    }

    @wp0(name = "noTransform")
    public final boolean noTransform() {
        return this.noTransform;
    }

    @wp0(name = "onlyIfCached")
    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    @wp0(name = "sMaxAgeSeconds")
    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    @m41
    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.noCache) {
            sb.append("no-cache, ");
        }
        if (this.noStore) {
            sb.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb.append("max-age=");
            sb.append(this.maxAgeSeconds);
            sb.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb.append("s-maxage=");
            sb.append(this.sMaxAgeSeconds);
            sb.append(", ");
        }
        if (this.isPrivate) {
            sb.append("private, ");
        }
        if (this.isPublic) {
            sb.append("public, ");
        }
        if (this.mustRevalidate) {
            sb.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb.append("max-stale=");
            sb.append(this.maxStaleSeconds);
            sb.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb.append("min-fresh=");
            sb.append(this.minFreshSeconds);
            sb.append(", ");
        }
        if (this.onlyIfCached) {
            sb.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb.append("no-transform, ");
        }
        if (this.immutable) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        this.headerValue = string;
        return string;
    }

    public /* synthetic */ CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, rx rxVar) {
        this(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, str);
    }
}
