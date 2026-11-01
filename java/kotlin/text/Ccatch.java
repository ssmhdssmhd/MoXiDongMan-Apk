package kotlin.text;

import android.support.v4.m41;
import android.support.v4.tp0;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lkotlin/text/catch;", "", "Lkotlin/text/goto;", "do", "Lkotlin/text/goto;", ES6Iterator.VALUE_PROPERTY, "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.catch, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccatch {

    /* renamed from: do, reason: not valid java name */
    @m41
    @tp0
    public static final Cgoto f28032do;

    /* renamed from: if, reason: not valid java name */
    @m41
    public static final Ccatch f28033if = new Ccatch();

    static {
        String str = "[eE][+-]?(\\p{Digit}+)";
        f28032do = new Cgoto("[\\x00-\\x20]*[+-]?(NaN|Infinity|((" + ("((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)(" + str + ")?)|(\\.((\\p{Digit}+))(" + str + ")?)|((" + ("(0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+))") + ")[pP][+-]?(\\p{Digit}+))") + ")[fFdD]?))[\\x00-\\x20]*");
    }

    private Ccatch() {
    }
}
