package kotlin.text;

import android.support.v4.an1;
import android.support.v4.dn0;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wg1;
import java.util.Locale;
import java.util.Objects;
import kotlin.Cfor;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0007\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0000\u001a\r\u0010\u000b\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\f\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\r\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u000e\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u000f*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0013\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001a\r\u0010\u0014\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0016\u001a\u00020\u000f*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0017\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001a\r\u0010\u0018\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u001a\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u001b\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001a\r\u0010\u001c\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u001d\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0000\u001a\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0001\"\u0017\u0010&\u001a\u00020#*\u00020\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b$\u0010%\"\u0017\u0010*\u001a\u00020'*\u00020\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006+"}, d2 = {"", "", "try", "class", "const", "case", "this", "goto", "break", "catch", "import", "while", "super", "extends", "private", "", "finally", "Ljava/util/Locale;", "locale", "package", "throws", "return", "native", "public", "throw", "default", "switch", "static", "else", "final", "char", "", "radix", "if", "do", "Lkotlin/text/do;", "for", "(C)Lkotlin/text/do;", "category", "Lkotlin/text/if;", "new", "(C)Lkotlin/text/if;", "directionality", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/CharsKt")
/* renamed from: kotlin.text.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew {
    @um0
    /* renamed from: break, reason: not valid java name */
    private static final boolean m31193break(char c) {
        return Character.isJavaIdentifierPart(c);
    }

    @um0
    /* renamed from: case, reason: not valid java name */
    private static final boolean m31194case(char c) {
        return Character.isDigit(c);
    }

    @um0
    /* renamed from: catch, reason: not valid java name */
    private static final boolean m31195catch(char c) {
        return Character.isJavaIdentifierStart(c);
    }

    @um0
    /* renamed from: class, reason: not valid java name */
    private static final boolean m31196class(char c) {
        return Character.isLetter(c);
    }

    @um0
    /* renamed from: const, reason: not valid java name */
    private static final boolean m31197const(char c) {
        return Character.isLetterOrDigit(c);
    }

    @um0
    @Cfor(message = "Use titlecaseChar() instead.", replaceWith = @an1(expression = "titlecaseChar()", imports = {}))
    @kotlin.Cnew(warningSince = "1.5")
    /* renamed from: default, reason: not valid java name */
    private static final char m31198default(char c) {
        return Character.toTitleCase(c);
    }

    @wg1
    /* renamed from: do, reason: not valid java name */
    public static int m31199do(int i) {
        if (2 <= i && 36 >= i) {
            return i;
        }
        throw new IllegalArgumentException("radix " + i + " was not in valid range " + new dn0(2, 36));
    }

    @um0
    /* renamed from: else, reason: not valid java name */
    private static final boolean m31200else(char c) {
        return Character.isHighSurrogate(c);
    }

    @um0
    @Cfor(message = "Use uppercaseChar() instead.", replaceWith = @an1(expression = "uppercaseChar()", imports = {}))
    @kotlin.Cnew(warningSince = "1.5")
    /* renamed from: extends, reason: not valid java name */
    private static final char m31201extends(char c) {
        return Character.toUpperCase(c);
    }

    @um0
    /* renamed from: final, reason: not valid java name */
    private static final boolean m31202final(char c) {
        return Character.isLowSurrogate(c);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final String m31203finally(char c) {
        String strValueOf = String.valueOf(c);
        Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(Locale.ROOT);
        Csuper.m30696super(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static final Cdo m31204for(char c) {
        return Cdo.Companion.m31146do(Character.getType(c));
    }

    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final boolean m31205goto(char c) {
        return Character.isISOControl(c);
    }

    /* renamed from: if, reason: not valid java name */
    public static final int m31206if(char c, int i) {
        return Character.digit((int) c, i);
    }

    /* renamed from: import, reason: not valid java name */
    public static final boolean m31207import(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: native, reason: not valid java name */
    private static final String m31208native(char c) {
        String strValueOf = String.valueOf(c);
        Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strValueOf.toLowerCase(Locale.ROOT);
        Csuper.m30696super(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @m41
    /* renamed from: new, reason: not valid java name */
    public static final Cif m31209new(char c) {
        return Cif.Companion.m31192if(Character.getDirectionality(c));
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: package, reason: not valid java name */
    public static final String m31210package(char c, @m41 Locale locale) {
        Csuper.m30700throw(locale, "locale");
        String strValueOf = String.valueOf(c);
        Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        Csuper.m30696super(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: private, reason: not valid java name */
    private static final char m31211private(char c) {
        return Character.toUpperCase(c);
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: public, reason: not valid java name */
    public static final String m31212public(char c, @m41 Locale locale) {
        Csuper.m30700throw(locale, "locale");
        String strValueOf = String.valueOf(c);
        Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strValueOf.toLowerCase(locale);
        Csuper.m30696super(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: return, reason: not valid java name */
    private static final char m31213return(char c) {
        return Character.toLowerCase(c);
    }

    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    /* renamed from: static, reason: not valid java name */
    public static final String m31214static(char c, @m41 Locale locale) {
        Csuper.m30700throw(locale, "locale");
        String strM31210package = m31210package(c, locale);
        if (strM31210package.length() <= 1) {
            String strValueOf = String.valueOf(c);
            Objects.requireNonNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strValueOf.toUpperCase(Locale.ROOT);
            Csuper.m30696super(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
            return Csuper.m30676else(strM31210package, upperCase) ^ true ? strM31210package : String.valueOf(Character.toTitleCase(c));
        }
        if (c == 329) {
            return strM31210package;
        }
        char cCharAt = strM31210package.charAt(0);
        String strSubstring = strM31210package.substring(1);
        Csuper.m30696super(strSubstring, "(this as java.lang.String).substring(startIndex)");
        Objects.requireNonNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
        Csuper.m30696super(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
        return String.valueOf(cCharAt) + lowerCase;
    }

    @um0
    /* renamed from: super, reason: not valid java name */
    private static final boolean m31215super(char c) {
        return Character.isLowerCase(c);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final char m31216switch(char c) {
        return Character.toTitleCase(c);
    }

    @um0
    /* renamed from: this, reason: not valid java name */
    private static final boolean m31217this(char c) {
        return Character.isIdentifierIgnorable(c);
    }

    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final boolean m31218throw(char c) {
        return Character.isTitleCase(c);
    }

    @um0
    @Cfor(message = "Use lowercaseChar() instead.", replaceWith = @an1(expression = "lowercaseChar()", imports = {}))
    @kotlin.Cnew(warningSince = "1.5")
    /* renamed from: throws, reason: not valid java name */
    private static final char m31219throws(char c) {
        return Character.toLowerCase(c);
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final boolean m31220try(char c) {
        return Character.isDefined(c);
    }

    @um0
    /* renamed from: while, reason: not valid java name */
    private static final boolean m31221while(char c) {
        return Character.isUpperCase(c);
    }
}
