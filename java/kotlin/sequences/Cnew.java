package kotlin.sequences;

import android.support.v4.m41;
import android.support.v4.w60;
import java.util.Iterator;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00020\u0003B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0096\u0002J\u0010\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\f"}, d2 = {"Lkotlin/sequences/new;", "Lkotlin/sequences/Sequence;", "", "Lkotlin/sequences/DropTakeSequence;", "", "iterator", "", "n", "do", "if", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew implements Sequence, DropTakeSequence {

    /* renamed from: do, reason: not valid java name */
    @m41
    public static final Cnew f28009do = new Cnew();

    private Cnew() {
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cnew drop(int i) {
        return f28009do;
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cnew take(int i) {
        return f28009do;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator iterator() {
        return w60.f7400do;
    }
}
