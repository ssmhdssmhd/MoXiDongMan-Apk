package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;

@iz1(version = "1.3")
@un1
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002B\t\b\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H¦@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0086@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Landroid/support/v4/rw1;", ExifInterface.GPS_DIRECTION_TRUE, "", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "do", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "iterator", "for", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "elements", "if", "(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/sequences/Sequence;", "sequence", "new", "(Lkotlin/sequences/Sequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public abstract class rw1<T> {
    @z41
    /* renamed from: do, reason: not valid java name */
    public abstract Object mo7186do(T t, @m41 Continuation<? super ub2> continuation);

    @z41
    /* renamed from: for, reason: not valid java name */
    public abstract Object mo7187for(@m41 Iterator<? extends T> it, @m41 Continuation<? super ub2> continuation);

    @z41
    /* renamed from: if, reason: not valid java name */
    public final Object m7188if(@m41 Iterable<? extends T> iterable, @m41 Continuation<? super ub2> continuation) {
        Object objMo7187for;
        return (!((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) && (objMo7187for = mo7187for(iterable.iterator(), continuation)) == Cnew.m30408goto()) ? objMo7187for : ub2.f6820do;
    }

    @z41
    /* renamed from: new, reason: not valid java name */
    public final Object m7189new(@m41 Sequence<? extends T> sequence, @m41 Continuation<? super ub2> continuation) {
        Object objMo7187for = mo7187for(sequence.iterator(), continuation);
        return objMo7187for == Cnew.m30408goto() ? objMo7187for : ub2.f6820do;
    }
}
