package okhttp3;

import android.support.v4.an1;
import android.support.v4.aq0;
import android.support.v4.bn0;
import android.support.v4.c92;
import android.support.v4.f22;
import android.support.v4.m41;
import android.support.v4.qb1;
import android.support.v4.rx;
import android.support.v4.wp0;
import android.support.v4.z41;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Cgoto;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.Ccase;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\"\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0007\u0018\u0000 '2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002('B\u0017\b\u0002\u0012\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030\"¢\u0006\u0004\b%\u0010&J\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0004\u001a\u00020\u0003J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0007J\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nJ\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0015\u001a\u00020\u0014J\u001b\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0016H\u0096\u0002J\u0006\u0010\u0019\u001a\u00020\u0018J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001e\u001a\u00020\nH\u0016J\b\u0010\u001f\u001a\u00020\u0003H\u0016J\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00120 R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0013\u0010\r\u001a\u00020\n8G@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\f¨\u0006)"}, d2 = {"Lokhttp3/Headers;", "", "Landroid/support/v4/qb1;", "", "name", "get", "Ljava/util/Date;", "getDate", "Ljava/time/Instant;", "getInstant", "", "-deprecated_size", "()I", "size", "index", ES6Iterator.VALUE_PROPERTY, "", "names", "", "values", "", "byteCount", "", "iterator", "Lokhttp3/Headers$Builder;", "newBuilder", "", "other", "", "equals", "hashCode", "toString", "", "toMultimap", "", "namesAndValues", "[Ljava/lang/String;", "<init>", "([Ljava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Headers implements Iterable<qb1<? extends String, ? extends String>>, KMappedMarker {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u0016\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000eJ\u0018\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000fH\u0007J\u0019\u0010\u0010\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000eH\u0086\u0002J\u0019\u0010\u0010\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000fH\u0087\u0002J\u001f\u0010\u0006\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0004\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0002J\u0019\u0010\u0010\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0086\u0002J\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0086\u0002J\u0006\u0010\u0014\u001a\u00020\u000bR\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u00158\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lokhttp3/Headers$Builder;", "", "", "line", "addLenient$okhttp", "(Ljava/lang/String;)Lokhttp3/Headers$Builder;", "addLenient", "add", "name", ES6Iterator.VALUE_PROPERTY, "addUnsafeNonAscii", "Lokhttp3/Headers;", "headers", "addAll", "Ljava/util/Date;", "Ljava/time/Instant;", "set", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;", "removeAll", "get", "build", "", "namesAndValues", "Ljava/util/List;", "getNamesAndValues$okhttp", "()Ljava/util/List;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        @m41
        private final List<String> namesAndValues = new ArrayList(20);

        @m41
        public final Builder add(@m41 String line) {
            Csuper.m30700throw(line, "line");
            int iD2 = Cstatic.D2(line, ':', 0, false, 6, null);
            if (!(iD2 != -1)) {
                throw new IllegalArgumentException(("Unexpected header: " + line).toString());
            }
            String strSubstring = line.substring(0, iD2);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type kotlin.CharSequence");
            String string = Cstatic.R4(strSubstring).toString();
            String strSubstring2 = line.substring(iD2 + 1);
            Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        @m41
        public final Builder addAll(@m41 Headers headers) {
            Csuper.m30700throw(headers, "headers");
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                addLenient$okhttp(headers.name(i), headers.value(i));
            }
            return this;
        }

        @m41
        public final Builder addLenient$okhttp(@m41 String line) {
            Csuper.m30700throw(line, "line");
            int iD2 = Cstatic.D2(line, ':', 1, false, 4, null);
            if (iD2 != -1) {
                String strSubstring = line.substring(0, iD2);
                Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String strSubstring2 = line.substring(iD2 + 1);
                Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (line.charAt(0) == ':') {
                String strSubstring3 = line.substring(1);
                Csuper.m30696super(strSubstring3, "(this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", strSubstring3);
            } else {
                addLenient$okhttp("", line);
            }
            return this;
        }

        @m41
        public final Builder addUnsafeNonAscii(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            Headers.Companion.checkName(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @m41
        public final Headers build() {
            Object[] array = this.namesAndValues.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new Headers((String[]) array, null);
        }

        @z41
        public final String get(@m41 String name) {
            Csuper.m30700throw(name, "name");
            bn0 bn0VarF0 = Ccase.f0(Ccase.j(this.namesAndValues.size() - 2, 0), 2);
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
            while (!Creturn.X0(name, this.namesAndValues.get(iM592do), true)) {
                if (iM592do == iM594if) {
                    return null;
                }
                iM592do += iM593for;
            }
            return this.namesAndValues.get(iM592do + 1);
        }

        @m41
        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        @m41
        public final Builder removeAll(@m41 String name) {
            Csuper.m30700throw(name, "name");
            int i = 0;
            while (i < this.namesAndValues.size()) {
                if (Creturn.X0(name, this.namesAndValues.get(i), true)) {
                    this.namesAndValues.remove(i);
                    this.namesAndValues.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        @m41
        public final Builder set(@m41 String name, @m41 Date value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            set(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder set(@m41 String name, @m41 Instant value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            return set(name, new Date(value.toEpochMilli()));
        }

        @m41
        public final Builder set(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            removeAll(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @m41
        public final Builder add(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            addLenient$okhttp(name, value);
            return this;
        }

        @m41
        public final Builder addLenient$okhttp(@m41 String name, @m41 String value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            this.namesAndValues.add(name);
            this.namesAndValues.add(Cstatic.R4(value).toString());
            return this;
        }

        @m41
        public final Builder add(@m41 String name, @m41 Date value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            add(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @m41
        @IgnoreJRERequirement
        public final Builder add(@m41 String name, @m41 Instant value) {
            Csuper.m30700throw(name, "name");
            Csuper.m30700throw(value, "value");
            add(name, new Date(value.toEpochMilli()));
            return this;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0006\u001a\u0004\u0018\u00010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0003H\u0002J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002J#\u0010\u000f\u001a\u00020\f2\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003H\u0007¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\r\u001a\u00020\f2\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003H\u0007¢\u0006\u0004\b\u0010\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\f*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0011H\u0007¢\u0006\u0004\b\r\u0010\u0012J#\u0010\r\u001a\u00020\f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0011H\u0007¢\u0006\u0004\b\u0010\u0010\u0012¨\u0006\u0017"}, d2 = {"Lokhttp3/Headers$Companion;", "", "", "", "namesAndValues", "name", "get", "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Landroid/support/v4/ub2;", "checkName", ES6Iterator.VALUE_PROPERTY, "checkValue", "Lokhttp3/Headers;", "of", "([Ljava/lang/String;)Lokhttp3/Headers;", "headersOf", "-deprecated_of", "", "(Ljava/util/Map;)Lokhttp3/Headers;", "toHeaders", "headers", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (!(str.length() > 0)) {
                throw new IllegalArgumentException("name is empty".toString());
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (!('!' <= cCharAt && '~' >= cCharAt)) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (!(cCharAt == '\t' || (' ' <= cCharAt && '~' >= cCharAt))) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str2, str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] strArr, String str) {
            bn0 bn0VarF0 = Ccase.f0(Ccase.j(strArr.length - 2, 0), 2);
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
            while (!Creturn.X0(str, strArr[iM592do], true)) {
                if (iM592do == iM594if) {
                    return null;
                }
                iM592do += iM593for;
            }
            return strArr[iM592do + 1];
        }

        @m41
        @wp0(name = "-deprecated_of")
        @Cfor(level = Ctry.ERROR, message = "function name changed", replaceWith = @an1(expression = "headersOf(*namesAndValues)", imports = {}))
        public final Headers b(@m41 String... namesAndValues) {
            Csuper.m30700throw(namesAndValues, "namesAndValues");
            return of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        @m41
        @aq0
        @wp0(name = "of")
        public final Headers of(@m41 String... namesAndValues) throws CloneNotSupportedException {
            Csuper.m30700throw(namesAndValues, "namesAndValues");
            if (!(namesAndValues.length % 2 == 0)) {
                throw new IllegalArgumentException("Expected alternating header names and values".toString());
            }
            Object objClone = namesAndValues.clone();
            Objects.requireNonNull(objClone, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            String[] strArr = (String[]) objClone;
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                if (!(strArr[i] != null)) {
                    throw new IllegalArgumentException("Headers cannot be null".toString());
                }
                String str = strArr[i];
                Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
                strArr[i] = Cstatic.R4(str).toString();
            }
            bn0 bn0VarF0 = Ccase.f0(Ccase.A0(0, strArr.length), 2);
            int iM592do = bn0VarF0.m592do();
            int iM594if = bn0VarF0.m594if();
            int iM593for = bn0VarF0.m593for();
            if (iM593for < 0 ? iM592do >= iM594if : iM592do <= iM594if) {
                while (true) {
                    String str2 = strArr[iM592do];
                    String str3 = strArr[iM592do + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (iM592do == iM594if) {
                        break;
                    }
                    iM592do += iM593for;
                }
            }
            return new Headers(strArr, null);
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }

        @m41
        @wp0(name = "-deprecated_of")
        @Cfor(level = Ctry.ERROR, message = "function moved to extension", replaceWith = @an1(expression = "headers.toHeaders()", imports = {}))
        public final Headers a(@m41 Map<String, String> headers) {
            Csuper.m30700throw(headers, "headers");
            return of(headers);
        }

        @m41
        @aq0
        @wp0(name = "of")
        public final Headers of(@m41 Map<String, String> toHeaders) {
            Csuper.m30700throw(toHeaders, "$this$toHeaders");
            String[] strArr = new String[toHeaders.size() * 2];
            int i = 0;
            for (Map.Entry<String, String> entry : toHeaders.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                Objects.requireNonNull(key, "null cannot be cast to non-null type kotlin.CharSequence");
                String string = Cstatic.R4(key).toString();
                Objects.requireNonNull(value, "null cannot be cast to non-null type kotlin.CharSequence");
                String string2 = Cstatic.R4(value).toString();
                checkName(string);
                checkValue(string2, string);
                strArr[i] = string;
                strArr[i + 1] = string2;
                i += 2;
            }
            return new Headers(strArr, null);
        }
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    @m41
    @aq0
    @wp0(name = "of")
    public static final Headers of(@m41 Map<String, String> map) {
        return Companion.of(map);
    }

    @m41
    @aq0
    @wp0(name = "of")
    public static final Headers of(@m41 String... strArr) {
        return Companion.of(strArr);
    }

    @wp0(name = "-deprecated_size")
    @Cfor(level = Ctry.ERROR, message = "moved to val", replaceWith = @an1(expression = "size", imports = {}))
    public final int a() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        for (int i = 0; i < strArr.length; i++) {
            length += this.namesAndValues[i].length();
        }
        return length;
    }

    public boolean equals(@z41 Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    @z41
    public final String get(@m41 String name) {
        Csuper.m30700throw(name, "name");
        return Companion.get(this.namesAndValues, name);
    }

    @z41
    public final Date getDate(@m41 String name) {
        Csuper.m30700throw(name, "name");
        String str = get(name);
        if (str != null) {
            return DatesKt.toHttpDateOrNull(str);
        }
        return null;
    }

    @z41
    @IgnoreJRERequirement
    public final Instant getInstant(@m41 String name) {
        Csuper.m30700throw(name, "name");
        Date date = getDate(name);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    @m41
    public Iterator<qb1<? extends String, ? extends String>> iterator() {
        int size = size();
        qb1[] qb1VarArr = new qb1[size];
        for (int i = 0; i < size; i++) {
            qb1VarArr[i] = c92.m819do(name(i), value(i));
        }
        return Cgoto.m30666do(qb1VarArr);
    }

    @m41
    public final String name(int i) {
        return this.namesAndValues[i * 2];
    }

    @m41
    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(Creturn.f1(f22.f1678do));
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(name(i));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        Csuper.m30696super(setUnmodifiableSet, "Collections.unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    @m41
    public final Builder newBuilder() {
        Builder builder = new Builder();
        kotlin.collections.Creturn.F(builder.getNamesAndValues$okhttp(), this.namesAndValues);
        return builder;
    }

    @wp0(name = "size")
    public final int size() {
        return this.namesAndValues.length / 2;
    }

    @m41
    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(Creturn.f1(f22.f1678do));
        int size = size();
        for (int i = 0; i < size; i++) {
            String strName = name(i);
            Locale locale = Locale.US;
            Csuper.m30696super(locale, "Locale.US");
            Objects.requireNonNull(strName, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = strName.toLowerCase(locale);
            Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i));
        }
        return treeMap;
    }

    @m41
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(name(i));
            sb.append(": ");
            sb.append(value(i));
            sb.append("\n");
        }
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @m41
    public final String value(int i) {
        return this.namesAndValues[(i * 2) + 1];
    }

    @m41
    public final List<String> values(@m41 String name) {
        Csuper.m30700throw(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (Creturn.X0(name, name(i), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i));
            }
        }
        if (arrayList == null) {
            return Cthrow.m30175continue();
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        Csuper.m30696super(listUnmodifiableList, "Collections.unmodifiableList(result)");
        return listUnmodifiableList;
    }

    public /* synthetic */ Headers(String[] strArr, rx rxVar) {
        this(strArr);
    }
}
