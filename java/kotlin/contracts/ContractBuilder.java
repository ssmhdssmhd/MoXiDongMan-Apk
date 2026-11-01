package kotlin.contracts;

import android.support.v4.h90;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.or;
import android.support.v4.z41;
import kotlin.Cwhile;
import kotlin.Function;
import org.mozilla.javascript.ES6Iterator;

@h90
@iz1(version = "1.3")
@or
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H'J\u0012\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H'J\b\u0010\u0006\u001a\u00020\u0005H'J&\u0010\r\u001a\u00020\f\"\u0004\b\u0000\u0010\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b2\b\b\u0002\u0010\u000b\u001a\u00020\nH'¨\u0006\u000e"}, d2 = {"Lkotlin/contracts/ContractBuilder;", "", "Lkotlin/contracts/Returns;", "returns", ES6Iterator.VALUE_PROPERTY, "Lkotlin/contracts/ReturnsNotNull;", "returnsNotNull", "R", "Lkotlin/Function;", "lambda", "Lkotlin/contracts/do;", "kind", "Lkotlin/contracts/CallsInPlace;", "callsInPlace", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface ContractBuilder {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.contracts.ContractBuilder$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static /* synthetic */ CallsInPlace m30370do(ContractBuilder contractBuilder, Function function, kotlin.contracts.Cdo cdo, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: callsInPlace");
            }
            if ((i & 2) != 0) {
                cdo = kotlin.contracts.Cdo.UNKNOWN;
            }
            return contractBuilder.callsInPlace(function, cdo);
        }
    }

    @m41
    @or
    <R> CallsInPlace callsInPlace(@m41 Function<? extends R> function, @m41 kotlin.contracts.Cdo cdo);

    @m41
    @or
    Returns returns();

    @m41
    @or
    Returns returns(@z41 Object obj);

    @m41
    @or
    ReturnsNotNull returnsNotNull();
}
