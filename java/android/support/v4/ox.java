package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Csuper;

@iz1(version = "1.4")
@Cthis
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003BE\u00129\u0010\b\u001a5\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0004¢\u0006\u0002\b\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rRR\u0010\b\u001a5\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0004¢\u0006\u0002\b\u00078\u0000@\u0000X\u0080\u0004ø\u0001\u0000¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroid/support/v4/ox;", ExifInterface.GPS_DIRECTION_TRUE, "R", "", "Lkotlin/Function3;", "Landroid/support/v4/px;", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/w90;", "block", "Lkotlin/jvm/functions/Function3;", "do", "()Lkotlin/jvm/functions/Function3;", "<init>", "(Lkotlin/jvm/functions/Function3;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ox<T, R> {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Function3<px<T, R>, T, Continuation<? super R>, Object> f4802do;

    /* JADX WARN: Multi-variable type inference failed */
    public ox(@m41 Function3<? super px<T, R>, ? super T, ? super Continuation<? super R>, ? extends Object> block) {
        Csuper.m30700throw(block, "block");
        this.f4802do = block;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final Function3<px<T, R>, T, Continuation<? super R>, Object> m5816do() {
        return this.f4802do;
    }
}
