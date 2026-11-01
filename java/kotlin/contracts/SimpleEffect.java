package kotlin.contracts;

import android.support.v4.h90;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.or;
import kotlin.Cwhile;

@h90
@iz1(version = "1.3")
@or
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H§\u0004¨\u0006\u0006"}, d2 = {"Lkotlin/contracts/SimpleEffect;", "Lkotlin/contracts/Effect;", "", "booleanExpression", "Lkotlin/contracts/ConditionalEffect;", "implies", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface SimpleEffect extends Effect {
    @m41
    @or
    @h90
    ConditionalEffect implies(boolean z);
}
