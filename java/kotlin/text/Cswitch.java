package kotlin.text;

import android.support.v4.h91;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.wp0;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0010\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005*\u00020\u0000\u001a+\u0010\n\u001a\u00020\b*\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\b0\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a+\u0010\r\u001a\u00020\f*\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\f0\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"", "", "index", "", "j5", "Ljava/util/SortedSet;", "m5", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "k5", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "l5", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.text.switch, reason: invalid class name */
/* loaded from: classes3.dex */
class Cswitch extends Cstatic {
    @um0
    private static final char j5(CharSequence charSequence, int i) {
        return charSequence.charAt(i);
    }

    @um0
    @wp0(name = "sumOfBigDecimal")
    @h91
    @iz1(version = "1.4")
    private static final BigDecimal k5(CharSequence charSequence, Function1<? super Character, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        for (int i = 0; i < charSequence.length(); i++) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(Character.valueOf(charSequence.charAt(i))));
            Csuper.m30696super(bigDecimalValueOf, "this.add(other)");
        }
        return bigDecimalValueOf;
    }

    @um0
    @wp0(name = "sumOfBigInteger")
    @h91
    @iz1(version = "1.4")
    private static final BigInteger l5(CharSequence charSequence, Function1<? super Character, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        for (int i = 0; i < charSequence.length(); i++) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(Character.valueOf(charSequence.charAt(i))));
            Csuper.m30696super(bigIntegerValueOf, "this.add(other)");
        }
        return bigIntegerValueOf;
    }

    @m41
    public static final SortedSet<Character> m5(@m41 CharSequence toSortedSet) {
        Csuper.m30700throw(toSortedSet, "$this$toSortedSet");
        return (SortedSet) Cthrows.l8(toSortedSet, new TreeSet());
    }
}
