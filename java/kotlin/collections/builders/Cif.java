package kotlin.collections.builders;

import android.support.v4.m41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a1\u0010\n\u001a\u00020\t\"\u0004\b\u0000\u0010\u0006*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a/\u0010\f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\f\u0010\r\u001a;\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a-\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0013\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0018\u001a\u00020\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0016\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a/\u0010\u001c\u001a\u00020\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {ExifInterface.LONGITUDE_EAST, "", "size", "", "new", "(I)[Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, TypedValues.Cycle.S_WAVE_OFFSET, "length", "", "break", "([Ljava/lang/Object;II)Ljava/lang/String;", "this", "([Ljava/lang/Object;II)I", "", "other", "", "goto", "([Ljava/lang/Object;IILjava/util/List;)Z", "newSize", "try", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "index", "Landroid/support/v4/ub2;", "case", "([Ljava/lang/Object;I)V", "fromIndex", "toIndex", "else", "([Ljava/lang/Object;II)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.collections.builders.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static final <T> String m29945break(T[] tArr, int i, int i2) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(tArr[i + i3]);
        }
        sb.append("]");
        String string = sb.toString();
        Csuper.m30696super(string, "sb.toString()");
        return string;
    }

    /* renamed from: case, reason: not valid java name */
    public static final <E> void m29946case(@m41 E[] resetAt, int i) {
        Csuper.m30700throw(resetAt, "$this$resetAt");
        resetAt[i] = null;
    }

    /* renamed from: else, reason: not valid java name */
    public static final <E> void m29948else(@m41 E[] resetRange, int i, int i2) {
        Csuper.m30700throw(resetRange, "$this$resetRange");
        while (i < i2) {
            m29946case(resetRange, i);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static final <T> boolean m29950goto(T[] tArr, int i, int i2, List<?> list) {
        if (i2 != list.size()) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (true ^ Csuper.m30676else(tArr[i + i3], list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    @m41
    /* renamed from: new, reason: not valid java name */
    public static final <E> E[] m29952new(int i) {
        if (i >= 0) {
            return (E[]) new Object[i];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static final <T> int m29953this(T[] tArr, int i, int i2) {
        int iHashCode = 1;
        for (int i3 = 0; i3 < i2; i3++) {
            T t = tArr[i + i3];
            iHashCode = (iHashCode * 31) + (t != null ? t.hashCode() : 0);
        }
        return iHashCode;
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public static final <T> T[] m29954try(@m41 T[] copyOfUninitializedElements, int i) {
        Csuper.m30700throw(copyOfUninitializedElements, "$this$copyOfUninitializedElements");
        T[] tArr = (T[]) Arrays.copyOf(copyOfUninitializedElements, i);
        Csuper.m30696super(tArr, "java.util.Arrays.copyOf(this, newSize)");
        Objects.requireNonNull(tArr, "null cannot be cast to non-null type kotlin.Array<T>");
        return tArr;
    }
}
