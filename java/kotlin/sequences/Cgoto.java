package kotlin.sequences;

import android.support.v4.an1;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rd;
import android.support.v4.rw1;
import android.support.v4.ub2;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cfor;
import kotlin.Ctry;
import kotlin.Cwhile;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aO\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002/\b\u0001\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001aP\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\b\"\u0004\b\u0000\u0010\u00002/\b\t\u0010\u000b\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b\f\u0010\n\u001aO\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\u00002/\b\u0001\u0010\u0007\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001aP\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\u00002/\b\t\u0010\u000b\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000f\"\u001a\u0010\u0015\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\"\u001a\u0010\u0016\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014\"\u001a\u0010\u0017\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0014\"\u001a\u0010\u0018\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0014\"\u001a\u0010\u0019\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0014\"\u001a\u0010\u001b\u001a\u00060\u0011j\u0002`\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014*V\b\u0007\u0010'\u001a\u0004\b\u0000\u0010\u0000\"\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0002B6\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u001c\b\u001f\u0012\u0018\b\u000bB\u0014\b \u0012\u0006\b!\u0012\u0002\b\f\u0012\b\b\"\u0012\u0004\b\b(#\u0012\n\b$\u0012\u0006\b\n0%8&*\f\b\u0002\u0010(\"\u00020\u00112\u00020\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function2;", "Landroid/support/v4/rw1;", "Lkotlin/coroutines/Continuation;", "Landroid/support/v4/ub2;", "", "Landroid/support/v4/w90;", "block", "Lkotlin/sequences/Sequence;", "try", "(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;", "builderAction", "for", "", "new", "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;", "if", "", "Lkotlin/sequences/State;", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "State_NotReady", "State_ManyNotReady", "State_ManyReady", "State_Ready", "State_Done", "case", "State_Failed", "Lkotlin/for;", "message", "Use SequenceScope class instead.", "replaceWith", "Landroid/support/v4/an1;", "imports", "expression", "SequenceScope<T>", "level", "Lkotlin/try;", "ERROR", "SequenceBuilder", "State", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/SequencesKt")
/* renamed from: kotlin.sequences.goto, reason: invalid class name */
/* loaded from: classes.dex */
public class Cgoto {

    /* renamed from: case, reason: not valid java name */
    private static final int f27999case = 5;

    /* renamed from: do, reason: not valid java name */
    private static final int f28000do = 0;

    /* renamed from: for, reason: not valid java name */
    private static final int f28001for = 2;

    /* renamed from: if, reason: not valid java name */
    private static final int f28002if = 1;

    /* renamed from: new, reason: not valid java name */
    private static final int f28003new = 3;

    /* renamed from: try, reason: not valid java name */
    private static final int f28004try = 4;

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/sequences/goto$do", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.goto$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdo<T> implements Sequence<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function2 f28005do;

        public Cdo(Function2 function2) {
            this.f28005do = function2;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<T> iterator() {
            return Cgoto.m31080new(this.f28005do);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/sequences/goto$if", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.goto$if, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cif<T> implements Sequence<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function2 f28006do;

        public Cif(Function2 function2) {
            this.f28006do = function2;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<T> iterator() {
            return Cgoto.m31080new(this.f28006do);
        }
    }

    @Cfor(level = Ctry.ERROR, message = "Use SequenceScope class instead.", replaceWith = @an1(expression = "SequenceScope<T>", imports = {}))
    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ void m31077do() {
    }

    @iz1(version = "1.3")
    @um0
    @Cfor(level = Ctry.ERROR, message = "Use 'sequence { }' function instead.", replaceWith = @an1(expression = "sequence(builderAction)", imports = {}))
    /* renamed from: for, reason: not valid java name */
    private static final <T> Sequence<T> m31078for(@rd Function2<? super rw1<? super T>, ? super Continuation<? super ub2>, ? extends Object> function2) {
        return new Cdo(function2);
    }

    @iz1(version = "1.3")
    @um0
    @Cfor(level = Ctry.ERROR, message = "Use 'iterator { }' function instead.", replaceWith = @an1(expression = "iterator(builderAction)", imports = {}))
    /* renamed from: if, reason: not valid java name */
    private static final <T> Iterator<T> m31079if(@rd Function2<? super rw1<? super T>, ? super Continuation<? super ub2>, ? extends Object> function2) {
        return m31080new(function2);
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: new, reason: not valid java name */
    public static <T> Iterator<T> m31080new(@m41 @rd Function2<? super rw1<? super T>, ? super Continuation<? super ub2>, ? extends Object> block) {
        Csuper.m30700throw(block, "block");
        Ccase ccase = new Ccase();
        ccase.m31034goto(kotlin.coroutines.intrinsics.Cfor.m30399for(block, ccase, ccase));
        return ccase;
    }

    @m41
    @iz1(version = "1.3")
    /* renamed from: try, reason: not valid java name */
    public static <T> Sequence<T> m31081try(@m41 @rd Function2<? super rw1<? super T>, ? super Continuation<? super ub2>, ? extends Object> block) {
        Csuper.m30700throw(block, "block");
        return new Cif(block);
    }
}
