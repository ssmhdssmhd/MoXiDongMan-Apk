package kotlin.sequences;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.collections.Cfor;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0014R&\u0010\n\u001a\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lkotlin/sequences/do;", ExifInterface.GPS_DIRECTION_TRUE, "K", "Lkotlin/collections/for;", "Landroid/support/v4/ub2;", "do", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "for", "Ljava/util/HashSet;", "observed", "", "new", "Ljava/util/Iterator;", "source", "Lkotlin/Function1;", "try", "Lkotlin/jvm/functions/Function1;", "keySelector", "<init>", "(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo<T, K> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    private final HashSet<K> f27986for;

    /* renamed from: new, reason: not valid java name */
    private final Iterator<T> f27987new;

    /* renamed from: try, reason: not valid java name */
    private final Function1<T, K> f27988try;

    /* JADX WARN: Multi-variable type inference failed */
    public Cdo(@m41 Iterator<? extends T> source, @m41 Function1<? super T, ? extends K> keySelector) {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(keySelector, "keySelector");
        this.f27987new = source;
        this.f27988try = keySelector;
        this.f27986for = new HashSet<>();
    }

    @Override // kotlin.collections.Cfor
    /* renamed from: do */
    public void mo30083do() {
        while (this.f27987new.hasNext()) {
            T next = this.f27987new.next();
            if (this.f27986for.add(this.f27988try.invoke(next))) {
                m30084for(next);
                return;
            }
        }
        m30085if();
    }
}
