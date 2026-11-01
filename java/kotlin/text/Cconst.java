package kotlin.text;

import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.util.Objects;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a9\u0010\b\u001a\u00028\u0000\"\f\b\u0000\u0010\u0002*\u00060\u0000j\u0002`\u0001*\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\t\u001a7\u0010\u000b\u001a\u00028\u0000\"\f\b\u0000\u0010\u0002*\u00060\u0000j\u0002`\u0001*\u00028\u00002\u0016\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00030\n\"\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\f\u001a\u0015\u0010\r\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0087\b\u001a\u001f\u0010\u000e\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a\u001d\u0010\u0010\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u000fH\u0087\b\u001a;\u0010\u0015\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u0002*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0011\u001a\u00028\u00002\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0012H\u0000¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", ExifInterface.GPS_DIRECTION_TRUE, "", ES6Iterator.VALUE_PROPERTY, "", "startIndex", "endIndex", "case", "(Ljava/lang/Appendable;Ljava/lang/CharSequence;II)Ljava/lang/Appendable;", "", "do", "(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;", "for", "try", "", "new", "element", "Lkotlin/Function1;", "transform", "Landroid/support/v4/ub2;", "if", "(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst {
    @m41
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    /* renamed from: case, reason: not valid java name */
    public static final <T extends Appendable> T m31140case(@m41 T appendRange, @m41 CharSequence value, int i, int i2) {
        Csuper.m30700throw(appendRange, "$this$appendRange");
        Csuper.m30700throw(value, "value");
        T t = (T) appendRange.append(value, i, i2);
        Objects.requireNonNull(t, "null cannot be cast to non-null type T");
        return t;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public static final <T extends Appendable> T m31141do(@m41 T append, @m41 CharSequence... value) throws IOException {
        Csuper.m30700throw(append, "$this$append");
        Csuper.m30700throw(value, "value");
        for (CharSequence charSequence : value) {
            append.append(charSequence);
        }
        return append;
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: for, reason: not valid java name */
    private static final Appendable m31142for(Appendable appendable) throws IOException {
        Appendable appendableAppend = appendable.append('\n');
        Csuper.m30696super(appendableAppend, "append('\\n')");
        return appendableAppend;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: if, reason: not valid java name */
    public static <T> void m31143if(@m41 Appendable appendElement, T t, @z41 Function1<? super T, ? extends CharSequence> function1) {
        Csuper.m30700throw(appendElement, "$this$appendElement");
        if (function1 != null) {
            appendElement.append(function1.invoke(t));
            return;
        }
        if (t != 0 ? t instanceof CharSequence : true) {
            appendElement.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendElement.append(((Character) t).charValue());
        } else {
            appendElement.append(String.valueOf(t));
        }
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: new, reason: not valid java name */
    private static final Appendable m31144new(Appendable appendable, char c) throws IOException {
        Appendable appendableAppend = appendable.append(c);
        Csuper.m30696super(appendableAppend, "append(value)");
        Appendable appendableAppend2 = appendableAppend.append('\n');
        Csuper.m30696super(appendableAppend2, "append('\\n')");
        return appendableAppend2;
    }

    @iz1(version = "1.4")
    @um0
    /* renamed from: try, reason: not valid java name */
    private static final Appendable m31145try(Appendable appendable, CharSequence charSequence) throws IOException {
        Appendable appendableAppend = appendable.append(charSequence);
        Csuper.m30696super(appendableAppend, "append(value)");
        Appendable appendableAppend2 = appendableAppend.append('\n');
        Csuper.m30696super(appendableAppend2, "append('\\n')");
        return appendableAppend2;
    }
}
