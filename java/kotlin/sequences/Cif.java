package kotlin.sequences;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B)\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0002R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\"\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/sequences/if;", ExifInterface.GPS_DIRECTION_TRUE, "K", "Lkotlin/sequences/Sequence;", "", "iterator", "do", "Lkotlin/sequences/Sequence;", "source", "Lkotlin/Function1;", "if", "Lkotlin/jvm/functions/Function1;", "keySelector", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T, K> implements Sequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f28007do;

    /* renamed from: if, reason: not valid java name */
    private final Function1<T, K> f28008if;

    /* JADX WARN: Multi-variable type inference failed */
    public Cif(@m41 Sequence<? extends T> source, @m41 Function1<? super T, ? extends K> keySelector) {
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(keySelector, "keySelector");
        this.f28007do = source;
        this.f28008if = keySelector;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        return new Cdo(this.f28007do.iterator(), this.f28008if);
    }
}
