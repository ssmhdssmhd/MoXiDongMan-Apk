package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.bn0;
import android.support.v4.ca2;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.xp0;
import android.support.v4.z41;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.text.Creturn;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB/\b\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000f\u0010\n\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\tJ\b\u0010\r\u001a\u00020\u0005H\u0016J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0016R\u0016\u0010\u0013\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0019\u0010\n\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\n\u0010\tR\u0019\u0010\f\u001a\u00020\u00058\u0007@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0014\u001a\u0004\b\f\u0010\tR\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lokhttp3/MediaType;", "", "Ljava/nio/charset/Charset;", "defaultValue", "charset", "", "name", "parameter", "-deprecated_type", "()Ljava/lang/String;", "type", "-deprecated_subtype", "subtype", "toString", "other", "", "equals", "", "hashCode", "mediaType", "Ljava/lang/String;", "", "parameterNamesAndValues", "[Ljava/lang/String;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private final String mediaType;
    private final String[] parameterNamesAndValues;

    @m41
    private final String subtype;

    @m41
    private final String type;
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0006\u001a\u00020\u0003*\u00020\u0002H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003*\u00020\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\n\u0010\u0005J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u000b\u0010\u0005R\u001e\u0010\u000e\u001a\n \r*\u0004\u0018\u00010\f0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u001e\u0010\u0013\u001a\n \r*\u0004\u0018\u00010\f0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000f¨\u0006\u0016"}, d2 = {"Lokhttp3/MediaType$Companion;", "", "", "Lokhttp3/MediaType;", "get", "(Ljava/lang/String;)Lokhttp3/MediaType;", "toMediaType", "parse", "toMediaTypeOrNull", "mediaType", "-deprecated_get", "-deprecated_parse", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "PARAMETER", "Ljava/util/regex/Pattern;", "QUOTED", "Ljava/lang/String;", "TOKEN", "TYPE_SUBTYPE", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        @m41
        @wp0(name = "-deprecated_get")
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "mediaType.toMediaType()", imports = {"okhttp3.MediaType.Companion.toMediaType"}))
        public final MediaType a(@m41 String mediaType) {
            Csuper.m30700throw(mediaType, "mediaType");
            return get(mediaType);
        }

        @wp0(name = "-deprecated_parse")
        @z41
        @Cfor(level = Ctry.ERROR, message = "moved to extension function", replaceWith = @an1(expression = "mediaType.toMediaTypeOrNull()", imports = {"okhttp3.MediaType.Companion.toMediaTypeOrNull"}))
        public final MediaType b(@m41 String mediaType) {
            Csuper.m30700throw(mediaType, "mediaType");
            return parse(mediaType);
        }

        @m41
        @aq0
        @wp0(name = "get")
        public final MediaType get(@m41 String toMediaType) {
            Csuper.m30700throw(toMediaType, "$this$toMediaType");
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(toMediaType);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + toMediaType + ca2.f674do).toString());
            }
            String strGroup = matcher.group(1);
            Csuper.m30696super(strGroup, "typeSubtype.group(1)");
            Locale locale = Locale.US;
            Csuper.m30696super(locale, "Locale.US");
            Objects.requireNonNull(strGroup, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = strGroup.toLowerCase(locale);
            Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            String strGroup2 = matcher.group(2);
            Csuper.m30696super(strGroup2, "typeSubtype.group(2)");
            Csuper.m30696super(locale, "Locale.US");
            Objects.requireNonNull(strGroup2, "null cannot be cast to non-null type java.lang.String");
            String lowerCase2 = strGroup2.toLowerCase(locale);
            Csuper.m30696super(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = MediaType.PARAMETER.matcher(toMediaType);
            int iEnd = matcher.end();
            while (iEnd < toMediaType.length()) {
                matcher2.region(iEnd, toMediaType.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Parameter is not formatted correctly: \"");
                    String strSubstring = toMediaType.substring(iEnd);
                    Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    sb.append(strSubstring);
                    sb.append("\" for: \"");
                    sb.append(toMediaType);
                    sb.append(ca2.f674do);
                    throw new IllegalArgumentException(sb.toString().toString());
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    iEnd = matcher2.end();
                } else {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (Creturn.H1(strGroup4, "'", false, 2, null) && Creturn.W0(strGroup4, "'", false, 2, null) && strGroup4.length() > 2) {
                        strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                        Csuper.m30696super(strGroup4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                    iEnd = matcher2.end();
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new MediaType(toMediaType, lowerCase, lowerCase2, (String[]) array, null);
        }

        @aq0
        @wp0(name = "parse")
        @z41
        public final MediaType parse(@m41 String toMediaTypeOrNull) {
            Csuper.m30700throw(toMediaTypeOrNull, "$this$toMediaTypeOrNull");
            try {
                return get(toMediaTypeOrNull);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    @m41
    @aq0
    @wp0(name = "get")
    public static final MediaType get(@m41 String str) {
        return Companion.get(str);
    }

    @aq0
    @wp0(name = "parse")
    @z41
    public static final MediaType parse(@m41 String str) {
        return Companion.parse(str);
    }

    @m41
    @wp0(name = "-deprecated_subtype")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "subtype", imports = {}))
    public final String a() {
        return this.subtype;
    }

    @m41
    @wp0(name = "-deprecated_type")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "type", imports = {}))
    public final String b() {
        return this.type;
    }

    @z41
    @xp0
    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    @z41
    @xp0
    public final Charset charset(@z41 Charset charset) {
        String strParameter = parameter("charset");
        if (strParameter == null) {
            return charset;
        }
        try {
            return Charset.forName(strParameter);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(@z41 Object obj) {
        return (obj instanceof MediaType) && Csuper.m30676else(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    @z41
    public final String parameter(@m41 String name) {
        Csuper.m30700throw(name, "name");
        bn0 bn0VarF0 = Ccase.f0(Cclass.Xc(this.parameterNamesAndValues), 2);
        int iM592do = bn0VarF0.m592do();
        int iM594if = bn0VarF0.m594if();
        int iM593for = bn0VarF0.m593for();
        if (iM593for >= 0) {
            if (iM592do > iM594if) {
                return null;
            }
        } else if (iM592do < iM594if) {
            return null;
        }
        while (!Creturn.X0(this.parameterNamesAndValues[iM592do], name, true)) {
            if (iM592do == iM594if) {
                return null;
            }
            iM592do += iM593for;
        }
        return this.parameterNamesAndValues[iM592do + 1];
    }

    @m41
    @wp0(name = "subtype")
    public final String subtype() {
        return this.subtype;
    }

    @m41
    public String toString() {
        return this.mediaType;
    }

    @m41
    @wp0(name = "type")
    public final String type() {
        return this.type;
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, rx rxVar) {
        this(str, str2, str3, strArr);
    }
}
