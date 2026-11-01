package kotlin.math;

import android.support.v4.iz1;
import android.support.v4.um0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0010\u0006\n\u0002\b#\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\bE\u001a\u0011\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0019\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\n\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\f\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0019\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0018\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0000H\u0007\u001a\u0011\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0010\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0011\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0011\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0011\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0019\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0000H\u0087\b\u001a\u0019\u0010\"\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010#\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010%\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0010\u001a\u00020$H\u0087\b\u001a\u0015\u0010'\u001a\u00020\u0000*\u00020\u00002\u0006\u0010&\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010)\u001a\u00020\u0000*\u00020\u00002\u0006\u0010(\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010*\u001a\u00020\u0000*\u00020\u00002\u0006\u0010(\u001a\u00020$H\u0087\b\u001a\r\u0010+\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010,\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0015\u0010.\u001a\u00020\u0000*\u00020\u00002\u0006\u0010-\u001a\u00020\u0000H\u0087\b\u001a\f\u0010/\u001a\u00020$*\u00020\u0000H\u0007\u001a\f\u00101\u001a\u000200*\u00020\u0000H\u0007\u001a\u0011\u00103\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u00104\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u00105\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u00106\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u00107\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u00108\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0019\u00109\u001a\u0002022\u0006\u0010\b\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010:\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010;\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010<\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010=\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010>\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010?\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0019\u0010@\u001a\u0002022\u0006\u0010\u0001\u001a\u0002022\u0006\u0010\b\u001a\u000202H\u0087\b\u001a\u0011\u0010A\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010B\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010C\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0018\u0010D\u001a\u0002022\u0006\u0010\u0001\u001a\u0002022\u0006\u0010\u0014\u001a\u000202H\u0007\u001a\u0011\u0010E\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010F\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0010\u0010\b\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0007\u001a\u0011\u0010G\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010H\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010I\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0010\u0010J\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0007\u001a\u0011\u0010K\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010L\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0011\u0010M\u001a\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0019\u0010N\u001a\u0002022\u0006\u0010\u001f\u001a\u0002022\u0006\u0010 \u001a\u000202H\u0087\b\u001a\u0019\u0010O\u001a\u0002022\u0006\u0010\u001f\u001a\u0002022\u0006\u0010 \u001a\u000202H\u0087\b\u001a\u0015\u0010P\u001a\u000202*\u0002022\u0006\u0010\u0001\u001a\u000202H\u0087\b\u001a\u0015\u0010Q\u001a\u000202*\u0002022\u0006\u0010\u0010\u001a\u00020$H\u0087\b\u001a\u0015\u0010R\u001a\u000202*\u0002022\u0006\u0010&\u001a\u000202H\u0087\b\u001a\u0015\u0010S\u001a\u000202*\u0002022\u0006\u0010(\u001a\u000202H\u0087\b\u001a\u0015\u0010T\u001a\u000202*\u0002022\u0006\u0010(\u001a\u00020$H\u0087\b\u001a\r\u0010U\u001a\u000202*\u000202H\u0087\b\u001a\r\u0010V\u001a\u000202*\u000202H\u0087\b\u001a\u0015\u0010W\u001a\u000202*\u0002022\u0006\u0010-\u001a\u000202H\u0087\b\u001a\f\u0010X\u001a\u00020$*\u000202H\u0007\u001a\f\u0010Y\u001a\u000200*\u000202H\u0007\u001a\u0011\u0010Z\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020$H\u0087\b\u001a\u0019\u0010[\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020$2\u0006\u0010 \u001a\u00020$H\u0087\b\u001a\u0019\u0010\\\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020$2\u0006\u0010 \u001a\u00020$H\u0087\b\u001a\u0011\u0010]\u001a\u0002002\u0006\u0010\u0010\u001a\u000200H\u0087\b\u001a\u0019\u0010^\u001a\u0002002\u0006\u0010\u001f\u001a\u0002002\u0006\u0010 \u001a\u000200H\u0087\b\u001a\u0019\u0010_\u001a\u0002002\u0006\u0010\u001f\u001a\u0002002\u0006\u0010 \u001a\u000200H\u0087\b\"!\u0010d\u001a\u00020\u0000*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bb\u0010c\u001a\u0004\b`\u0010a\"!\u0010(\u001a\u00020\u0000*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\be\u0010c\u001a\u0004\b \u0010a\"!\u0010h\u001a\u00020\u0000*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bg\u0010c\u001a\u0004\bf\u0010a\"!\u0010d\u001a\u000202*\u0002028Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bb\u0010k\u001a\u0004\bi\u0010j\"!\u0010(\u001a\u000202*\u0002028Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\be\u0010k\u001a\u0004\bl\u0010j\"!\u0010h\u001a\u000202*\u0002028Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bg\u0010k\u001a\u0004\bm\u0010j\"!\u0010d\u001a\u00020$*\u00020$8Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bb\u0010p\u001a\u0004\bn\u0010o\" \u0010(\u001a\u00020$*\u00020$8F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\be\u0010p\u001a\u0004\bq\u0010o\"!\u0010d\u001a\u000200*\u0002008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bb\u0010t\u001a\u0004\br\u0010s\" \u0010(\u001a\u00020$*\u0002008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\be\u0010t\u001a\u0004\bu\u0010v¨\u0006w"}, d2 = {"", "x", "Z", "switch", "f0", "catch", "else", "super", "y", "while", "b0", "default", "h0", "const", "this", "native", "n", "d0", "finally", "private", "base", ak.aH, ak.ax, "v", "r", "return", "continue", "j0", "R", "for", "X", ak.av, "b", Cstatic.m1, ak.aD, "N", "", "O", "divisor", "do", "sign", "l0", "m0", "L", "H", TypedValues.Transition.S_TO, "J", ExifInterface.GPS_DIRECTION_TRUE, "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "a0", "throws", "g0", "class", "goto", "throw", "import", "c0", "extends", "i0", "final", "break", "public", "o", "e0", "package", "abstract", ak.aG, "q", "w", ak.aB, "static", "strictfp", "k0", ExifInterface.LATITUDE_SOUTH, "new", "Y", ExifInterface.LONGITUDE_EAST, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "P", "Q", "if", "n0", "o0", "M", OptRuntime.GeneratorState.resumptionPoint_TYPE, "K", "U", ExifInterface.LONGITUDE_WEST, "try", "F", "B", "case", "G", "C", "volatile", "(D)D", "getAbsoluteValue$annotations", "(D)V", "absoluteValue", "getSign$annotations", "j", "getUlp$annotations", "ulp", "interface", "(F)F", "(F)V", "c", "k", "protected", "(I)I", "(I)V", "d", "transient", "(J)J", "(J)V", "e", "(J)I", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/math/MathKt")
/* renamed from: kotlin.math.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cfor {
    @iz1(version = "1.2")
    @um0
    private static final float A(float f, float f2) {
        return Math.max(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    private static final int B(int i, int i2) {
        return Math.max(i, i2);
    }

    @iz1(version = "1.2")
    @um0
    private static final long C(long j, long j2) {
        return Math.max(j, j2);
    }

    @iz1(version = "1.2")
    @um0
    private static final double D(double d, double d2) {
        return Math.min(d, d2);
    }

    @iz1(version = "1.2")
    @um0
    private static final float E(float f, float f2) {
        return Math.min(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    private static final int F(int i, int i2) {
        return Math.min(i, i2);
    }

    @iz1(version = "1.2")
    @um0
    private static final long G(long j, long j2) {
        return Math.min(j, j2);
    }

    @iz1(version = "1.2")
    @um0
    private static final double H(double d) {
        return Math.nextAfter(d, Double.NEGATIVE_INFINITY);
    }

    @iz1(version = "1.2")
    @um0
    private static final float I(float f) {
        return Math.nextAfter(f, Double.NEGATIVE_INFINITY);
    }

    @iz1(version = "1.2")
    @um0
    private static final double J(double d, double d2) {
        return Math.nextAfter(d, d2);
    }

    @iz1(version = "1.2")
    @um0
    private static final float K(float f, float f2) {
        return Math.nextAfter(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    private static final double L(double d) {
        return Math.nextUp(d);
    }

    @iz1(version = "1.2")
    @um0
    private static final float M(float f) {
        return Math.nextUp(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final double N(double d, double d2) {
        return Math.pow(d, d2);
    }

    @iz1(version = "1.2")
    @um0
    private static final double O(double d, int i) {
        return Math.pow(d, i);
    }

    @iz1(version = "1.2")
    @um0
    private static final float P(float f, float f2) {
        return (float) Math.pow(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    private static final float Q(float f, int i) {
        return (float) Math.pow(f, i);
    }

    @iz1(version = "1.2")
    @um0
    private static final double R(double d) {
        return Math.rint(d);
    }

    @iz1(version = "1.2")
    @um0
    private static final float S(float f) {
        return (float) Math.rint(f);
    }

    @iz1(version = "1.2")
    public static int T(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d > Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        if (d < Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    @iz1(version = "1.2")
    public static final int U(float f) {
        if (Float.isNaN(f)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f);
    }

    @iz1(version = "1.2")
    public static long V(double d) {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(d);
    }

    @iz1(version = "1.2")
    public static final long W(float f) {
        return V(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final double X(double d) {
        return Math.signum(d);
    }

    @iz1(version = "1.2")
    @um0
    private static final float Y(float f) {
        return Math.signum(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final double Z(double d) {
        return Math.sin(d);
    }

    @iz1(version = "1.2")
    @um0
    public static /* synthetic */ void a(long j) {
    }

    @iz1(version = "1.2")
    @um0
    private static final float a0(float f) {
        return (float) Math.sin(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: abstract, reason: not valid java name */
    private static final float m30721abstract(float f) {
        return (float) Math.expm1(f);
    }

    private static final double b(double d) {
        return Math.signum(d);
    }

    @iz1(version = "1.2")
    @um0
    private static final double b0(double d) {
        return Math.sinh(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: break, reason: not valid java name */
    private static final float m30722break(float f) {
        return (float) m30753this(f);
    }

    private static final float c(float f) {
        return Math.signum(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final float c0(float f) {
        return (float) Math.sinh(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: case, reason: not valid java name */
    private static final long m30723case(long j) {
        return Math.abs(j);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: catch, reason: not valid java name */
    private static final double m30724catch(double d) {
        return Math.asin(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: class, reason: not valid java name */
    private static final float m30725class(float f) {
        return (float) Math.asin(f);
    }

    @iz1(version = "1.2")
    /* renamed from: const, reason: not valid java name */
    public static final double m30726const(double d) {
        double d2 = Cdo.f27907new;
        if (d < d2) {
            if (d <= (-d2)) {
                return -m30726const(-d);
            }
            if (Math.abs(d) < Cdo.f27905for) {
                return d;
            }
            double d3 = 6;
            Double.isNaN(d3);
            return d - (((d * d) * d) / d3);
        }
        if (d <= Cdo.f27902case) {
            double d4 = 1;
            Double.isNaN(d4);
            return Math.log(d + Math.sqrt((d * d) + d4));
        }
        if (d > Cdo.f27908try) {
            return Math.log(d) + Cdo.f27903do;
        }
        double d5 = 2;
        Double.isNaN(d5);
        double d6 = d * d5;
        double d7 = 1;
        Double.isNaN(d7);
        return Math.log(d6 + (d7 / d6));
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: continue, reason: not valid java name */
    private static final double m30727continue(double d) {
        return Math.floor(d);
    }

    public static int d(int i) {
        if (i < 0) {
            return -1;
        }
        return i > 0 ? 1 : 0;
    }

    @iz1(version = "1.2")
    @um0
    private static final double d0(double d) {
        return Math.sqrt(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: default, reason: not valid java name */
    private static final double m30728default(double d) {
        return Math.cosh(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final double m30729do(double d, double d2) {
        return Math.IEEEremainder(d, d2);
    }

    public static int e(long j) {
        if (j < 0) {
            return -1;
        }
        return j > 0 ? 1 : 0;
    }

    @iz1(version = "1.2")
    @um0
    private static final float e0(float f) {
        return (float) Math.sqrt(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: else, reason: not valid java name */
    private static final double m30730else(double d) {
        return Math.acos(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: extends, reason: not valid java name */
    private static final float m30731extends(float f) {
        return (float) Math.cosh(f);
    }

    @iz1(version = "1.2")
    @um0
    public static /* synthetic */ void f(double d) {
    }

    @iz1(version = "1.2")
    @um0
    private static final double f0(double d) {
        return Math.tan(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: final, reason: not valid java name */
    private static final float m30732final(float f) {
        return (float) m30726const(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: finally, reason: not valid java name */
    private static final double m30733finally(double d) {
        return Math.exp(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: for, reason: not valid java name */
    private static final double m30734for(double d) {
        return Math.abs(d);
    }

    @iz1(version = "1.2")
    @um0
    public static /* synthetic */ void g(float f) {
    }

    @iz1(version = "1.2")
    @um0
    private static final float g0(float f) {
        return (float) Math.tan(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final float m30735goto(float f) {
        return (float) Math.acos(f);
    }

    @iz1(version = "1.2")
    public static /* synthetic */ void h(int i) {
    }

    @iz1(version = "1.2")
    @um0
    private static final double h0(double d) {
        return Math.tanh(d);
    }

    @iz1(version = "1.2")
    public static /* synthetic */ void i(long j) {
    }

    @iz1(version = "1.2")
    @um0
    private static final float i0(float f) {
        return (float) Math.tanh(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final float m30736if(float f, float f2) {
        return (float) Math.IEEEremainder(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: implements, reason: not valid java name */
    public static /* synthetic */ void m30737implements(double d) {
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: import, reason: not valid java name */
    private static final float m30738import(float f, float f2) {
        return (float) Math.atan2(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: instanceof, reason: not valid java name */
    public static /* synthetic */ void m30739instanceof(float f) {
    }

    /* renamed from: interface, reason: not valid java name */
    private static final float m30740interface(float f) {
        return Math.abs(f);
    }

    private static final double j(double d) {
        return Math.ulp(d);
    }

    @iz1(version = "1.2")
    public static final double j0(double d) {
        return (Double.isNaN(d) || Double.isInfinite(d)) ? d : d > ((double) 0) ? Math.floor(d) : Math.ceil(d);
    }

    private static final float k(float f) {
        return Math.ulp(f);
    }

    @iz1(version = "1.2")
    public static final float k0(float f) {
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            return f;
        }
        return (float) (f > ((float) 0) ? Math.floor(f) : Math.ceil(f));
    }

    @iz1(version = "1.2")
    @um0
    public static /* synthetic */ void l(double d) {
    }

    @iz1(version = "1.2")
    @um0
    private static final double l0(double d, double d2) {
        return Math.copySign(d, d2);
    }

    @iz1(version = "1.2")
    @um0
    public static /* synthetic */ void m(float f) {
    }

    @iz1(version = "1.2")
    @um0
    private static final double m0(double d, int i) {
        return Math.copySign(d, i);
    }

    @iz1(version = "1.2")
    @um0
    private static final double n(double d, double d2) {
        return Math.hypot(d, d2);
    }

    @iz1(version = "1.2")
    @um0
    private static final float n0(float f, float f2) {
        return Math.copySign(f, f2);
    }

    @iz1(version = "1.2")
    /* renamed from: native, reason: not valid java name */
    public static final double m30741native(double d) {
        if (Math.abs(d) < Cdo.f27907new) {
            if (Math.abs(d) <= Cdo.f27905for) {
                return d;
            }
            double d2 = 3;
            Double.isNaN(d2);
            return d + (((d * d) * d) / d2);
        }
        double d3 = 1;
        Double.isNaN(d3);
        Double.isNaN(d3);
        double dLog = Math.log((d3 + d) / (d3 - d));
        double d4 = 2;
        Double.isNaN(d4);
        return dLog / d4;
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: new, reason: not valid java name */
    private static final float m30742new(float f) {
        return Math.abs(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final float o(float f, float f2) {
        return (float) Math.hypot(f, f2);
    }

    @iz1(version = "1.2")
    @um0
    private static final float o0(float f, int i) {
        return Math.copySign(f, i);
    }

    @iz1(version = "1.2")
    @um0
    private static final double p(double d) {
        return Math.log(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: package, reason: not valid java name */
    private static final float m30743package(float f) {
        return (float) Math.exp(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: private, reason: not valid java name */
    private static final double m30744private(double d) {
        return Math.expm1(d);
    }

    /* renamed from: protected, reason: not valid java name */
    private static final int m30745protected(int i) {
        return Math.abs(i);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: public, reason: not valid java name */
    private static final float m30746public(float f) {
        return (float) m30741native(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final float q(float f) {
        return (float) Math.log(f);
    }

    @iz1(version = "1.2")
    @um0
    private static final double r(double d) {
        return Math.log1p(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: return, reason: not valid java name */
    private static final double m30747return(double d) {
        return Math.ceil(d);
    }

    @iz1(version = "1.2")
    @um0
    private static final float s(float f) {
        return (float) Math.log1p(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: static, reason: not valid java name */
    private static final float m30748static(float f) {
        return (float) Math.ceil(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: strictfp, reason: not valid java name */
    private static final float m30749strictfp(float f) {
        return (float) Math.floor(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: super, reason: not valid java name */
    private static final double m30750super(double d) {
        return Math.atan(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final double m30751switch(double d) {
        return Math.cos(d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: synchronized, reason: not valid java name */
    public static /* synthetic */ void m30752synchronized(int i) {
    }

    @iz1(version = "1.2")
    public static final double t(double d, double d2) {
        if (d2 <= 0.0d || d2 == 1.0d) {
            return Double.NaN;
        }
        return Math.log(d) / Math.log(d2);
    }

    @iz1(version = "1.2")
    /* renamed from: this, reason: not valid java name */
    public static final double m30753this(double d) {
        double d2 = 1;
        if (d < d2) {
            return Double.NaN;
        }
        if (d > Cdo.f27908try) {
            return Math.log(d) + Cdo.f27903do;
        }
        Double.isNaN(d2);
        double d3 = d - d2;
        if (d3 >= Cdo.f27907new) {
            Double.isNaN(d2);
            return Math.log(d + Math.sqrt((d * d) - d2));
        }
        double dSqrt = Math.sqrt(d3);
        if (dSqrt >= Cdo.f27905for) {
            double d4 = 12;
            Double.isNaN(d4);
            dSqrt -= ((dSqrt * dSqrt) * dSqrt) / d4;
        }
        return dSqrt * Math.sqrt(2.0d);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final float m30754throw(float f) {
        return (float) Math.atan(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: throws, reason: not valid java name */
    private static final float m30755throws(float f) {
        return (float) Math.cos(f);
    }

    /* renamed from: transient, reason: not valid java name */
    private static final long m30756transient(long j) {
        return Math.abs(j);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: try, reason: not valid java name */
    private static final int m30757try(int i) {
        return Math.abs(i);
    }

    @iz1(version = "1.2")
    public static final float u(float f, float f2) {
        if (f2 <= 0.0f || f2 == 1.0f) {
            return Float.NaN;
        }
        return (float) (Math.log(f) / Math.log(f2));
    }

    @iz1(version = "1.2")
    @um0
    private static final double v(double d) {
        return Math.log10(d);
    }

    /* renamed from: volatile, reason: not valid java name */
    private static final double m30758volatile(double d) {
        return Math.abs(d);
    }

    @iz1(version = "1.2")
    @um0
    private static final float w(float f) {
        return (float) Math.log10(f);
    }

    @iz1(version = "1.2")
    @um0
    /* renamed from: while, reason: not valid java name */
    private static final double m30759while(double d, double d2) {
        return Math.atan2(d, d2);
    }

    @iz1(version = "1.2")
    public static final double x(double d) {
        return Math.log(d) / Cdo.f27903do;
    }

    @iz1(version = "1.2")
    public static final float y(float f) {
        return (float) (Math.log(f) / Cdo.f27903do);
    }

    @iz1(version = "1.2")
    @um0
    private static final double z(double d, double d2) {
        return Math.max(d, d2);
    }
}
