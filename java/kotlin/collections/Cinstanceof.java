package kotlin.collections;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\t\b\u0012\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/collections/instanceof;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/collections/new;", "", "index", "get", "(I)Ljava/lang/Object;", "", "do", "Ljava/util/List;", "delegate", "getSize", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
class Cinstanceof<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    private final List<T> f27729do;

    /* JADX WARN: Multi-variable type inference failed */
    public Cinstanceof(@m41 List<? extends T> delegate) {
        Csuper.m30700throw(delegate, "delegate");
        this.f27729do = delegate;
    }

    @Override // kotlin.collections.Cnew, java.util.List
    public T get(int i) {
        return this.f27729do.get(Cstatic.n0(this, i));
    }

    @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
    public int getSize() {
        return this.f27729do.size();
    }
}
