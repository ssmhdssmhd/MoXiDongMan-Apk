package kotlin.jvm.internal;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\b\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlin/jvm/internal/else;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "hasNext", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "if", "[Ljava/lang/Object;", "()[Ljava/lang/Object;", "array", "<init>", "([Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    private int f27881do;

    /* renamed from: if, reason: not valid java name */
    @m41
    private final T[] f27882if;

    public Celse(@m41 T[] array) {
        Csuper.m30700throw(array, "array");
        this.f27882if = array;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final T[] m30662do() {
        return this.f27882if;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27881do < this.f27882if.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f27882if;
            int i = this.f27881do;
            this.f27881do = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f27881do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
