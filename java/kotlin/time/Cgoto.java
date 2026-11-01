package kotlin.time;

import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.p30;
import com.umeng.analytics.pro.ak;
import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0010\u0010\u0003\u001a\u00020\u0002*\u00060\u0000j\u0002`\u0001H\u0001\u001a\u0014\u0010\u0005\u001a\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\u0001\u001a\u001c\u0010\n\u001a\u00060\u0000j\u0002`\u00012\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0001¨\u0006\u000b"}, d2 = {"Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "", "else", "shortName", "case", "", "isoChar", "", "isTimeComponent", "try", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/time/DurationUnitKt")
/* renamed from: kotlin.time.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto extends Celse {
    @l90
    @m41
    @iz1(version = "1.5")
    /* renamed from: case, reason: not valid java name */
    public static final TimeUnit m31283case(@m41 String shortName) {
        Csuper.m30700throw(shortName, "shortName");
        int iHashCode = shortName.hashCode();
        if (iHashCode != 100) {
            if (iHashCode != 104) {
                if (iHashCode != 109) {
                    if (iHashCode != 115) {
                        if (iHashCode != 3494) {
                            if (iHashCode != 3525) {
                                if (iHashCode == 3742 && shortName.equals("us")) {
                                    return TimeUnit.MICROSECONDS;
                                }
                            } else if (shortName.equals("ns")) {
                                return TimeUnit.NANOSECONDS;
                            }
                        } else if (shortName.equals("ms")) {
                            return TimeUnit.MILLISECONDS;
                        }
                    } else if (shortName.equals(ak.aB)) {
                        return TimeUnit.SECONDS;
                    }
                } else if (shortName.equals("m")) {
                    return TimeUnit.MINUTES;
                }
            } else if (shortName.equals("h")) {
                return TimeUnit.HOURS;
            }
        } else if (shortName.equals("d")) {
            return TimeUnit.DAYS;
        }
        throw new IllegalArgumentException("Unknown duration unit short name: " + shortName);
    }

    @l90
    @m41
    @iz1(version = "1.3")
    /* renamed from: else, reason: not valid java name */
    public static final String m31284else(@m41 TimeUnit shortName) {
        Csuper.m30700throw(shortName, "$this$shortName");
        switch (p30.f4831do[shortName.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "us";
            case 3:
                return "ms";
            case 4:
                return ak.aB;
            case 5:
                return "m";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new IllegalStateException(("Unknown unit: " + shortName).toString());
        }
    }

    @l90
    @m41
    @iz1(version = "1.5")
    /* renamed from: try, reason: not valid java name */
    public static final TimeUnit m31285try(char c, boolean z) {
        if (!z) {
            if (c == 'D') {
                return TimeUnit.DAYS;
            }
            throw new IllegalArgumentException("Invalid or unsupported duration ISO non-time unit: " + c);
        }
        if (c == 'H') {
            return TimeUnit.HOURS;
        }
        if (c == 'M') {
            return TimeUnit.MINUTES;
        }
        if (c == 'S') {
            return TimeUnit.SECONDS;
        }
        throw new IllegalArgumentException("Invalid duration ISO time unit: " + c);
    }
}
