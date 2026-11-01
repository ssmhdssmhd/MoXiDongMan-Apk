package kotlin.text;

import android.support.v4.al;
import android.support.v4.an0;
import android.support.v4.an1;
import android.support.v4.f22;
import android.support.v4.gf2;
import android.support.v4.hw0;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;
import kotlin.Cfor;
import kotlin.Cnew;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import org.apache.commons.lang3.Ctry;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0086\u0001\n\u0002\u0010\u000e\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0019\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001d\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a\u001d\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a\u001d\u0010\b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a\u001d\u0010\t\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a \u0010\r\u001a\u00020\u000b*\u0004\u0018\u00010\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a$\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a$\u0010\u0013\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a$\u0010\u0014\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a$\u0010\u0015\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a\r\u0010\u0016\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0018\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\f\u0010\u001b\u001a\u00020\u0000*\u00020\u001aH\u0007\u001a \u0010\u001e\u001a\u00020\u0000*\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u0003H\u0007\u001a \u0010\u001f\u001a\u00020\u001a*\u00020\u00002\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u0003H\u0007\u001a\f\u0010!\u001a\u00020\u0000*\u00020 H\u0007\u001a*\u0010#\u001a\u00020\u0000*\u00020 2\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u000bH\u0007\u001a\f\u0010$\u001a\u00020 *\u00020\u0000H\u0007\u001a*\u0010%\u001a\u00020 *\u00020\u00002\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\"\u001a\u00020\u000bH\u0007\u001a\r\u0010&\u001a\u00020\u001a*\u00020\u0000H\u0087\b\u001a3\u0010)\u001a\u00020\u001a*\u00020\u00002\u0006\u0010'\u001a\u00020\u001a2\b\b\u0002\u0010(\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u0003H\u0087\b\u001a,\u0010-\u001a\u00020\u0000*\u00020\u00002\u0016\u0010,\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010+0*\"\u0004\u0018\u00010+H\u0087\b¢\u0006\u0004\b-\u0010.\u001a4\u00101\u001a\u00020\u0000*\u00020/2\u0006\u00100\u001a\u00020\u00002\u0016\u0010,\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010+0*\"\u0004\u0018\u00010+H\u0087\b¢\u0006\u0004\b1\u00102\u001a4\u00105\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u0002032\u0016\u0010,\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010+0*\"\u0004\u0018\u00010+H\u0087\b¢\u0006\u0004\b5\u00106\u001a6\u00107\u001a\u00020\u0000*\u00020\u00002\b\u00104\u001a\u0004\u0018\u0001032\u0016\u0010,\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010+0*\"\u0004\u0018\u00010+H\u0087\b¢\u0006\u0004\b7\u00106\u001a<\u00108\u001a\u00020\u0000*\u00020/2\u0006\u00104\u001a\u0002032\u0006\u00100\u001a\u00020\u00002\u0016\u0010,\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010+0*\"\u0004\u0018\u00010+H\u0087\b¢\u0006\u0004\b8\u00109\u001a>\u0010:\u001a\u00020\u0000*\u00020/2\b\u00104\u001a\u0004\u0018\u0001032\u0006\u00100\u001a\u00020\u00002\u0016\u0010,\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010+0*\"\u0004\u0018\u00010+H\u0087\b¢\u0006\u0004\b:\u00109\u001a\"\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00000?*\u00020;2\u0006\u0010=\u001a\u00020<2\b\b\u0002\u0010>\u001a\u00020\u0003\u001a\u0015\u0010A\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0003H\u0087\b\u001a\u001d\u0010B\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0003H\u0087\b\u001a\u001c\u0010D\u001a\u00020\u000b*\u00020\u00002\u0006\u0010C\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a$\u0010E\u001a\u00020\u000b*\u00020\u00002\u0006\u0010C\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a\u001c\u0010G\u001a\u00020\u000b*\u00020\u00002\u0006\u0010F\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a)\u0010M\u001a\u00020\u00002\u0006\u0010H\u001a\u00020 2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u00032\u0006\u0010L\u001a\u00020KH\u0087\b\u001a\u0019\u0010N\u001a\u00020\u00002\u0006\u0010H\u001a\u00020 2\u0006\u0010L\u001a\u00020KH\u0087\b\u001a!\u0010O\u001a\u00020\u00002\u0006\u0010H\u001a\u00020 2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u0003H\u0087\b\u001a\u0011\u0010P\u001a\u00020\u00002\u0006\u0010H\u001a\u00020 H\u0087\b\u001a\u0011\u0010R\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u001aH\u0087\b\u001a!\u0010S\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u001a2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u0003H\u0087\b\u001a!\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020T2\u0006\u0010I\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u0003H\u0087\b\u001a\u0011\u0010Y\u001a\u00020\u00002\u0006\u0010X\u001a\u00020WH\u0087\b\u001a\u0011\u0010\\\u001a\u00020\u00002\u0006\u0010[\u001a\u00020ZH\u0087\b\u001a\u0015\u0010^\u001a\u00020\u0003*\u00020\u00002\u0006\u0010]\u001a\u00020\u0003H\u0087\b\u001a\u0015\u0010_\u001a\u00020\u0003*\u00020\u00002\u0006\u0010]\u001a\u00020\u0003H\u0087\b\u001a\u001d\u0010a\u001a\u00020\u0003*\u00020\u00002\u0006\u0010`\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0003H\u0087\b\u001a\u001c\u0010b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a\u0015\u0010d\u001a\u00020\u000b*\u00020\u00002\u0006\u0010c\u001a\u00020;H\u0087\b\u001a\u0015\u0010e\u001a\u00020\u000b*\u00020\u00002\u0006\u0010[\u001a\u00020WH\u0087\b\u001a\u0019\u0010f\u001a\u00020\u000b*\u0004\u0018\u00010;2\b\u0010\n\u001a\u0004\u0018\u00010;H\u0087\u0004\u001a \u0010g\u001a\u00020\u000b*\u0004\u0018\u00010;2\b\u0010\n\u001a\u0004\u0018\u00010;2\u0006\u0010\f\u001a\u00020\u000bH\u0007\u001a\r\u0010h\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\n\u0010i\u001a\u00020\u000b*\u00020;\u001a\u001d\u0010k\u001a\u00020\u0003*\u00020\u00002\u0006\u0010]\u001a\u00020\u00032\u0006\u0010j\u001a\u00020\u0003H\u0087\b\u001a4\u0010n\u001a\u00020\u000b*\u00020;2\u0006\u0010l\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020;2\u0006\u0010m\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a4\u0010o\u001a\u00020\u000b*\u00020\u00002\u0006\u0010l\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u000b\u001a\u0015\u0010p\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0087\b\u001a\u0015\u0010q\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0087\b\u001a\u0015\u0010r\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0087\b\u001a\u0015\u0010s\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0087\b\u001a\u0017\u0010t\u001a\u00020 *\u00020\u00002\b\b\u0002\u0010L\u001a\u00020KH\u0087\b\u001a\u0017\u0010v\u001a\u00020<*\u00020\u00002\b\b\u0002\u0010u\u001a\u00020\u0003H\u0087\b\u001a\f\u0010w\u001a\u00020\u0000*\u00020\u0000H\u0007\u001a\u0014\u0010x\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0007\u001a\f\u0010y\u001a\u00020\u0000*\u00020\u0000H\u0007\u001a\u0014\u0010z\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u000203H\u0007\u001a\u0012\u0010|\u001a\u00020\u0000*\u00020;2\u0006\u0010{\u001a\u00020\u0003\")\u0010\u0081\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u00000}j\b\u0012\u0004\u0012\u00020\u0000`~*\u00020/8F@\u0006¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u0080\u0001¨\u0006\u0082\u0001"}, d2 = {"", "", "ch", "", "fromIndex", "k1", "str", "l1", "m1", "n1", "other", "", "ignoreCase", "X0", "oldChar", "newChar", "u1", "oldValue", "newValue", "v1", "y1", "z1", "V1", "X1", "R1", "i1", "", "G0", "startIndex", "endIndex", "H0", "N1", "", "P0", "throwOnInvalidSequence", "Q0", "S0", "T0", "M1", "destination", "destinationOffset", "O1", "", "", "args", "c1", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lkotlin/String$Companion;", "format", "Z0", "(Landroid/support/v4/f22;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Ljava/util/Locale;", "locale", "b1", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "e1", "a1", "(Landroid/support/v4/f22;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "d1", "", "Ljava/util/regex/Pattern;", "regex", "limit", "", "C1", "I1", "J1", "prefix", "F1", "E1", "suffix", "V0", "bytes", TypedValues.Cycle.S_WAVE_OFFSET, "length", "Ljava/nio/charset/Charset;", "charset", "u0", "v0", "t0", "s0", "chars", "w0", "x0", "", "codePoints", "y0", "Ljava/lang/StringBuffer;", "stringBuffer", "q0", "Ljava/lang/StringBuilder;", "stringBuilder", "r0", "index", "B0", "C0", "beginIndex", "D0", "E0", "charSequence", "L0", "M0", "J0", "K0", "g1", "h1", "codePointOffset", "o1", "thisOffset", "otherOffset", "p1", "q1", "S1", "j1", "W1", "Y1", "K1", "flags", "T1", "z0", "A0", "N0", "O0", "n", "t1", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "f1", "(Landroid/support/v4/f22;)Ljava/util/Comparator;", "CASE_INSENSITIVE_ORDER", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.return, reason: invalid class name */
/* loaded from: classes.dex */
public class Creturn extends Cpublic {
    @m41
    @gf2(markerClass = {Cthis.class})
    @Cfor(message = "Use replaceFirstChar instead.", replaceWith = @an1(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @hw0
    @iz1(version = "1.4")
    @Cnew(warningSince = "1.5")
    public static final String A0(@m41 String capitalize, @m41 Locale locale) {
        Csuper.m30700throw(capitalize, "$this$capitalize");
        Csuper.m30700throw(locale, "locale");
        if (!(capitalize.length() > 0)) {
            return capitalize;
        }
        char cCharAt = capitalize.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return capitalize;
        }
        StringBuilder sb = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb.append(titleCase);
        } else {
            String strSubstring = capitalize.substring(0, 1);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strSubstring.toUpperCase(locale);
            Csuper.m30696super(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            sb.append(upperCase);
        }
        String strSubstring2 = capitalize.substring(1);
        Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring2);
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static /* synthetic */ String A1(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return y1(str, c, c2, z);
    }

    @um0
    private static final int B0(String str, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.codePointAt(i);
    }

    public static /* synthetic */ String B1(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return z1(str, str2, str3, z);
    }

    @um0
    private static final int C0(String str, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.codePointBefore(i);
    }

    @m41
    public static final List<String> C1(@m41 CharSequence split, @m41 Pattern regex, int i) {
        Csuper.m30700throw(split, "$this$split");
        Csuper.m30700throw(regex, "regex");
        Cstatic.Z3(i);
        if (i == 0) {
            i = -1;
        }
        String[] strArrSplit = regex.split(split, i);
        Csuper.m30696super(strArrSplit, "regex.split(this, if (limit == 0) -1 else limit)");
        return Ccatch.m29987public(strArrSplit);
    }

    @um0
    private static final int D0(String str, int i, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.codePointCount(i, i2);
    }

    public static /* synthetic */ List D1(CharSequence charSequence, Pattern pattern, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return C1(charSequence, pattern, i);
    }

    public static final int E0(@m41 String compareTo, @m41 String other, boolean z) {
        Csuper.m30700throw(compareTo, "$this$compareTo");
        Csuper.m30700throw(other, "other");
        return z ? compareTo.compareToIgnoreCase(other) : compareTo.compareTo(other);
    }

    public static boolean E1(@m41 String startsWith, @m41 String prefix, int i, boolean z) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        Csuper.m30700throw(prefix, "prefix");
        return !z ? startsWith.startsWith(prefix, i) : q1(startsWith, i, prefix, 0, prefix.length(), z);
    }

    public static /* synthetic */ int F0(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return E0(str, str2, z);
    }

    public static boolean F1(@m41 String startsWith, @m41 String prefix, boolean z) {
        Csuper.m30700throw(startsWith, "$this$startsWith");
        Csuper.m30700throw(prefix, "prefix");
        return !z ? startsWith.startsWith(prefix) : q1(startsWith, 0, prefix, 0, prefix.length(), z);
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static String G0(@m41 char[] concatToString) {
        Csuper.m30700throw(concatToString, "$this$concatToString");
        return new String(concatToString);
    }

    public static /* synthetic */ boolean G1(String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return E1(str, str2, i, z);
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static String H0(@m41 char[] concatToString, int i, int i2) {
        Csuper.m30700throw(concatToString, "$this$concatToString");
        kotlin.collections.Cnew.Companion.m30120do(i, i2, concatToString.length);
        return new String(concatToString, i, i2 - i);
    }

    public static /* synthetic */ boolean H1(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return F1(str, str2, z);
    }

    public static /* synthetic */ String I0(char[] cArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = cArr.length;
        }
        return H0(cArr, i, i2);
    }

    @um0
    private static final String I1(String str, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i);
        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    @iz1(version = "1.5")
    public static final boolean J0(@z41 CharSequence charSequence, @z41 CharSequence charSequence2) {
        return (!(charSequence instanceof String) || charSequence2 == null) ? Cstatic.k2(charSequence, charSequence2) : ((String) charSequence).contentEquals(charSequence2);
    }

    @um0
    private static final String J1(String str, int i, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(i, i2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @iz1(version = "1.5")
    public static final boolean K0(@z41 CharSequence charSequence, @z41 CharSequence charSequence2, boolean z) {
        return z ? Cstatic.j2(charSequence, charSequence2) : J0(charSequence, charSequence2);
    }

    @um0
    private static final byte[] K1(String str, Charset charset) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @um0
    private static final boolean L0(String str, CharSequence charSequence) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.contentEquals(charSequence);
    }

    public static /* synthetic */ byte[] L1(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = al.f191do;
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @um0
    private static final boolean M0(String str, StringBuffer stringBuffer) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.contentEquals(stringBuffer);
    }

    @um0
    private static final char[] M1(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        char[] charArray = str.toCharArray();
        Csuper.m30696super(charArray, "(this as java.lang.String).toCharArray()");
        return charArray;
    }

    @m41
    @Cfor(message = "Use replaceFirstChar instead.", replaceWith = @an1(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @Cnew(warningSince = "1.5")
    public static final String N0(@m41 String decapitalize) {
        Csuper.m30700throw(decapitalize, "$this$decapitalize");
        if (!(decapitalize.length() > 0) || Character.isLowerCase(decapitalize.charAt(0))) {
            return decapitalize;
        }
        StringBuilder sb = new StringBuilder();
        String strSubstring = decapitalize.substring(0, 1);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase();
        Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase()");
        sb.append(lowerCase);
        String strSubstring2 = decapitalize.substring(1);
        Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring2);
        return sb.toString();
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static final char[] N1(@m41 String toCharArray, int i, int i2) {
        Csuper.m30700throw(toCharArray, "$this$toCharArray");
        kotlin.collections.Cnew.Companion.m30120do(i, i2, toCharArray.length());
        char[] cArr = new char[i2 - i];
        toCharArray.getChars(i, i2, cArr, 0);
        return cArr;
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @Cfor(message = "Use replaceFirstChar instead.", replaceWith = @an1(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @hw0
    @iz1(version = "1.4")
    @Cnew(warningSince = "1.5")
    public static final String O0(@m41 String decapitalize, @m41 Locale locale) {
        Csuper.m30700throw(decapitalize, "$this$decapitalize");
        Csuper.m30700throw(locale, "locale");
        if (!(decapitalize.length() > 0) || Character.isLowerCase(decapitalize.charAt(0))) {
            return decapitalize;
        }
        StringBuilder sb = new StringBuilder();
        String strSubstring = decapitalize.substring(0, 1);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(locale);
        Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        sb.append(lowerCase);
        String strSubstring2 = decapitalize.substring(1);
        Csuper.m30696super(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring2);
        return sb.toString();
    }

    @um0
    private static final char[] O1(String str, char[] cArr, int i, int i2, int i3) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        str.getChars(i2, i3, cArr, i);
        return cArr;
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static final String P0(@m41 byte[] decodeToString) {
        Csuper.m30700throw(decodeToString, "$this$decodeToString");
        return new String(decodeToString, al.f191do);
    }

    public static /* synthetic */ char[] P1(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return N1(str, i, i2);
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static final String Q0(@m41 byte[] decodeToString, int i, int i2, boolean z) {
        Csuper.m30700throw(decodeToString, "$this$decodeToString");
        kotlin.collections.Cnew.Companion.m30120do(i, i2, decodeToString.length);
        if (!z) {
            return new String(decodeToString, i, i2 - i, al.f191do);
        }
        String string = al.f191do.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(decodeToString, i, i2 - i)).toString();
        Csuper.m30696super(string, "decoder.decode(ByteBuffe…- startIndex)).toString()");
        return string;
    }

    public static /* synthetic */ char[] Q1(String str, char[] cArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = str.length();
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        str.getChars(i2, i3, cArr, i);
        return cArr;
    }

    public static /* synthetic */ String R0(byte[] bArr, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return Q0(bArr, i, i2, z);
    }

    @um0
    @Cfor(message = "Use lowercase() instead.", replaceWith = @an1(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @Cnew(warningSince = "1.5")
    private static final String R1(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase()");
        return lowerCase;
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static final byte[] S0(@m41 String encodeToByteArray) {
        Csuper.m30700throw(encodeToByteArray, "$this$encodeToByteArray");
        byte[] bytes = encodeToByteArray.getBytes(al.f191do);
        Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @um0
    @Cfor(message = "Use lowercase() instead.", replaceWith = @an1(expression = "lowercase(locale)", imports = {}))
    @Cnew(warningSince = "1.5")
    private static final String S1(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(locale);
        Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    public static final byte[] T0(@m41 String encodeToByteArray, int i, int i2, boolean z) throws CharacterCodingException {
        Csuper.m30700throw(encodeToByteArray, "$this$encodeToByteArray");
        kotlin.collections.Cnew.Companion.m30120do(i, i2, encodeToByteArray.length());
        if (!z) {
            String strSubstring = encodeToByteArray.substring(i, i2);
            Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Charset charset = al.f191do;
            Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = strSubstring.getBytes(charset);
            Csuper.m30696super(bytes, "(this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        ByteBuffer byteBufferEncode = al.f191do.newEncoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).encode(CharBuffer.wrap(encodeToByteArray, i, i2));
        if (byteBufferEncode.hasArray() && byteBufferEncode.arrayOffset() == 0) {
            int iRemaining = byteBufferEncode.remaining();
            byte[] bArrArray = byteBufferEncode.array();
            Csuper.m30672const(bArrArray);
            if (iRemaining == bArrArray.length) {
                byte[] bArrArray2 = byteBufferEncode.array();
                Csuper.m30696super(bArrArray2, "byteBuffer.array()");
                return bArrArray2;
            }
        }
        byte[] bArr = new byte[byteBufferEncode.remaining()];
        byteBufferEncode.get(bArr);
        return bArr;
    }

    @um0
    private static final Pattern T1(String str, int i) {
        Pattern patternCompile = Pattern.compile(str, i);
        Csuper.m30696super(patternCompile, "java.util.regex.Pattern.compile(this, flags)");
        return patternCompile;
    }

    public static /* synthetic */ byte[] U0(String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return T0(str, i, i2, z);
    }

    public static /* synthetic */ Pattern U1(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        Pattern patternCompile = Pattern.compile(str, i);
        Csuper.m30696super(patternCompile, "java.util.regex.Pattern.compile(this, flags)");
        return patternCompile;
    }

    public static boolean V0(@m41 String endsWith, @m41 String suffix, boolean z) {
        Csuper.m30700throw(endsWith, "$this$endsWith");
        Csuper.m30700throw(suffix, "suffix");
        return !z ? endsWith.endsWith(suffix) : q1(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    @um0
    @Cfor(message = "Use uppercase() instead.", replaceWith = @an1(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @Cnew(warningSince = "1.5")
    private static final String V1(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase();
        Csuper.m30696super(upperCase, "(this as java.lang.String).toUpperCase()");
        return upperCase;
    }

    public static /* synthetic */ boolean W0(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return V0(str, str2, z);
    }

    @um0
    @Cfor(message = "Use uppercase() instead.", replaceWith = @an1(expression = "uppercase(locale)", imports = {}))
    @Cnew(warningSince = "1.5")
    private static final String W1(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        Csuper.m30696super(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    public static boolean X0(@z41 String str, @z41 String str2, boolean z) {
        return str == null ? str2 == null : !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    private static final String X1(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(Locale.ROOT);
        Csuper.m30696super(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    public static /* synthetic */ boolean Y0(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return X0(str, str2, z);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    private static final String Y1(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        Csuper.m30696super(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @um0
    private static final String Z0(f22 f22Var, String str, Object... objArr) {
        String str2 = String.format(str, Arrays.copyOf(objArr, objArr.length));
        Csuper.m30696super(str2, "java.lang.String.format(format, *args)");
        return str2;
    }

    @um0
    @Cfor(message = "Use Kotlin compiler 1.4 to avoid deprecation warning.")
    @Cnew(hiddenSince = "1.4")
    private static final /* synthetic */ String a1(f22 f22Var, Locale locale, String str, Object... objArr) {
        String str2 = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Csuper.m30696super(str2, "java.lang.String.format(locale, format, *args)");
        return str2;
    }

    @um0
    @Cfor(message = "Use Kotlin compiler 1.4 to avoid deprecation warning.")
    @Cnew(hiddenSince = "1.4")
    private static final /* synthetic */ String b1(String str, Locale locale, Object... objArr) {
        String str2 = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Csuper.m30696super(str2, "java.lang.String.format(locale, this, *args)");
        return str2;
    }

    @um0
    private static final String c1(String str, Object... objArr) {
        String str2 = String.format(str, Arrays.copyOf(objArr, objArr.length));
        Csuper.m30696super(str2, "java.lang.String.format(this, *args)");
        return str2;
    }

    @iz1(version = "1.4")
    @um0
    @wp0(name = "formatNullable")
    private static final String d1(f22 f22Var, Locale locale, String str, Object... objArr) {
        String str2 = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Csuper.m30696super(str2, "java.lang.String.format(locale, format, *args)");
        return str2;
    }

    @iz1(version = "1.4")
    @um0
    @wp0(name = "formatNullable")
    private static final String e1(String str, Locale locale, Object... objArr) {
        String str2 = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Csuper.m30696super(str2, "java.lang.String.format(locale, this, *args)");
        return str2;
    }

    @m41
    public static Comparator<String> f1(@m41 f22 CASE_INSENSITIVE_ORDER) {
        Csuper.m30700throw(CASE_INSENSITIVE_ORDER, "$this$CASE_INSENSITIVE_ORDER");
        Comparator<String> comparator = String.CASE_INSENSITIVE_ORDER;
        Csuper.m30696super(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
        return comparator;
    }

    @um0
    private static final String g1(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strIntern = str.intern();
        Csuper.m30696super(strIntern, "(this as java.lang.String).intern()");
        return strIntern;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean h1(@m41 CharSequence isBlank) {
        boolean z;
        Csuper.m30700throw(isBlank, "$this$isBlank");
        if (isBlank.length() != 0) {
            Iterable iterableU2 = Cstatic.u2(isBlank);
            if ((iterableU2 instanceof Collection) && ((Collection) iterableU2).isEmpty()) {
                z = true;
                if (z) {
                }
            } else {
                Iterator it = iterableU2.iterator();
                while (it.hasNext()) {
                    if (!Cnew.m31207import(isBlank.charAt(((an0) it).mo290if()))) {
                        z = false;
                        break;
                    }
                }
                z = true;
                if (z) {
                    return false;
                }
            }
        }
        return true;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    private static final String i1(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Csuper.m30696super(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    private static final String j1(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(locale);
        Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @um0
    private static final int k1(String str, char c, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.indexOf(c, i);
    }

    @um0
    private static final int l1(String str, String str2, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.indexOf(str2, i);
    }

    @um0
    private static final int m1(String str, char c, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.lastIndexOf(c, i);
    }

    @um0
    private static final int n1(String str, String str2, int i) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.lastIndexOf(str2, i);
    }

    @um0
    private static final int o1(String str, int i, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.offsetByCodePoints(i, i2);
    }

    public static final boolean p1(@m41 CharSequence regionMatches, int i, @m41 CharSequence other, int i2, int i3, boolean z) {
        Csuper.m30700throw(regionMatches, "$this$regionMatches");
        Csuper.m30700throw(other, "other");
        return ((regionMatches instanceof String) && (other instanceof String)) ? q1((String) regionMatches, i, (String) other, i2, i3, z) : Cstatic.n3(regionMatches, i, other, i2, i3, z);
    }

    @um0
    private static final String q0(StringBuffer stringBuffer) {
        return new String(stringBuffer);
    }

    public static boolean q1(@m41 String regionMatches, int i, @m41 String other, int i2, int i3, boolean z) {
        Csuper.m30700throw(regionMatches, "$this$regionMatches");
        Csuper.m30700throw(other, "other");
        return !z ? regionMatches.regionMatches(i, other, i2, i3) : regionMatches.regionMatches(z, i, other, i2, i3);
    }

    @um0
    private static final String r0(StringBuilder sb) {
        return new String(sb);
    }

    @um0
    private static final String s0(byte[] bArr) {
        return new String(bArr, al.f191do);
    }

    @um0
    private static final String t0(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, al.f191do);
    }

    @m41
    public static String t1(@m41 CharSequence repeat, int i) {
        Csuper.m30700throw(repeat, "$this$repeat");
        int i2 = 1;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + Ctry.f28883do).toString());
        }
        if (i == 0) {
            return "";
        }
        if (i == 1) {
            return repeat.toString();
        }
        int length = repeat.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = repeat.charAt(0);
            char[] cArr = new char[i];
            for (int i3 = 0; i3 < i; i3++) {
                cArr[i3] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(repeat.length() * i);
        if (1 <= i) {
            while (true) {
                sb.append(repeat);
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        String string = sb.toString();
        Csuper.m30696super(string, "sb.toString()");
        return string;
    }

    @um0
    private static final String u0(byte[] bArr, int i, int i2, Charset charset) {
        return new String(bArr, i, i2, charset);
    }

    @m41
    public static final String u1(@m41 String replace, char c, char c2, boolean z) {
        Csuper.m30700throw(replace, "$this$replace");
        if (!z) {
            String strReplace = replace.replace(c, c2);
            Csuper.m30696super(strReplace, "(this as java.lang.Strin…replace(oldChar, newChar)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(replace.length());
        for (int i = 0; i < replace.length(); i++) {
            char cCharAt = replace.charAt(i);
            if (Ctry.m31247transient(cCharAt, c, z)) {
                cCharAt = c2;
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    @um0
    private static final String v0(byte[] bArr, Charset charset) {
        return new String(bArr, charset);
    }

    @m41
    public static final String v1(@m41 String replace, @m41 String oldValue, @m41 String newValue, boolean z) {
        Csuper.m30700throw(replace, "$this$replace");
        Csuper.m30700throw(oldValue, "oldValue");
        Csuper.m30700throw(newValue, "newValue");
        int i = 0;
        int iA2 = Cstatic.A2(replace, oldValue, 0, z);
        if (iA2 < 0) {
            return replace;
        }
        int length = oldValue.length();
        int iM30873final = Ccase.m30873final(length, 1);
        int length2 = (replace.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) replace, i, iA2);
            sb.append(newValue);
            i = iA2 + length;
            if (iA2 >= replace.length()) {
                break;
            }
            iA2 = Cstatic.A2(replace, oldValue, iA2 + iM30873final, z);
        } while (iA2 > 0);
        sb.append((CharSequence) replace, i, replace.length());
        String string = sb.toString();
        Csuper.m30696super(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }

    @um0
    private static final String w0(char[] cArr) {
        return new String(cArr);
    }

    public static /* synthetic */ String w1(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return u1(str, c, c2, z);
    }

    @um0
    private static final String x0(char[] cArr, int i, int i2) {
        return new String(cArr, i, i2);
    }

    public static /* synthetic */ String x1(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return v1(str, str2, str3, z);
    }

    @um0
    private static final String y0(int[] iArr, int i, int i2) {
        return new String(iArr, i, i2);
    }

    @m41
    public static final String y1(@m41 String replaceFirst, char c, char c2, boolean z) {
        Csuper.m30700throw(replaceFirst, "$this$replaceFirst");
        int iD2 = Cstatic.D2(replaceFirst, c, 0, z, 2, null);
        return iD2 < 0 ? replaceFirst : Cstatic.V3(replaceFirst, iD2, iD2 + 1, String.valueOf(c2)).toString();
    }

    @m41
    @Cfor(message = "Use replaceFirstChar instead.", replaceWith = @an1(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @Cnew(warningSince = "1.5")
    public static final String z0(@m41 String capitalize) {
        Csuper.m30700throw(capitalize, "$this$capitalize");
        Locale locale = Locale.getDefault();
        Csuper.m30696super(locale, "Locale.getDefault()");
        return A0(capitalize, locale);
    }

    @m41
    public static final String z1(@m41 String replaceFirst, @m41 String oldValue, @m41 String newValue, boolean z) {
        Csuper.m30700throw(replaceFirst, "$this$replaceFirst");
        Csuper.m30700throw(oldValue, "oldValue");
        Csuper.m30700throw(newValue, "newValue");
        int iE2 = Cstatic.E2(replaceFirst, oldValue, 0, z, 2, null);
        return iE2 < 0 ? replaceFirst : Cstatic.V3(replaceFirst, iE2, oldValue.length() + iE2, newValue).toString();
    }
}
