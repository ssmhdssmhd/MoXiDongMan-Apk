package kotlin.collections;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wg1;
import android.support.v4.wp0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a.\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0001H\u0086\b¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0015\u0010\b\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a(\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\tH\u0086\b¢\u0006\u0004\b\n\u0010\u000b\u001a1\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0018\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0001\u001a#\u0010\u0014\u001a\u00020\r\"\u0004\b\u0000\u0010\u0000*\f\u0012\u0006\b\u0001\u0012\u00028\u0000\u0018\u00010\u0001H\u0001¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "new", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "Ljava/nio/charset/Charset;", "charset", "", "try", "", "case", "(Ljava/util/Collection;)[Ljava/lang/Object;", "reference", "", "size", "do", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "toIndex", "Landroid/support/v4/ub2;", "for", "if", "([Ljava/lang/Object;)I", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/ArraysKt")
/* renamed from: kotlin.collections.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {
    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ <T> T[] m30168case(Collection<? extends T> toTypedArray) {
        Csuper.m30700throw(toTypedArray, "$this$toTypedArray");
        Csuper.m30674default(0, "T?");
        T[] tArr = (T[]) toTypedArray.toArray(new Object[0]);
        Objects.requireNonNull(tArr, "null cannot be cast to non-null type kotlin.Array<T>");
        return tArr;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public static final <T> T[] m30169do(@m41 T[] reference, int i) throws NegativeArraySizeException {
        Csuper.m30700throw(reference, "reference");
        Object objNewInstance = Array.newInstance(reference.getClass().getComponentType(), i);
        Objects.requireNonNull(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T>");
        return (T[]) ((Object[]) objNewInstance);
    }

    @iz1(version = "1.3")
    /* renamed from: for, reason: not valid java name */
    public static final void m30170for(int i, int i2) {
        if (i <= i2) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i + ") is greater than size (" + i2 + ").");
    }

    @wg1
    @iz1(version = "1.3")
    @wp0(name = "contentDeepHashCode")
    /* renamed from: if, reason: not valid java name */
    public static final <T> int m30171if(@z41 T[] tArr) {
        return Arrays.deepHashCode(tArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ <T> T[] m30172new(T[] tArr) {
        if (tArr != null) {
            return tArr;
        }
        Csuper.m30674default(0, "T?");
        return (T[]) new Object[0];
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final String m30173try(byte[] bArr, Charset charset) {
        return new String(bArr, charset);
    }
}
