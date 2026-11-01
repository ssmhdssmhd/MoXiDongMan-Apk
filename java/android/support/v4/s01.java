package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Cwhile;
import kotlin.collections.Cnew;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005J\u0018\u0010\u000b\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Landroid/support/v4/s01;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/new;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "fromIndex", "toIndex", "Landroid/support/v4/ub2;", "do", "index", "get", "(I)Ljava/lang/Object;", "getSize", "()I", "size", "", "list", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class s01<E> extends Cnew<E> implements RandomAccess {

    /* renamed from: do, reason: not valid java name */
    private int f5987do;

    /* renamed from: for, reason: not valid java name */
    private final List<E> f5988for;

    /* renamed from: if, reason: not valid java name */
    private int f5989if;

    /* JADX WARN: Multi-variable type inference failed */
    public s01(@m41 List<? extends E> list) {
        Csuper.m30700throw(list, "list");
        this.f5988for = list;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7220do(int i, int i2) {
        Cnew.Companion.m30123new(i, i2, this.f5988for.size());
        this.f5987do = i;
        this.f5989if = i2 - i;
    }

    @Override // kotlin.collections.Cnew, java.util.List
    public E get(int i) {
        Cnew.Companion.m30122if(i, this.f5989if);
        return this.f5988for.get(this.f5987do + i);
    }

    @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
    public int getSize() {
        return this.f5989if;
    }
}
