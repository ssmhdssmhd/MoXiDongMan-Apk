package kotlin.text;

import android.support.v4.an1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.um0;
import androidx.core.graphics.drawable.IconCompat;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001f\u0010\u0004\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0087\b\u001a6\u0010\n\u001a\u00020\t2\u001b\u0010\b\u001a\u0017\u0012\b\u0012\u00060\u0000j\u0002`\u0001\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a>\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u001b\u0010\b\u001a\u0017\u0012\b\u0012\u00060\u0000j\u0002`\u0001\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a1\u0010\u0010\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0016\u0010\u000f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\u000e\"\u0004\u0018\u00010\t¢\u0006\u0004\b\u0010\u0010\u0011\u001a1\u0010\u0012\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0016\u0010\u000f\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\u000e\"\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0015\u0010\u0014\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0087\b\u001a\u001f\u0010\u0016\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0015H\u0087\b\u001a\u001f\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0087\b\u001a\u001f\u0010\u0018\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0087\b\u001a\u001d\u0010\u001a\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000f\u001a\u00020\u0019H\u0087\b\u001a\u001d\u0010\u001c\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000f\u001a\u00020\u001bH\u0087\b\u001a\u001d\u0010\u001e\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000f\u001a\u00020\u001dH\u0087\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", IconCompat.EXTRA_OBJ, ak.aG, "Lkotlin/Function1;", "Landroid/support/v4/ub2;", "Landroid/support/v4/w90;", "builderAction", "", "F", "", "capacity", ExifInterface.LONGITUDE_EAST, "", ES6Iterator.VALUE_PROPERTY, "w", "(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;", "v", "(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;", "x", "", ak.aD, "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "", Cstatic.m1, "", "y", "", "C", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.import, reason: invalid class name */
/* loaded from: classes.dex */
class Cimport extends Cwhile {
    @iz1(version = "1.4")
    @um0
    private static final StringBuilder A(StringBuilder sb, Object obj) {
        sb.append(obj);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    private static final StringBuilder B(StringBuilder sb, String str) {
        sb.append(str);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    private static final StringBuilder C(StringBuilder sb, boolean z) {
        sb.append(z);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    private static final StringBuilder D(StringBuilder sb, char[] cArr) {
        sb.append(cArr);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.1")
    @um0
    private static final String E(int i, Function1<? super StringBuilder, ub2> function1) {
        StringBuilder sb = new StringBuilder(i);
        function1.invoke(sb);
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    @um0
    private static final String F(Function1<? super StringBuilder, ub2> function1) {
        StringBuilder sb = new StringBuilder();
        function1.invoke(sb);
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @um0
    @Cfor(level = Ctry.WARNING, message = "Use append(value: Any?) instead", replaceWith = @an1(expression = "append(value = obj)", imports = {}))
    private static final StringBuilder u(StringBuilder sb, Object obj) {
        sb.append(obj);
        Csuper.m30696super(sb, "this.append(obj)");
        return sb;
    }

    @m41
    public static final StringBuilder v(@m41 StringBuilder append, @m41 Object... value) {
        Csuper.m30700throw(append, "$this$append");
        Csuper.m30700throw(value, "value");
        for (Object obj : value) {
            append.append(obj);
        }
        return append;
    }

    @m41
    public static final StringBuilder w(@m41 StringBuilder append, @m41 String... value) {
        Csuper.m30700throw(append, "$this$append");
        Csuper.m30700throw(value, "value");
        for (String str : value) {
            append.append(str);
        }
        return append;
    }

    @iz1(version = "1.4")
    @um0
    private static final StringBuilder x(StringBuilder sb) {
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    private static final StringBuilder y(StringBuilder sb, char c) {
        sb.append(c);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }

    @iz1(version = "1.4")
    @um0
    private static final StringBuilder z(StringBuilder sb, CharSequence charSequence) {
        sb.append(charSequence);
        Csuper.m30696super(sb, "append(value)");
        sb.append('\n');
        Csuper.m30696super(sb, "append('\\n')");
        return sb;
    }
}
