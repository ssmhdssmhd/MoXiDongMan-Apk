package android.support.v4;

import java.time.Duration;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.time.Cnew;

@wp0(name = "DurationConversionsJDK8Kt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u0000*\u00020\u0001H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0006"}, d2 = {"Ljava/time/Duration;", "Lkotlin/time/new;", "if", "(Ljava/time/Duration;)J", "do", "(J)Ljava/time/Duration;", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 5, 1}, pn = "kotlin.time")
/* loaded from: classes3.dex */
public final class o30 {
    @l90
    @iz1(version = "1.3")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final Duration m5452do(long j) {
        Duration durationOfSeconds = Duration.ofSeconds(Cnew.f(j), Cnew.j(j));
        Csuper.m30696super(durationOfSeconds, "toComponents { seconds, …, nanoseconds.toLong()) }");
        return durationOfSeconds;
    }

    @l90
    @iz1(version = "1.3")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final long m5453if(Duration duration) {
        Cnew.Cdo cdo = Cnew.f28068try;
        return Cnew.x(cdo.m31344private(duration.getSeconds()), cdo.m31346return(duration.getNano()));
    }
}
