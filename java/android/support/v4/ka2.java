package android.support.v4;

import kotlin.Cbreak;
import kotlin.Cprotected;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a2\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001f\u0010\t\u001a\u00020\u00052\n\u0010\b\u001a\u00020\u0005\"\u00020\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006\u000b"}, d2 = {"", "size", "Lkotlin/Function1;", "Landroid/support/v4/ja2;", "init", "Lkotlin/protected;", "do", "(ILkotlin/jvm/functions/Function1;)[I", "elements", "if", "([I)[I", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ka2 {
    @iz1(version = "1.3")
    @Cbreak
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final int[] m4339do(int i, Function1<? super Integer, ja2> function1) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = function1.invoke(Integer.valueOf(i2)).t();
        }
        return Cprotected.m30803new(iArr);
    }

    @iz1(version = "1.3")
    @Cbreak
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final int[] m4340if(int... iArr) {
        return iArr;
    }
}
