package kotlin.text;

import android.support.v4.an1;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import com.umeng.analytics.pro.ak;
import java.io.IOException;
import kotlin.Cfor;
import kotlin.Cthis;
import kotlin.Ctry;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@kotlin.Cwhile(bv = {1, 0, 3}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\u001a\u0014\u0010\u0002\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0007\u001a!\u0010\b\u001a\u00020\u0007*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\n\u001a-\u0010\f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000bH\u0087\b\u001a\u001d\u0010\r\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a%\u0010\u000e\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a7\u0010\u0012\u001a\u00020\u0007*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003H\u0087\b\u001a-\u0010\u0013\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a-\u0010\u0015\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a5\u0010\u0016\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a5\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a\u001f\u0010\u0019\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0018H\u0087\b\u001a%\u0010\u001a\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0001H\u0087\b\u001a\u001d\u0010\u001b\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0003H\u0087\b\u001a\u001d\u0010\u001d\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001cH\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001eH\u0087\b\u001a\u001d\u0010!\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020 H\u0087\b\u001a\u001d\u0010#\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\"H\u0087\b\u001a\u001d\u0010%\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020$H\u0087\b\u001a\u0014\u0010(\u001a\u00060&j\u0002`'*\u00060&j\u0002`'H\u0007\u001a\u001f\u0010)\u001a\u00060&j\u0002`'*\u00060&j\u0002`'2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0014H\u0087\b\u001a\u001d\u0010*\u001a\u00060&j\u0002`'*\u00060&j\u0002`'2\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u0014\u0010+\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0007\u001a\u001f\u0010,\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0018H\u0087\b\u001a\u001f\u0010-\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0014H\u0087\b\u001a\u001f\u0010.\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u000bH\u0087\b\u001a\u001f\u00100\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010/H\u0087\b\u001a%\u00101\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0001H\u0087\b\u001a\u001d\u00102\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u000fH\u0087\b\u001a\u001d\u00103\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u001d\u00105\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u000204H\u0087\b\u001a\u001d\u00106\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0003H\u0087\b\u001a\u001d\u00107\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001cH\u0087\b\u001a\u001d\u00108\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001eH\u0087\b\u001a\u001d\u00109\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020 H\u0087\b\u001a\u001d\u0010:\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\"H\u0087\b\u001a\u001d\u0010;\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020$H\u0087\b¨\u0006<"}, d2 = {"Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "l", "", "index", "", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "q", "startIndex", "endIndex", "", "r", "m", "n", "", "destination", "destinationOffset", ak.aB, "strictfp", "", "continue", ak.ax, "o", "Ljava/lang/StringBuffer;", "package", "private", "extends", "", "abstract", "", "switch", "", "finally", "", "default", "", "throws", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "volatile", "protected", "interface", "transient", "g", "d", "f", "", "e", "h", "k", "instanceof", "", "j", "b", ak.aC, "implements", "c", ak.av, "synchronized", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.while, reason: invalid class name */
/* loaded from: classes.dex */
class Cwhile extends Cthrow {
    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder a(StringBuilder sb, float f) {
        sb.append(f);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: abstract, reason: not valid java name */
    private static final StringBuilder m31249abstract(StringBuilder sb, short s) {
        sb.append((int) s);
        Csuper.m30696super(sb, "append(value.toInt())");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder b(StringBuilder sb, int i) {
        sb.append(i);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder c(StringBuilder sb, long j) {
        sb.append(j);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    /* renamed from: continue, reason: not valid java name */
    private static final StringBuilder m31250continue(StringBuilder sb, CharSequence charSequence, int i, int i2) {
        sb.append(charSequence, i, i2);
        Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder d(StringBuilder sb, CharSequence charSequence) {
        sb.append(charSequence);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: default, reason: not valid java name */
    private static final StringBuilder m31251default(StringBuilder sb, float f) {
        sb.append(f);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder e(StringBuilder sb, Object obj) {
        sb.append(obj);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: extends, reason: not valid java name */
    private static final StringBuilder m31252extends(StringBuilder sb, int i) {
        sb.append(i);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder f(StringBuilder sb, String str) {
        sb.append(str);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final StringBuilder m31253finally(StringBuilder sb, long j) {
        sb.append(j);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder g(StringBuilder sb, StringBuffer stringBuffer) {
        sb.append(stringBuffer);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder h(StringBuilder sb, StringBuilder sb2) {
        sb.append((CharSequence) sb2);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder i(StringBuilder sb, short s) {
        sb.append((int) s);
        Csuper.m30696super(sb, "append(value.toInt())");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    /* renamed from: implements, reason: not valid java name */
    private static final StringBuilder m31254implements(StringBuilder sb, byte b) {
        sb.append((int) b);
        Csuper.m30696super(sb, "append(value.toInt())");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    /* renamed from: instanceof, reason: not valid java name */
    private static final StringBuilder m31255instanceof(StringBuilder sb, char c) {
        sb.append(c);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    /* renamed from: interface, reason: not valid java name */
    private static final Appendable m31256interface(Appendable appendable, char c) throws IOException {
        Appendable appendableAppend = appendable.append(c);
        Csuper.m30696super(appendableAppend, "append(value)");
        return m31265volatile(appendableAppend);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder j(StringBuilder sb, boolean z) {
        sb.append(z);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    private static final StringBuilder k(StringBuilder sb, char[] cArr) {
        sb.append(cArr);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    @m41
    @iz1(version = "1.3")
    public static final StringBuilder l(@m41 StringBuilder clear) {
        Csuper.m30700throw(clear, "$this$clear");
        clear.setLength(0);
        return clear;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final StringBuilder m(StringBuilder sb, int i) {
        StringBuilder sbDeleteCharAt = sb.deleteCharAt(i);
        Csuper.m30696super(sbDeleteCharAt, "this.deleteCharAt(index)");
        return sbDeleteCharAt;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final StringBuilder n(StringBuilder sb, int i, int i2) {
        StringBuilder sbDelete = sb.delete(i, i2);
        Csuper.m30696super(sbDelete, "this.delete(startIndex, endIndex)");
        return sbDelete;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final StringBuilder o(StringBuilder sb, int i, CharSequence charSequence, int i2, int i3) {
        StringBuilder sbInsert = sb.insert(i, charSequence, i2, i3);
        Csuper.m30696super(sbInsert, "this.insert(index, value, startIndex, endIndex)");
        return sbInsert;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final StringBuilder p(StringBuilder sb, int i, char[] cArr, int i2, int i3) {
        StringBuilder sbInsert = sb.insert(i, cArr, i2, i3 - i2);
        Csuper.m30696super(sbInsert, "this.insert(index, value…x, endIndex - startIndex)");
        return sbInsert;
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: package, reason: not valid java name */
    private static final StringBuilder m31257package(StringBuilder sb, StringBuffer stringBuffer) {
        sb.append(stringBuffer);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: private, reason: not valid java name */
    private static final StringBuilder m31258private(StringBuilder sb, StringBuilder sb2) {
        sb.append((CharSequence) sb2);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    /* renamed from: protected, reason: not valid java name */
    private static final Appendable m31259protected(Appendable appendable, CharSequence charSequence) throws IOException {
        Appendable appendableAppend = appendable.append(charSequence);
        Csuper.m30696super(appendableAppend, "append(value)");
        return m31265volatile(appendableAppend);
    }

    @um0
    private static final void q(StringBuilder set, int i, char c) {
        Csuper.m30700throw(set, "$this$set");
        set.setCharAt(i, c);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final StringBuilder r(StringBuilder sb, int i, int i2, String str) {
        StringBuilder sbReplace = sb.replace(i, i2, str);
        Csuper.m30696super(sbReplace, "this.replace(startIndex, endIndex, value)");
        return sbReplace;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final void s(StringBuilder sb, char[] cArr, int i, int i2, int i3) {
        sb.getChars(i2, i3, cArr, i);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    /* renamed from: strictfp, reason: not valid java name */
    private static final StringBuilder m31260strictfp(StringBuilder sb, char[] cArr, int i, int i2) {
        sb.append(cArr, i, i2 - i);
        Csuper.m30696super(sb, "this.append(value, start…x, endIndex - startIndex)");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final StringBuilder m31261switch(StringBuilder sb, byte b) {
        sb.append((int) b);
        Csuper.m30696super(sb, "append(value.toInt())");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine(value)", imports = {}))
    /* renamed from: synchronized, reason: not valid java name */
    private static final StringBuilder m31262synchronized(StringBuilder sb, double d) {
        sb.append(d);
        Csuper.m30696super(sb, "append(value)");
        return m31264transient(sb);
    }

    public static /* synthetic */ void t(StringBuilder sb, char[] cArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = sb.length();
        }
        sb.getChars(i2, i3, cArr, i);
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: throws, reason: not valid java name */
    private static final StringBuilder m31263throws(StringBuilder sb, double d) {
        sb.append(d);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @m41
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine()", imports = {}))
    /* renamed from: transient, reason: not valid java name */
    public static final StringBuilder m31264transient(@m41 StringBuilder appendln) {
        Csuper.m30700throw(appendln, "$this$appendln");
        appendln.append(Cdefault.f28034do);
        Csuper.m30696super(appendln, "append(SystemProperties.LINE_SEPARATOR)");
        return appendln;
    }

    @m41
    @Cfor(level = Ctry.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @an1(expression = "appendLine()", imports = {}))
    /* renamed from: volatile, reason: not valid java name */
    public static final Appendable m31265volatile(@m41 Appendable appendln) throws IOException {
        Csuper.m30700throw(appendln, "$this$appendln");
        Appendable appendableAppend = appendln.append(Cdefault.f28034do);
        Csuper.m30696super(appendableAppend, "append(SystemProperties.LINE_SEPARATOR)");
        return appendableAppend;
    }
}
