package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cfor;
import kotlin.Cthis;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@un1
@iz1(version = "1.4")
@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\t\b\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J7\u0010\n\u001a\u00028\u0003\"\u0004\b\u0002\u0010\u0007\"\u0004\b\u0003\u0010\b*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t2\u0006\u0010\u0004\u001a\u00028\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\f*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\t2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\u0002\u0082\u0001\u0001\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Landroid/support/v4/px;", ExifInterface.GPS_DIRECTION_TRUE, "R", "", ES6Iterator.VALUE_PROPERTY, "if", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "U", ExifInterface.LATITUDE_SOUTH, "Landroid/support/v4/ox;", "do", "(Landroid/support/v4/ox;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "for", "<init>", "()V", "Lkotlin/if;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class px<T, R> {
    private px() {
    }

    @z41
    /* renamed from: do, reason: not valid java name */
    public abstract <U, S> Object mo6239do(@m41 ox<U, S> oxVar, U u, @m41 Continuation<? super S> continuation);

    @m41
    @Cfor(level = Ctry.ERROR, message = "'invoke' should not be called from DeepRecursiveScope. Use 'callRecursive' to do recursion in the heap instead of the call stack.", replaceWith = @an1(expression = "this.callRecursive(value)", imports = {}))
    /* renamed from: for, reason: not valid java name */
    public final Void m6240for(@m41 ox<?, ?> invoke, @z41 Object obj) {
        Csuper.m30700throw(invoke, "$this$invoke");
        throw new UnsupportedOperationException("Should not be called from DeepRecursiveScope");
    }

    @z41
    /* renamed from: if, reason: not valid java name */
    public abstract Object mo6241if(T t, @m41 Continuation<? super R> continuation);

    public /* synthetic */ px(rx rxVar) {
        this();
    }
}
