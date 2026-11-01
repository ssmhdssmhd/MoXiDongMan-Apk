package kotlin.time;

import android.support.v4.an0;
import android.support.v4.an1;
import android.support.v4.dn0;
import android.support.v4.hy1;
import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.Cfor;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import kotlin.text.Cthrows;
import kotlin.time.Cnew;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\bE\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\"\u0010\b\u001a\u00020\u0004*\u00020\u00072\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\"\u0010\u000b\u001a\u00020\u0004*\u00020\n2\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001f\u0010\u000e\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\r\u001a\u00020\u0004H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001f\u0010\u0010\u001a\u00020\u0004*\u00020\n2\u0006\u0010\r\u001a\u00020\u0004H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\"\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u001a)\u0010\u001d\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00002\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a)\u0010\u001e\u001a\u00020\u0000*\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00002\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0002\u001a\u001a\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a\u001a\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b'\u0010%\u001a\"\u0010*\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0000H\u0003ø\u0001\u0000¢\u0006\u0004\b*\u0010+\u001a\u001a\u0010,\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b,\u0010%\u001a\u001a\u0010-\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b-\u0010%\"\u0016\u00100\u001a\u00020\u00008\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b.\u0010/\"\u0016\u00103\u001a\u00020\u00078\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b1\u00102\"\u0016\u00105\u001a\u00020\u00078\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b4\u00102\"\u0016\u00107\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b6\u00102\"#\u0010<\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b:\u0010;\u001a\u0004\b8\u00109\"#\u0010<\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b:\u0010>\u001a\u0004\b=\u0010%\"#\u0010<\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b:\u0010A\u001a\u0004\b?\u0010@\"#\u0010D\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bC\u0010;\u001a\u0004\bB\u00109\"#\u0010D\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bC\u0010>\u001a\u0004\bE\u0010%\"#\u0010D\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bC\u0010A\u001a\u0004\bF\u0010@\"#\u0010I\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bH\u0010;\u001a\u0004\bG\u00109\"#\u0010I\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bH\u0010>\u001a\u0004\bJ\u0010%\"#\u0010I\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bH\u0010A\u001a\u0004\bK\u0010@\"#\u0010N\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bM\u0010;\u001a\u0004\bL\u00109\"#\u0010N\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bM\u0010>\u001a\u0004\bO\u0010%\"#\u0010N\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bM\u0010A\u001a\u0004\bP\u0010@\"#\u0010S\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bR\u0010;\u001a\u0004\bQ\u00109\"#\u0010S\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bR\u0010>\u001a\u0004\bT\u0010%\"#\u0010S\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bR\u0010A\u001a\u0004\bU\u0010@\"#\u0010X\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bW\u0010;\u001a\u0004\bV\u00109\"#\u0010X\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bW\u0010>\u001a\u0004\bY\u0010%\"#\u0010X\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\bW\u0010A\u001a\u0004\bZ\u0010@\"#\u0010]\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\\\u0010;\u001a\u0004\b[\u00109\"#\u0010]\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\\\u0010>\u001a\u0004\b^\u0010%\"#\u0010]\u001a\u00020\u0004*\u00020\n8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\\\u0010A\u001a\u0004\b_\u0010@\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006`"}, d2 = {"", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/new;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(ILjava/util/concurrent/TimeUnit;)J", "", "B", "(JLjava/util/concurrent/TimeUnit;)J", "", ak.aD, "(DLjava/util/concurrent/TimeUnit;)J", "duration", "y", "(IJ)J", "x", "(DJ)J", "", ES6Iterator.VALUE_PROPERTY, "", "strictIso", ak.aH, "(Ljava/lang/String;Z)J", ak.aG, "startIndex", "Lkotlin/Function1;", "", "predicate", "w", "v", "nanos", ak.aB, "millis", "r", "normalNanos", "const", "(J)J", "normalMillis", "catch", "normalValue", "unitDiscriminator", "break", "(JI)J", "final", "class", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "NANOS_IN_MILLIS", "if", "J", "MAX_NANOS", "for", "MAX_MILLIS", "new", "MAX_NANOS_IN_MILLIS", "g", "(I)J", "getNanoseconds$annotations", "(I)V", "nanoseconds", "h", "(J)V", "f", "(D)J", "(D)V", "package", "getMicroseconds$annotations", "microseconds", "private", "finally", "interface", "getMilliseconds$annotations", "milliseconds", "protected", "volatile", "m", "getSeconds$annotations", "seconds", "n", "l", ak.av, "getMinutes$annotations", "minutes", "b", "synchronized", "static", "getHours$annotations", "hours", "switch", "return", "throw", "getDays$annotations", "days", "while", "super", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* renamed from: kotlin.time.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final int f28071do = 1000000;

    /* renamed from: for, reason: not valid java name */
    public static final long f28072for = 4611686018427387903L;

    /* renamed from: if, reason: not valid java name */
    public static final long f28073if = 4611686018426999999L;

    /* renamed from: new, reason: not valid java name */
    private static final long f28074new = 4611686018426L;

    @l90
    @iz1(version = "1.3")
    public static final long A(int i, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        return unit.compareTo(TimeUnit.SECONDS) <= 0 ? m31363const(Celse.m31280new(i, unit, TimeUnit.NANOSECONDS)) : B(i, unit);
    }

    @l90
    @iz1(version = "1.3")
    public static final long B(long j, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        long jM31280new = Celse.m31280new(f28073if, timeUnit, unit);
        return ((-jM31280new) <= j && jM31280new >= j) ? m31363const(Celse.m31280new(j, unit, timeUnit)) : m31361catch(Ccase.m30863abstract(Celse.m31278for(j, unit, TimeUnit.MILLISECONDS), -4611686018427387903L, f28072for));
    }

    public static final long a(int i) {
        return A(i, TimeUnit.MINUTES);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.microseconds() function instead.", replaceWith = @an1(expression = "Duration.microseconds(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: abstract, reason: not valid java name */
    public static /* synthetic */ void m31358abstract(double d) {
    }

    public static final long b(long j) {
        return B(j, TimeUnit.MINUTES);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @l90
    /* renamed from: break, reason: not valid java name */
    public static final long m31359break(long j, int i) {
        return Cnew.m31318this((j << 1) + i);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.minutes() function instead.", replaceWith = @an1(expression = "Duration.minutes(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void c(double d) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @l90
    /* renamed from: catch, reason: not valid java name */
    public static final long m31361catch(long j) {
        return Cnew.m31318this((j << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @l90
    /* renamed from: class, reason: not valid java name */
    public static final long m31362class(long j) {
        return (-4611686018426L <= j && f28074new >= j) ? m31363const(r(j)) : m31361catch(Ccase.m30863abstract(j, -4611686018427387903L, f28072for));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @l90
    /* renamed from: const, reason: not valid java name */
    public static final long m31363const(long j) {
        return Cnew.m31318this(j << 1);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.microseconds() function instead.", replaceWith = @an1(expression = "Duration.microseconds(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: continue, reason: not valid java name */
    public static /* synthetic */ void m31364continue(int i) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.minutes() function instead.", replaceWith = @an1(expression = "Duration.minutes(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void d(int i) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.hours() function instead.", replaceWith = @an1(expression = "Duration.hours(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: default, reason: not valid java name */
    public static /* synthetic */ void m31365default(int i) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.minutes() function instead.", replaceWith = @an1(expression = "Duration.minutes(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void e(long j) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.hours() function instead.", replaceWith = @an1(expression = "Duration.hours(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: extends, reason: not valid java name */
    public static /* synthetic */ void m31368extends(long j) {
    }

    public static final long f(double d) {
        return z(d, TimeUnit.NANOSECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @l90
    /* renamed from: final, reason: not valid java name */
    public static final long m31369final(long j) {
        return (-4611686018426999999L <= j && f28073if >= j) ? m31363const(j) : m31361catch(s(j));
    }

    /* renamed from: finally, reason: not valid java name */
    public static final long m31370finally(double d) {
        return z(d, TimeUnit.MICROSECONDS);
    }

    public static final long g(int i) {
        return A(i, TimeUnit.NANOSECONDS);
    }

    public static final long h(long j) {
        return B(j, TimeUnit.NANOSECONDS);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.nanoseconds() function instead.", replaceWith = @an1(expression = "Duration.nanoseconds(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void i(double d) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.milliseconds() function instead.", replaceWith = @an1(expression = "Duration.milliseconds(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: implements, reason: not valid java name */
    public static /* synthetic */ void m31374implements(int i) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.days() function instead.", replaceWith = @an1(expression = "Duration.days(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: import, reason: not valid java name */
    public static /* synthetic */ void m31375import(double d) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.milliseconds() function instead.", replaceWith = @an1(expression = "Duration.milliseconds(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: instanceof, reason: not valid java name */
    public static /* synthetic */ void m31376instanceof(long j) {
    }

    /* renamed from: interface, reason: not valid java name */
    public static final long m31377interface(int i) {
        return A(i, TimeUnit.MILLISECONDS);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.nanoseconds() function instead.", replaceWith = @an1(expression = "Duration.nanoseconds(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void j(int i) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.nanoseconds() function instead.", replaceWith = @an1(expression = "Duration.nanoseconds(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void k(long j) {
    }

    public static final long l(double d) {
        return z(d, TimeUnit.SECONDS);
    }

    public static final long m(int i) {
        return A(i, TimeUnit.SECONDS);
    }

    public static final long n(long j) {
        return B(j, TimeUnit.SECONDS);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.days() function instead.", replaceWith = @an1(expression = "Duration.days(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: native, reason: not valid java name */
    public static /* synthetic */ void m31378native(int i) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.seconds() function instead.", replaceWith = @an1(expression = "Duration.seconds(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void o(double d) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.seconds() function instead.", replaceWith = @an1(expression = "Duration.seconds(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void p(int i) {
    }

    /* renamed from: package, reason: not valid java name */
    public static final long m31380package(int i) {
        return A(i, TimeUnit.MICROSECONDS);
    }

    /* renamed from: private, reason: not valid java name */
    public static final long m31381private(long j) {
        return B(j, TimeUnit.MICROSECONDS);
    }

    /* renamed from: protected, reason: not valid java name */
    public static final long m31382protected(long j) {
        return B(j, TimeUnit.MILLISECONDS);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.days() function instead.", replaceWith = @an1(expression = "Duration.days(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: public, reason: not valid java name */
    public static /* synthetic */ void m31383public(long j) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.seconds() function instead.", replaceWith = @an1(expression = "Duration.seconds(this)", imports = {"kotlin.time.Duration"}))
    public static /* synthetic */ void q(long j) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long r(long j) {
        return j * 1000000;
    }

    /* renamed from: return, reason: not valid java name */
    public static final long m31384return(double d) {
        return z(d, TimeUnit.HOURS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long s(long j) {
        return j / 1000000;
    }

    /* renamed from: static, reason: not valid java name */
    public static final long m31385static(int i) {
        return A(i, TimeUnit.HOURS);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.microseconds() function instead.", replaceWith = @an1(expression = "Duration.microseconds(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: strictfp, reason: not valid java name */
    public static /* synthetic */ void m31386strictfp(long j) {
    }

    /* renamed from: super, reason: not valid java name */
    public static final long m31387super(double d) {
        return z(d, TimeUnit.DAYS);
    }

    /* renamed from: switch, reason: not valid java name */
    public static final long m31388switch(long j) {
        return B(j, TimeUnit.HOURS);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final long m31389synchronized(double d) {
        return z(d, TimeUnit.MINUTES);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @l90
    public static final long t(String str, boolean z) {
        long jX;
        long jX2;
        String str2 = str;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        Cnew.Cdo cdo = Cnew.f28068try;
        long jM31333else = cdo.m31333else();
        char cCharAt = str2.charAt(0);
        int length2 = (cCharAt == '+' || cCharAt == '-') ? 1 : 0;
        boolean z2 = length2 > 0;
        boolean z3 = z2 && Cstatic.q4(str2, hy1.f2561for, false, 2, null);
        if (length <= length2) {
            throw new IllegalArgumentException("No components");
        }
        char c = '0';
        char c2 = '9';
        if (str2.charAt(length2) == 'P') {
            int i = length2 + 1;
            if (i == length) {
                throw new IllegalArgumentException();
            }
            TimeUnit timeUnit = null;
            boolean z4 = false;
            while (i < length) {
                if (str2.charAt(i) != 'T') {
                    int i2 = i;
                    while (i2 < str.length()) {
                        char cCharAt2 = str2.charAt(i2);
                        if (!((c <= cCharAt2 && c2 >= cCharAt2) || Cstatic.h2("+-.", cCharAt2, false, 2, null))) {
                            break;
                        }
                        i2++;
                        c2 = '9';
                        c = '0';
                    }
                    String strSubstring = str2.substring(i, i2);
                    Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    if (strSubstring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = i + strSubstring.length();
                    if (length3 < 0 || length3 > Cstatic.v2(str)) {
                        throw new IllegalArgumentException("Missing unit for value " + strSubstring);
                    }
                    char cCharAt3 = str2.charAt(length3);
                    i = length3 + 1;
                    TimeUnit timeUnitM31285try = Cgoto.m31285try(cCharAt3, z4);
                    if (timeUnit != null && timeUnit.compareTo(timeUnitM31285try) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iD2 = Cstatic.D2(strSubstring, org.apache.commons.lang3.Ctry.f28883do, 0, false, 6, null);
                    if (timeUnitM31285try != TimeUnit.SECONDS || iD2 <= 0) {
                        jX2 = Cnew.x(jM31333else, B(u(strSubstring), timeUnitM31285try));
                    } else {
                        String strSubstring2 = strSubstring.substring(0, iD2);
                        Csuper.m30696super(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        long jX3 = Cnew.x(jM31333else, B(u(strSubstring2), timeUnitM31285try));
                        String strSubstring3 = strSubstring.substring(iD2);
                        Csuper.m30696super(strSubstring3, "(this as java.lang.String).substring(startIndex)");
                        jX2 = Cnew.x(jX3, z(Double.parseDouble(strSubstring3), timeUnitM31285try));
                    }
                    jM31333else = jX2;
                    timeUnit = timeUnitM31285try;
                    c2 = '9';
                    c = '0';
                    str2 = str;
                } else {
                    if (z4 || (i = i + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z4 = true;
                }
            }
        } else {
            if (z) {
                throw new IllegalArgumentException();
            }
            String str3 = "Unexpected order of duration components";
            if (Creturn.q1(str, length2, "Infinity", 0, Math.max(length - length2, 8), true)) {
                jM31333else = cdo.m31353try();
            } else {
                boolean z5 = !z2;
                if (z2 && str.charAt(length2) == '(' && Cthrows.A6(str) == ')') {
                    length2++;
                    length--;
                    if (length2 == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    z5 = true;
                }
                boolean z6 = false;
                TimeUnit timeUnit2 = null;
                while (length2 < length) {
                    if (z6 && z5) {
                        while (length2 < str.length()) {
                            if (!(str.charAt(length2) == ' ')) {
                                break;
                            }
                            length2++;
                        }
                    }
                    int i3 = length2;
                    while (i3 < str.length()) {
                        char cCharAt4 = str.charAt(i3);
                        if (!(('0' <= cCharAt4 && '9' >= cCharAt4) || cCharAt4 == '.')) {
                            break;
                        }
                        i3++;
                    }
                    String strSubstring4 = str.substring(length2, i3);
                    Csuper.m30696super(strSubstring4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    if (strSubstring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length4 = length2 + strSubstring4.length();
                    int i4 = length4;
                    while (i4 < str.length()) {
                        char cCharAt5 = str.charAt(i4);
                        if (!('a' <= cCharAt5 && 'z' >= cCharAt5)) {
                            break;
                        }
                        i4++;
                    }
                    String strSubstring5 = str.substring(length4, i4);
                    Csuper.m30696super(strSubstring5, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    length2 = length4 + strSubstring5.length();
                    TimeUnit timeUnitM31283case = Cgoto.m31283case(strSubstring5);
                    if (timeUnit2 != null && timeUnit2.compareTo(timeUnitM31283case) <= 0) {
                        throw new IllegalArgumentException(str3);
                    }
                    String str4 = str3;
                    int iD22 = Cstatic.D2(strSubstring4, org.apache.commons.lang3.Ctry.f28883do, 0, false, 6, null);
                    if (iD22 > 0) {
                        String strSubstring6 = strSubstring4.substring(0, iD22);
                        Csuper.m30696super(strSubstring6, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        long jX4 = Cnew.x(jM31333else, B(Long.parseLong(strSubstring6), timeUnitM31283case));
                        String strSubstring7 = strSubstring4.substring(iD22);
                        Csuper.m30696super(strSubstring7, "(this as java.lang.String).substring(startIndex)");
                        jX = Cnew.x(jX4, z(Double.parseDouble(strSubstring7), timeUnitM31283case));
                        if (length2 < length) {
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                    } else {
                        jX = Cnew.x(jM31333else, B(Long.parseLong(strSubstring4), timeUnitM31283case));
                    }
                    jM31333else = jX;
                    timeUnit2 = timeUnitM31283case;
                    str3 = str4;
                    z6 = true;
                }
            }
        }
        return z3 ? Cnew.N(jM31333else) : jM31333else;
    }

    /* renamed from: throw, reason: not valid java name */
    public static final long m31391throw(int i) {
        return A(i, TimeUnit.DAYS);
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.hours() function instead.", replaceWith = @an1(expression = "Duration.hours(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: throws, reason: not valid java name */
    public static /* synthetic */ void m31392throws(double d) {
    }

    @l90
    @iz1(version = "1.3")
    @Cfor(message = "Use Duration.milliseconds() function instead.", replaceWith = @an1(expression = "Duration.milliseconds(this)", imports = {"kotlin.time.Duration"}))
    /* renamed from: transient, reason: not valid java name */
    public static /* synthetic */ void m31393transient(double d) {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final long u(String str) {
        boolean z;
        int length = str.length();
        int i = (length <= 0 || !Cstatic.h2("+-", str.charAt(0), false, 2, null)) ? 0 : 1;
        if (length - i > 16) {
            Iterable dn0Var = new dn0(i, Cstatic.v2(str));
            if ((dn0Var instanceof Collection) && ((Collection) dn0Var).isEmpty()) {
                z = true;
                if (z) {
                }
            } else {
                Iterator it = dn0Var.iterator();
                while (it.hasNext()) {
                    char cCharAt = str.charAt(((an0) it).mo290if());
                    if (!('0' <= cCharAt && '9' >= cCharAt)) {
                        z = false;
                        break;
                    }
                }
                z = true;
                if (z) {
                    return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
            }
        }
        if (Creturn.H1(str, "+", false, 2, null)) {
            str = Cthrows.H5(str, 1);
        }
        return Long.parseLong(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int v(String str, int i, Function1<? super Character, Boolean> function1) {
        while (i < str.length() && function1.invoke(Character.valueOf(str.charAt(i))).booleanValue()) {
            i++;
        }
        return i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static final long m31395volatile(double d) {
        return z(d, TimeUnit.MILLISECONDS);
    }

    private static final String w(String str, int i, Function1<? super Character, Boolean> function1) {
        int i2 = i;
        while (i2 < str.length() && function1.invoke(Character.valueOf(str.charAt(i2))).booleanValue()) {
            i2++;
        }
        String strSubstring = str.substring(i, i2);
        Csuper.m30696super(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    /* renamed from: while, reason: not valid java name */
    public static final long m31396while(long j) {
        return B(j, TimeUnit.DAYS);
    }

    @l90
    @iz1(version = "1.3")
    @um0
    private static final long x(double d, long j) {
        return Cnew.y(j, d);
    }

    @l90
    @iz1(version = "1.3")
    @um0
    private static final long y(int i, long j) {
        return Cnew.z(j, i);
    }

    @l90
    @iz1(version = "1.3")
    public static final long z(double d, @m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        double dM31279if = Celse.m31279if(d, unit, TimeUnit.NANOSECONDS);
        if (!(!Double.isNaN(dM31279if))) {
            throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
        }
        long jV = kotlin.math.Cnew.V(dM31279if);
        return (-4611686018426999999L <= jV && f28073if >= jV) ? m31363const(jV) : m31362class(kotlin.math.Cnew.V(Celse.m31279if(d, unit, TimeUnit.MILLISECONDS)));
    }
}
