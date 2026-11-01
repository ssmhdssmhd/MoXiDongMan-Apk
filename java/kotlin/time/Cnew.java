package kotlin.time;

import android.support.v4.an1;
import android.support.v4.bw0;
import android.support.v4.hy1;
import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.up0;
import android.support.v4.wg1;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import java.util.concurrent.TimeUnit;
import kotlin.Cfor;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@l90
@up0
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\bG\b\u0087@\u0018\u0000 L2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001WB\u0015\b\u0000\u0012\u0006\u0010X\u001a\u00020\u000bø\u0001\u0000¢\u0006\u0005\b\u009a\u0001\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u0016\u0010\u0006\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ%\u0010\u000e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\nJ\u001e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0015H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0014J\u001e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0015H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u0017J\u001b\u0010\u001a\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\r\u0010\u001d\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\r\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\r\u0010\u001f\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u001b\u0010 \u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0000H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b \u0010!J\u009d\u0001\u0010,\u001a\u00028\u0000\"\u0004\b\u0000\u0010\"2u\u0010+\u001aq\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b('\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b((\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b()\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(*\u0012\u0004\u0012\u00028\u00000#H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b,\u0010-J\u0088\u0001\u0010/\u001a\u00028\u0000\"\u0004\b\u0000\u0010\"2`\u0010+\u001a\\\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b('\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b((\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b()\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(*\u0012\u0004\u0012\u00028\u00000.H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b/\u00100Js\u00102\u001a\u00028\u0000\"\u0004\b\u0000\u0010\"2K\u0010+\u001aG\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b((\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b()\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(*\u0012\u0004\u0012\u00028\u000001H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b2\u00103J^\u00105\u001a\u00028\u0000\"\u0004\b\u0000\u0010\"26\u0010+\u001a2\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b()\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(*\u0012\u0004\u0012\u00028\u000004H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b5\u00106J\u0019\u0010:\u001a\u00020\u00152\n\u00109\u001a\u000607j\u0002`8¢\u0006\u0004\b:\u0010;J\u0019\u0010<\u001a\u00020\u000b2\n\u00109\u001a\u000607j\u0002`8¢\u0006\u0004\b<\u0010=J\u0019\u0010>\u001a\u00020\u00112\n\u00109\u001a\u000607j\u0002`8¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u000bH\u0007¢\u0006\u0004\b@\u0010\u0007J\u000f\u0010A\u001a\u00020\u000bH\u0007¢\u0006\u0004\bA\u0010\u0007J\u000f\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DJ?\u0010L\u001a\u00020K*\u00060Ej\u0002`F2\u0006\u0010G\u001a\u00020\u00112\u0006\u0010H\u001a\u00020\u00112\u0006\u0010I\u001a\u00020\u00112\u0006\u00109\u001a\u00020B2\u0006\u0010J\u001a\u00020\u0002H\u0002¢\u0006\u0004\bL\u0010MJ#\u0010O\u001a\u00020B2\n\u00109\u001a\u000607j\u0002`82\b\b\u0002\u0010N\u001a\u00020\u0011¢\u0006\u0004\bO\u0010PJ\r\u0010Q\u001a\u00020B¢\u0006\u0004\bQ\u0010DJ\u0010\u0010R\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\bR\u0010SJ\u001a\u0010U\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010THÖ\u0003¢\u0006\u0004\bU\u0010VR\u0016\u0010X\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010@R\u0016\u0010Z\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010\u0007R\u0017\u0010\\\u001a\u00020\u00118Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b[\u0010SR\u0016\u0010_\u001a\u0002078B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b]\u0010^R\u0019\u0010a\u001a\u00020\u00008F@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b`\u0010\u0007R\u001c\u0010e\u001a\u00020\u00118@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bc\u0010d\u001a\u0004\bb\u0010SR\u001c\u0010h\u001a\u00020\u00118@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bg\u0010d\u001a\u0004\bf\u0010SR\u001c\u0010k\u001a\u00020\u00118@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bj\u0010d\u001a\u0004\bi\u0010SR\u001c\u0010n\u001a\u00020\u00118@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bm\u0010d\u001a\u0004\bl\u0010SR\u001c\u0010r\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bq\u0010d\u001a\u0004\bo\u0010pR\u001c\u0010u\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bt\u0010d\u001a\u0004\bs\u0010pR\u001c\u0010x\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bw\u0010d\u001a\u0004\bv\u0010pR\u001c\u0010{\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bz\u0010d\u001a\u0004\by\u0010pR\u001c\u0010~\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b}\u0010d\u001a\u0004\b|\u0010pR\u001e\u0010\u0081\u0001\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\r\u0012\u0005\b\u0080\u0001\u0010d\u001a\u0004\b\u007f\u0010pR\u001f\u0010\u0084\u0001\u001a\u00020\u00158F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0083\u0001\u0010d\u001a\u0005\b\u0082\u0001\u0010pR\u001f\u0010\u0087\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0086\u0001\u0010d\u001a\u0005\b\u0085\u0001\u0010\u0007R\u001f\u0010\u008a\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0089\u0001\u0010d\u001a\u0005\b\u0088\u0001\u0010\u0007R\u001f\u0010\u008d\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008c\u0001\u0010d\u001a\u0005\b\u008b\u0001\u0010\u0007R\u001f\u0010\u0090\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u008f\u0001\u0010d\u001a\u0005\b\u008e\u0001\u0010\u0007R\u001f\u0010\u0093\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0092\u0001\u0010d\u001a\u0005\b\u0091\u0001\u0010\u0007R\u001f\u0010\u0096\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0095\u0001\u0010d\u001a\u0005\b\u0094\u0001\u0010\u0007R\u001f\u0010\u0099\u0001\u001a\u00020\u000b8F@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0098\u0001\u0010d\u001a\u0005\b\u0097\u0001\u0010\u0007ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006\u009b\u0001"}, d2 = {"Lkotlin/time/new;", "", "", ak.aB, "(J)Z", "r", "N", "(J)J", "other", "x", "(JJ)J", "", "thisMillis", "otherNanos", "new", "(JJJ)J", "w", "", "scale", ak.aD, "(JI)J", "", "y", "(JD)J", "class", "catch", "break", "(JJ)D", ak.aG, "v", ak.aH, "q", "goto", "(JJ)I", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function5;", "Landroid/support/v4/xb1;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "action", Cstatic.m1, "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "C", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "B", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", ExifInterface.LONGITUDE_EAST, "(JLjava/util/concurrent/TimeUnit;)D", "H", "(JLjava/util/concurrent/TimeUnit;)J", "F", "(JLjava/util/concurrent/TimeUnit;)I", "J", OptRuntime.GeneratorState.resumptionPoint_TYPE, "", "K", "(J)Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "Landroid/support/v4/ub2;", "try", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "decimals", "L", "(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;", "G", ak.ax, "(J)I", "", "const", "(JLjava/lang/Object;)Z", "do", "rawValue", "o", ES6Iterator.VALUE_PROPERTY, "n", "unitDiscriminator", "m", "(J)Ljava/util/concurrent/TimeUnit;", "storageUnit", "super", "absoluteValue", "while", "getHoursComponent$annotations", "()V", "hoursComponent", "h", "getMinutesComponent$annotations", "minutesComponent", "l", "getSecondsComponent$annotations", "secondsComponent", "j", "getNanosecondsComponent$annotations", "nanosecondsComponent", "native", "(J)D", "getInDays$annotations", "inDays", "return", "getInHours$annotations", "inHours", "finally", "getInMinutes$annotations", "inMinutes", "continue", "getInSeconds$annotations", "inSeconds", "default", "getInMilliseconds$annotations", "inMilliseconds", "switch", "getInMicroseconds$annotations", "inMicroseconds", "private", "getInNanoseconds$annotations", "inNanoseconds", "volatile", "getInWholeDays$annotations", "inWholeDays", "protected", "getInWholeHours$annotations", "inWholeHours", "b", "getInWholeMinutes$annotations", "inWholeMinutes", "f", "getInWholeSeconds$annotations", "inWholeSeconds", "synchronized", "getInWholeMilliseconds$annotations", "inWholeMilliseconds", "implements", "getInWholeMicroseconds$annotations", "inWholeMicroseconds", "d", "getInWholeNanoseconds$annotations", "inWholeNanoseconds", "this", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.time.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements Comparable<Cnew> {

    /* renamed from: do, reason: not valid java name */
    private final long f28069do;

    /* renamed from: try, reason: not valid java name */
    @m41
    public static final Cdo f28068try = new Cdo(null);

    /* renamed from: if, reason: not valid java name */
    private static final long f28066if = m31318this(0);

    /* renamed from: for, reason: not valid java name */
    private static final long f28065for = Ctry.m31361catch(Ctry.f28072for);

    /* renamed from: new, reason: not valid java name */
    private static final long f28067new = Ctry.m31361catch(-4611686018427387903L);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b3\u00104J&\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0007\u001a\u00060\u0004j\u0002`\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\fJ\u001d\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u000fJ\u001d\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\fJ\u001d\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u000fJ\u001d\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0011J\u001d\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\fJ\u001d\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u000fJ\u001d\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0011J\u001d\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\fJ\u001d\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u000fJ\u001d\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u0011J\u001d\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\fJ\u001d\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010\u000fJ\u001d\u0010 \u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b \u0010\u0011J\u001d\u0010!\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\tH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\fJ\u001d\u0010\"\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u000fJ\u001d\u0010#\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010\u0011J\u001d\u0010%\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020$H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b%\u0010&J\u001d\u0010'\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020$H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b'\u0010&J\u001f\u0010(\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020$H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020$H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b*\u0010)R\u001f\u0010+\u001a\u00020\n8\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001f\u0010/\u001a\u00020\n8\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b/\u0010,\u001a\u0004\b0\u0010.R\"\u00101\u001a\u00020\n8\u0000@\u0000X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b1\u0010,\u001a\u0004\b2\u0010.\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00065"}, d2 = {"kotlin/time/new$do", "", "", ES6Iterator.VALUE_PROPERTY, "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "do", "", "Lkotlin/time/new;", "return", "(I)J", "", "static", "(J)J", "public", "(D)J", "class", "const", "catch", "super", "throw", "final", "package", "private", "finally", "import", "native", "while", "this", "break", "goto", "for", "new", "if", "", "switch", "(Ljava/lang/String;)J", "throws", "extends", "(Ljava/lang/String;)Lkotlin/time/new;", "default", "ZERO", "J", "else", "()J", "INFINITE", "try", "NEG_INFINITE", "case", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.time.new$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class Cdo {
        private Cdo() {
        }

        @iz1(version = "1.5")
        /* renamed from: break, reason: not valid java name */
        public final long m31326break(long j) {
            return Ctry.B(j, TimeUnit.HOURS);
        }

        /* renamed from: case, reason: not valid java name */
        public final long m31327case() {
            return Cnew.f28067new;
        }

        @iz1(version = "1.5")
        /* renamed from: catch, reason: not valid java name */
        public final long m31328catch(double d) {
            return Ctry.z(d, TimeUnit.MICROSECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: class, reason: not valid java name */
        public final long m31329class(int i) {
            return Ctry.A(i, TimeUnit.MICROSECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: const, reason: not valid java name */
        public final long m31330const(long j) {
            return Ctry.B(j, TimeUnit.MICROSECONDS);
        }

        @iz1(version = "1.5")
        @z41
        /* renamed from: default, reason: not valid java name */
        public final Cnew m31331default(@m41 String value) {
            Csuper.m30700throw(value, "value");
            try {
                return Cnew.m31289case(Ctry.t(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final double m31332do(double d, @m41 TimeUnit sourceUnit, @m41 TimeUnit targetUnit) {
            Csuper.m30700throw(sourceUnit, "sourceUnit");
            Csuper.m30700throw(targetUnit, "targetUnit");
            return Celse.m31279if(d, sourceUnit, targetUnit);
        }

        /* renamed from: else, reason: not valid java name */
        public final long m31333else() {
            return Cnew.f28066if;
        }

        @iz1(version = "1.5")
        @z41
        /* renamed from: extends, reason: not valid java name */
        public final Cnew m31334extends(@m41 String value) {
            Csuper.m30700throw(value, "value");
            try {
                return Cnew.m31289case(Ctry.t(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @iz1(version = "1.5")
        /* renamed from: final, reason: not valid java name */
        public final long m31335final(double d) {
            return Ctry.z(d, TimeUnit.MILLISECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: finally, reason: not valid java name */
        public final long m31336finally(double d) {
            return Ctry.z(d, TimeUnit.SECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: for, reason: not valid java name */
        public final long m31337for(int i) {
            return Ctry.A(i, TimeUnit.DAYS);
        }

        @iz1(version = "1.5")
        /* renamed from: goto, reason: not valid java name */
        public final long m31338goto(double d) {
            return Ctry.z(d, TimeUnit.HOURS);
        }

        @iz1(version = "1.5")
        /* renamed from: if, reason: not valid java name */
        public final long m31339if(double d) {
            return Ctry.z(d, TimeUnit.DAYS);
        }

        @iz1(version = "1.5")
        /* renamed from: import, reason: not valid java name */
        public final long m31340import(int i) {
            return Ctry.A(i, TimeUnit.MINUTES);
        }

        @iz1(version = "1.5")
        /* renamed from: native, reason: not valid java name */
        public final long m31341native(long j) {
            return Ctry.B(j, TimeUnit.MINUTES);
        }

        @iz1(version = "1.5")
        /* renamed from: new, reason: not valid java name */
        public final long m31342new(long j) {
            return Ctry.B(j, TimeUnit.DAYS);
        }

        @iz1(version = "1.5")
        /* renamed from: package, reason: not valid java name */
        public final long m31343package(int i) {
            return Ctry.A(i, TimeUnit.SECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: private, reason: not valid java name */
        public final long m31344private(long j) {
            return Ctry.B(j, TimeUnit.SECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: public, reason: not valid java name */
        public final long m31345public(double d) {
            return Ctry.z(d, TimeUnit.NANOSECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: return, reason: not valid java name */
        public final long m31346return(int i) {
            return Ctry.A(i, TimeUnit.NANOSECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: static, reason: not valid java name */
        public final long m31347static(long j) {
            return Ctry.B(j, TimeUnit.NANOSECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: super, reason: not valid java name */
        public final long m31348super(int i) {
            return Ctry.A(i, TimeUnit.MILLISECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: switch, reason: not valid java name */
        public final long m31349switch(@m41 String value) {
            Csuper.m30700throw(value, "value");
            try {
                return Ctry.t(value, false);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e);
            }
        }

        @iz1(version = "1.5")
        /* renamed from: this, reason: not valid java name */
        public final long m31350this(int i) {
            return Ctry.A(i, TimeUnit.HOURS);
        }

        @iz1(version = "1.5")
        /* renamed from: throw, reason: not valid java name */
        public final long m31351throw(long j) {
            return Ctry.B(j, TimeUnit.MILLISECONDS);
        }

        @iz1(version = "1.5")
        /* renamed from: throws, reason: not valid java name */
        public final long m31352throws(@m41 String value) {
            Csuper.m30700throw(value, "value");
            try {
                return Ctry.t(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }

        /* renamed from: try, reason: not valid java name */
        public final long m31353try() {
            return Cnew.f28065for;
        }

        @iz1(version = "1.5")
        /* renamed from: while, reason: not valid java name */
        public final long m31354while(double d) {
            return Ctry.z(d, TimeUnit.MINUTES);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    private /* synthetic */ Cnew(long j) {
        this.f28069do = j;
    }

    public static final <T> T A(long j, @m41 Function2<? super Long, ? super Integer, ? extends T> action) {
        Csuper.m30700throw(action, "action");
        return action.invoke(Long.valueOf(f(j)), Integer.valueOf(j(j)));
    }

    public static final <T> T B(long j, @m41 Function3<? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Csuper.m30700throw(action, "action");
        return action.invoke(Integer.valueOf(F(j, TimeUnit.MINUTES)), Integer.valueOf(l(j)), Integer.valueOf(j(j)));
    }

    public static final <T> T C(long j, @m41 Function4<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Csuper.m30700throw(action, "action");
        return action.invoke(Integer.valueOf(F(j, TimeUnit.HOURS)), Integer.valueOf(h(j)), Integer.valueOf(l(j)), Integer.valueOf(j(j)));
    }

    public static final <T> T D(long j, @m41 Function5<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Csuper.m30700throw(action, "action");
        return action.invoke(Integer.valueOf(F(j, TimeUnit.DAYS)), Integer.valueOf(m31324while(j)), Integer.valueOf(h(j)), Integer.valueOf(l(j)), Integer.valueOf(j(j)));
    }

    public static final double E(long j, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        if (j == f28065for) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == f28067new) {
            return Double.NEGATIVE_INFINITY;
        }
        return Celse.m31279if(o(j), m(j), unit);
    }

    public static final int F(long j, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        return (int) Ccase.m30863abstract(H(j, unit), Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @m41
    public static final String G(long j) {
        StringBuilder sb = new StringBuilder();
        if (u(j)) {
            sb.append(hy1.f2561for);
        }
        sb.append("PT");
        long jM31315super = m31315super(j);
        F(jM31315super, TimeUnit.HOURS);
        int iH = h(jM31315super);
        int iL = l(jM31315super);
        int iJ = j(jM31315super);
        long jM31310protected = m31310protected(jM31315super);
        if (t(j)) {
            jM31310protected = 9999999999999L;
        }
        boolean z = true;
        boolean z2 = jM31310protected != 0;
        boolean z3 = (iL == 0 && iJ == 0) ? false : true;
        if (iH == 0 && (!z3 || !z2)) {
            z = false;
        }
        if (z2) {
            sb.append(jM31310protected);
            sb.append('H');
        }
        if (z) {
            sb.append(iH);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m31322try(j, sb, iL, iJ, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final long H(long j, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        if (j == f28065for) {
            return Long.MAX_VALUE;
        }
        if (j == f28067new) {
            return Long.MIN_VALUE;
        }
        return Celse.m31278for(o(j), m(j), unit);
    }

    @Cfor(message = "Use inWholeMilliseconds property instead.", replaceWith = @an1(expression = "this.inWholeMilliseconds", imports = {}))
    public static final long I(long j) {
        return m31317synchronized(j);
    }

    @Cfor(message = "Use inWholeNanoseconds property instead.", replaceWith = @an1(expression = "this.inWholeNanoseconds", imports = {}))
    public static final long J(long j) {
        return d(j);
    }

    @m41
    public static String K(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == f28065for) {
            return "Infinity";
        }
        if (j == f28067new) {
            return "-Infinity";
        }
        boolean zU = u(j);
        StringBuilder sb = new StringBuilder();
        if (zU) {
            sb.append(hy1.f2561for);
        }
        long jM31315super = m31315super(j);
        F(jM31315super, TimeUnit.DAYS);
        int iM31324while = m31324while(jM31315super);
        int iH = h(jM31315super);
        int iL = l(jM31315super);
        int iJ = j(jM31315super);
        long jM31323volatile = m31323volatile(jM31315super);
        int i = 0;
        boolean z = jM31323volatile != 0;
        boolean z2 = iM31324while != 0;
        boolean z3 = iH != 0;
        boolean z4 = (iL == 0 && iJ == 0) ? false : true;
        if (z) {
            sb.append(jM31323volatile);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM31324while);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iH);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iL != 0 || z || z2 || z3) {
                m31322try(jM31315super, sb, iL, iJ, 9, ak.aB, false);
            } else if (iJ >= 1000000) {
                m31322try(jM31315super, sb, iJ / 1000000, iJ % 1000000, 6, "ms", false);
            } else if (iJ >= 1000) {
                m31322try(jM31315super, sb, iJ / 1000, iJ % 1000, 3, "us", false);
            } else {
                sb.append(iJ);
                sb.append("ns");
            }
            i = i4;
        }
        if (zU && i > 1) {
            sb.insert(1, '(').append(')');
        }
        String string = sb.toString();
        Csuper.m30696super(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @m41
    public static final String L(long j, @m41 TimeUnit unit, int i) {
        Csuper.m30700throw(unit, "unit");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + i).toString());
        }
        double dE = E(j, unit);
        if (Double.isInfinite(dE)) {
            return String.valueOf(dE);
        }
        return Cthis.m31357if(dE, Ccase.m30885return(i, 12)) + Cgoto.m31284else(unit);
    }

    public static /* synthetic */ String M(long j, TimeUnit timeUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return L(j, timeUnit, i);
    }

    public static final long N(long j) {
        return Ctry.m31359break(-o(j), ((int) j) & 1);
    }

    @iz1(version = "1.5")
    public static /* synthetic */ void a() {
    }

    @Cfor(message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.SECONDS)", imports = {}))
    /* renamed from: abstract, reason: not valid java name */
    public static /* synthetic */ void m31287abstract() {
    }

    public static final long b(long j) {
        return H(j, TimeUnit.MINUTES);
    }

    /* renamed from: break, reason: not valid java name */
    public static final double m31288break(long j, long j2) {
        TimeUnit timeUnit = (TimeUnit) kotlin.comparisons.Cdo.b(m(j), m(j2));
        return E(j, timeUnit) / E(j2, timeUnit);
    }

    @iz1(version = "1.5")
    public static /* synthetic */ void c() {
    }

    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ Cnew m31289case(long j) {
        return new Cnew(j);
    }

    /* renamed from: catch, reason: not valid java name */
    public static final long m31290catch(long j, double d) {
        int iT = kotlin.math.Cnew.T(d);
        if (iT == d && iT != 0) {
            return m31291class(j, iT);
        }
        TimeUnit timeUnitM = m(j);
        return Ctry.z(E(j, timeUnitM) / d, timeUnitM);
    }

    /* renamed from: class, reason: not valid java name */
    public static final long m31291class(long j, int i) {
        if (i == 0) {
            if (v(j)) {
                return f28065for;
            }
            if (u(j)) {
                return f28067new;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        }
        if (s(j)) {
            return Ctry.m31363const(o(j) / i);
        }
        if (t(j)) {
            return z(j, kotlin.math.Cnew.d(i));
        }
        long j2 = i;
        long jO = o(j) / j2;
        if (-4611686018426L > jO || 4611686018426L < jO) {
            return Ctry.m31361catch(jO);
        }
        return Ctry.m31363const(Ctry.r(jO) + (Ctry.r(o(j) - (jO * j2)) / j2));
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m31292const(long j, Object obj) {
        return (obj instanceof Cnew) && j == ((Cnew) obj).O();
    }

    /* renamed from: continue, reason: not valid java name */
    public static final double m31293continue(long j) {
        return E(j, TimeUnit.SECONDS);
    }

    public static final long d(long j) {
        long jO = o(j);
        if (s(j)) {
            return jO;
        }
        if (jO > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (jO < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return Ctry.r(jO);
    }

    /* renamed from: default, reason: not valid java name */
    public static final double m31294default(long j) {
        return E(j, TimeUnit.MILLISECONDS);
    }

    @iz1(version = "1.5")
    public static /* synthetic */ void e() {
    }

    @Cfor(message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.MINUTES)", imports = {}))
    /* renamed from: extends, reason: not valid java name */
    public static /* synthetic */ void m31296extends() {
    }

    public static final long f(long j) {
        return H(j, TimeUnit.SECONDS);
    }

    /* renamed from: final, reason: not valid java name */
    public static final boolean m31297final(long j, long j2) {
        return j == j2;
    }

    /* renamed from: finally, reason: not valid java name */
    public static final double m31298finally(long j) {
        return E(j, TimeUnit.MINUTES);
    }

    @wg1
    public static /* synthetic */ void g() {
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m31300goto(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return (j > j2 ? 1 : (j == j2 ? 0 : -1));
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return u(j) ? -i : i;
    }

    public static final int h(long j) {
        if (t(j)) {
            return 0;
        }
        return (int) (b(j) % 60);
    }

    @wg1
    public static /* synthetic */ void i() {
    }

    /* renamed from: implements, reason: not valid java name */
    public static final long m31302implements(long j) {
        return H(j, TimeUnit.MICROSECONDS);
    }

    @Cfor(message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.DAYS)", imports = {}))
    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ void m31303import() {
    }

    @iz1(version = "1.5")
    /* renamed from: instanceof, reason: not valid java name */
    public static /* synthetic */ void m31304instanceof() {
    }

    @iz1(version = "1.5")
    /* renamed from: interface, reason: not valid java name */
    public static /* synthetic */ void m31305interface() {
    }

    public static final int j(long j) {
        if (t(j)) {
            return 0;
        }
        return (int) (r(j) ? Ctry.r(o(j) % 1000) : o(j) % 1000000000);
    }

    @wg1
    public static /* synthetic */ void k() {
    }

    public static final int l(long j) {
        if (t(j)) {
            return 0;
        }
        return (int) (f(j) % 60);
    }

    private static final TimeUnit m(long j) {
        return s(j) ? TimeUnit.NANOSECONDS : TimeUnit.MILLISECONDS;
    }

    private static final int n(long j) {
        return ((int) j) & 1;
    }

    /* renamed from: native, reason: not valid java name */
    public static final double m31306native(long j) {
        return E(j, TimeUnit.DAYS);
    }

    /* renamed from: new, reason: not valid java name */
    private static final long m31307new(long j, long j2, long j3) {
        long jS = Ctry.s(j3);
        long j4 = j2 + jS;
        if (-4611686018426L > j4 || 4611686018426L < j4) {
            return Ctry.m31361catch(Ccase.m30863abstract(j4, -4611686018427387903L, Ctry.f28072for));
        }
        return Ctry.m31363const(Ctry.r(j4) + (j3 - Ctry.r(jS)));
    }

    private static final long o(long j) {
        return j >> 1;
    }

    public static int p(long j) {
        return (int) (j ^ (j >>> 32));
    }

    @Cfor(message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.NANOSECONDS)", imports = {}))
    /* renamed from: package, reason: not valid java name */
    public static /* synthetic */ void m31308package() {
    }

    /* renamed from: private, reason: not valid java name */
    public static final double m31309private(long j) {
        return E(j, TimeUnit.NANOSECONDS);
    }

    /* renamed from: protected, reason: not valid java name */
    public static final long m31310protected(long j) {
        return H(j, TimeUnit.HOURS);
    }

    @Cfor(message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.HOURS)", imports = {}))
    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ void m31311public() {
    }

    public static final boolean q(long j) {
        return !t(j);
    }

    private static final boolean r(long j) {
        return (((int) j) & 1) == 1;
    }

    /* renamed from: return, reason: not valid java name */
    public static final double m31312return(long j) {
        return E(j, TimeUnit.HOURS);
    }

    private static final boolean s(long j) {
        return (((int) j) & 1) == 0;
    }

    @Cfor(message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.MICROSECONDS)", imports = {}))
    /* renamed from: static, reason: not valid java name */
    public static /* synthetic */ void m31313static() {
    }

    @iz1(version = "1.5")
    /* renamed from: strictfp, reason: not valid java name */
    public static /* synthetic */ void m31314strictfp() {
    }

    /* renamed from: super, reason: not valid java name */
    public static final long m31315super(long j) {
        return u(j) ? N(j) : j;
    }

    /* renamed from: switch, reason: not valid java name */
    public static final double m31316switch(long j) {
        return E(j, TimeUnit.MICROSECONDS);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final long m31317synchronized(long j) {
        return (r(j) && q(j)) ? o(j) : H(j, TimeUnit.MILLISECONDS);
    }

    public static final boolean t(long j) {
        return j == f28065for || j == f28067new;
    }

    /* renamed from: this, reason: not valid java name */
    public static long m31318this(long j) {
        if (s(j)) {
            long jO = o(j);
            if (-4611686018426999999L > jO || Ctry.f28073if < jO) {
                throw new AssertionError(o(j) + " ns is out of nanoseconds range");
            }
        } else {
            long jO2 = o(j);
            if (-4611686018427387903L > jO2 || Ctry.f28072for < jO2) {
                throw new AssertionError(o(j) + " ms is out of milliseconds range");
            }
            long jO3 = o(j);
            if (-4611686018426L <= jO3 && 4611686018426L >= jO3) {
                throw new AssertionError(o(j) + " ms is denormalized");
            }
        }
        return j;
    }

    @wg1
    /* renamed from: throw, reason: not valid java name */
    public static /* synthetic */ void m31319throw() {
    }

    @Cfor(message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required.", replaceWith = @an1(expression = "toDouble(DurationUnit.MILLISECONDS)", imports = {}))
    /* renamed from: throws, reason: not valid java name */
    public static /* synthetic */ void m31320throws() {
    }

    @iz1(version = "1.5")
    /* renamed from: transient, reason: not valid java name */
    public static /* synthetic */ void m31321transient() {
    }

    /* renamed from: try, reason: not valid java name */
    private static final void m31322try(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append(Ctry.f28883do);
            String strG3 = kotlin.text.Cstatic.g3(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strG3.length() - 1;
            while (true) {
                if (length < 0) {
                    break;
                }
                if (strG3.charAt(length) != '0') {
                    i4 = length;
                    break;
                }
                length--;
            }
            int i5 = i4 + 1;
            if (z || i5 >= 3) {
                sb.append((CharSequence) strG3, 0, ((i5 + 2) / 3) * 3);
                Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
            } else {
                sb.append((CharSequence) strG3, 0, i5);
                Csuper.m30696super(sb, "this.append(value, startIndex, endIndex)");
            }
        }
        sb.append(str);
    }

    public static final boolean u(long j) {
        return j < 0;
    }

    public static final boolean v(long j) {
        return j > 0;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static final long m31323volatile(long j) {
        return H(j, TimeUnit.DAYS);
    }

    public static final long w(long j, long j2) {
        return x(j, N(j2));
    }

    /* renamed from: while, reason: not valid java name */
    public static final int m31324while(long j) {
        if (t(j)) {
            return 0;
        }
        return (int) (m31310protected(j) % 24);
    }

    public static final long x(long j, long j2) {
        if (t(j)) {
            if (q(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (t(j2)) {
            return j2;
        }
        if ((((int) j) & 1) != (((int) j2) & 1)) {
            return r(j) ? m31307new(j, o(j), o(j2)) : m31307new(j, o(j2), o(j));
        }
        long jO = o(j) + o(j2);
        return s(j) ? Ctry.m31369final(jO) : Ctry.m31362class(jO);
    }

    public static final long y(long j, double d) {
        int iT = kotlin.math.Cnew.T(d);
        if (iT == d) {
            return z(j, iT);
        }
        TimeUnit timeUnitM = m(j);
        return Ctry.z(E(j, timeUnitM) * d, timeUnitM);
    }

    public static final long z(long j, int i) {
        if (t(j)) {
            if (i != 0) {
                return i > 0 ? j : N(j);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        }
        if (i == 0) {
            return f28066if;
        }
        long jO = o(j);
        long j2 = i;
        long j3 = jO * j2;
        if (!s(j)) {
            return j3 / j2 == jO ? Ctry.m31361catch(Ccase.m30869continue(j3, new bw0(-4611686018427387903L, Ctry.f28072for))) : kotlin.math.Cnew.e(jO) * kotlin.math.Cnew.d(i) > 0 ? f28065for : f28067new;
        }
        if (-2147483647L <= jO && 2147483647L >= jO) {
            return Ctry.m31363const(j3);
        }
        if (j3 / j2 == jO) {
            return Ctry.m31369final(j3);
        }
        long jS = Ctry.s(jO);
        long j4 = jS * j2;
        long jS2 = Ctry.s((jO - Ctry.r(jS)) * j2) + j4;
        return (j4 / j2 != jS || (jS2 ^ j4) < 0) ? kotlin.math.Cnew.e(jO) * kotlin.math.Cnew.d(i) > 0 ? f28065for : f28067new : Ctry.m31361catch(Ccase.m30869continue(jS2, new bw0(-4611686018427387903L, Ctry.f28072for)));
    }

    public final /* synthetic */ long O() {
        return this.f28069do;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Cnew cnew) {
        return m31325else(cnew.O());
    }

    /* renamed from: else, reason: not valid java name */
    public int m31325else(long j) {
        return m31300goto(this.f28069do, j);
    }

    public boolean equals(Object obj) {
        return m31292const(this.f28069do, obj);
    }

    public int hashCode() {
        return p(this.f28069do);
    }

    @m41
    public String toString() {
        return K(this.f28069do);
    }
}
