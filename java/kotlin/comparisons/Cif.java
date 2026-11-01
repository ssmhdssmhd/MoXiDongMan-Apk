package kotlin.comparisons;

import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import java.util.Comparator;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;

/* JADX INFO: Access modifiers changed from: package-private */
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\b\u001a[\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u000026\u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004¢\u0006\u0004\b\b\u0010\t\u001aG\u0010\n\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002 \u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003H\u0002¢\u0006\u0004\b\n\u0010\t\u001aC\u0010\f\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a_\u0010\u0012\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e2\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u00002\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a/\u0010\u0014\u001a\u00020\u0007\"\f\b\u0000\u0010\u0000*\u0006\u0012\u0002\b\u00030\u00052\b\u0010\u0001\u001a\u0004\u0018\u00018\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a[\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u000026\u0010\u0006\u001a\u001c\u0012\u0018\b\u0001\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00040\u0003\"\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004¢\u0006\u0004\b\u0016\u0010\u0017\u001a>\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001aZ\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001a>\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001aZ\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001aR\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\b\u0004\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001an\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001aR\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\b\u0004\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0004H\u0087\bø\u0001\u0000\u001an\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u000e*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00010\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0001`\u00102\u0014\b\u0004\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0087\bø\u0001\u0000\u001ap\u0010$\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u001028\b\u0004\u0010#\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0002\u0012\u0004\u0012\u00020\u00070 H\u0087\bø\u0001\u0000\u001aO\u0010%\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010H\u0086\u0004\u001aO\u0010&\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u00102\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010H\u0086\u0004\u001a@\u0010(\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\b\b\u0000\u0010\u0000*\u00020'2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010\u001a-\u0010)\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0087\b\u001a@\u0010*\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\b\b\u0000\u0010\u0000*\u00020'2\u001a\u0010\u0011\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000\u000fj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`\u0010\u001a-\u0010+\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0087\b\u001a&\u0010,\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005\u001a&\u0010-\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u000e\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0005\u001a0\u0010.\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\"\u0004\b\u0000\u0010\u0000*\u0012\u0012\u0004\u0012\u00028\u00000\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006/"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, ak.av, "b", "", "Lkotlin/Function1;", "", "selectors", "", "break", "(Ljava/lang/Object;Ljava/lang/Object;[Lkotlin/jvm/functions/Function1;)I", "catch", "selector", "this", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)I", "K", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "goto", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;Lkotlin/jvm/functions/Function1;)I", "else", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)I", "new", "([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;", "for", "if", "case", "try", "return", "public", "switch", "static", "Lkotlin/Function2;", "Landroid/support/v4/xb1;", "name", "comparison", "throws", "native", "default", "", "final", "const", "throw", "super", "class", "while", "import", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/comparisons/ComparisonsKt")
/* renamed from: kotlin.comparisons.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0010\b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "K", "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$break, reason: invalid class name */
    public static final class Cbreak<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27763do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Function1 f27764for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Comparator f27765if;

        public Cbreak(Comparator comparator, Comparator comparator2, Function1 function1) {
            this.f27763do = comparator;
            this.f27765if = comparator2;
            this.f27764for = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27763do.compare(t, t2);
            return iCompare != 0 ? iCompare : this.f27765if.compare(this.f27764for.invoke(t), this.f27764for.invoke(t2));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u00002\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$case, reason: invalid class name */
    public static final class Ccase<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27766do;

        public Ccase(Comparator comparator) {
            this.f27766do = comparator;
        }

        @Override // java.util.Comparator
        public final int compare(@z41 T t, @z41 T t2) {
            if (t == t2) {
                return 0;
            }
            if (t == null) {
                return -1;
            }
            if (t2 == null) {
                return 1;
            }
            return this.f27766do.compare(t, t2);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$catch, reason: invalid class name */
    public static final class Ccatch<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27767do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function1 f27768if;

        public Ccatch(Comparator comparator, Function1 function1) {
            this.f27767do = comparator;
            this.f27768if = function1;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27767do.compare(t, t2);
            return iCompare != 0 ? iCompare : Cif.m30315else((Comparable) this.f27768if.invoke(t2), (Comparable) this.f27768if.invoke(t));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0010\b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "K", "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$class, reason: invalid class name */
    public static final class Cclass<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27769do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Function1 f27770for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Comparator f27771if;

        public Cclass(Comparator comparator, Comparator comparator2, Function1 function1) {
            this.f27769do = comparator;
            this.f27771if = comparator2;
            this.f27770for = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27769do.compare(t, t2);
            return iCompare != 0 ? iCompare : this.f27771if.compare(this.f27770for.invoke(t2), this.f27770for.invoke(t));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$const, reason: invalid class name */
    public static final class Cconst<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27772do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function2 f27773if;

        public Cconst(Comparator comparator, Function2 function2) {
            this.f27772do = comparator;
            this.f27773if = function2;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27772do.compare(t, t2);
            return iCompare != 0 ? iCompare : ((Number) this.f27773if.invoke(t, t2)).intValue();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$do, reason: invalid class name */
    public static final class Cdo<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function1[] f27774do;

        public Cdo(Function1[] function1Arr) {
            this.f27774do = function1Arr;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return Cif.m30310catch(t, t2, this.f27774do);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u00002\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$else, reason: invalid class name */
    public static final class Celse<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27775do;

        public Celse(Comparator comparator) {
            this.f27775do = comparator;
        }

        @Override // java.util.Comparator
        public final int compare(@z41 T t, @z41 T t2) {
            if (t == t2) {
                return 0;
            }
            if (t == null) {
                return 1;
            }
            if (t2 == null) {
                return -1;
            }
            return this.f27775do.compare(t, t2);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$final, reason: invalid class name */
    public static final class Cfinal<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27776do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Comparator f27777if;

        public Cfinal(Comparator comparator, Comparator comparator2) {
            this.f27776do = comparator;
            this.f27777if = comparator2;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27776do.compare(t, t2);
            return iCompare != 0 ? iCompare : this.f27777if.compare(t2, t);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0010\b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "K", "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$for, reason: invalid class name */
    public static final class Cfor<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27778do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function1 f27779if;

        public Cfor(Comparator comparator, Function1 function1) {
            this.f27778do = comparator;
            this.f27779if = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return this.f27778do.compare(this.f27779if.invoke(t), this.f27779if.invoke(t2));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$goto, reason: invalid class name */
    public static final class Cgoto<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27780do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Comparator f27781if;

        public Cgoto(Comparator comparator, Comparator comparator2) {
            this.f27780do = comparator;
            this.f27781if = comparator2;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27780do.compare(t, t2);
            return iCompare != 0 ? iCompare : this.f27781if.compare(t, t2);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0361if<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function1 f27782do;

        public C0361if(Function1 function1) {
            this.f27782do = function1;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return Cif.m30315else((Comparable) this.f27782do.invoke(t), (Comparable) this.f27782do.invoke(t2));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$new, reason: invalid class name */
    public static final class Cnew<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Function1 f27783do;

        public Cnew(Function1 function1) {
            this.f27783do = function1;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return Cif.m30315else((Comparable) this.f27783do.invoke(t2), (Comparable) this.f27783do.invoke(t));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$this, reason: invalid class name */
    public static final class Cthis<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27784do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function1 f27785if;

        public Cthis(Comparator comparator, Function1 function1) {
            this.f27784do = comparator;
            this.f27785if = function1;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            int iCompare = this.f27784do.compare(t, t2);
            return iCompare != 0 ? iCompare : Cif.m30315else((Comparable) this.f27785if.invoke(t), (Comparable) this.f27785if.invoke(t2));
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0010\b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "K", "kotlin.jvm.PlatformType", ak.av, "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.comparisons.if$try, reason: invalid class name */
    public static final class Ctry<T> implements Comparator {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Comparator f27786do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Function1 f27787if;

        public Ctry(Comparator comparator, Function1 function1) {
            this.f27786do = comparator;
            this.f27787if = function1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return this.f27786do.compare(this.f27787if.invoke(t2), this.f27787if.invoke(t));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static final <T> int m30308break(T t, T t2, @m41 Function1<? super T, ? extends Comparable<?>>... selectors) {
        Csuper.m30700throw(selectors, "selectors");
        if (selectors.length > 0) {
            return m30310catch(t, t2, selectors);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @um0
    /* renamed from: case, reason: not valid java name */
    private static final <T> Comparator<T> m30309case(Function1<? super T, ? extends Comparable<?>> function1) {
        return new Cnew(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static final <T> int m30310catch(T t, T t2, Function1<? super T, ? extends Comparable<?>>[] function1Arr) {
        for (Function1<? super T, ? extends Comparable<?>> function1 : function1Arr) {
            int iM30315else = m30315else(function1.invoke(t), function1.invoke(t2));
            if (iM30315else != 0) {
                return iM30315else;
            }
        }
        return 0;
    }

    @m41
    /* renamed from: class, reason: not valid java name */
    public static <T extends Comparable<? super T>> Comparator<T> m30311class() {
        kotlin.comparisons.Ctry ctry = kotlin.comparisons.Ctry.f27788do;
        Objects.requireNonNull(ctry, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
        return ctry;
    }

    @um0
    /* renamed from: const, reason: not valid java name */
    private static final <T extends Comparable<? super T>> Comparator<T> m30312const() {
        return m30316final(m30311class());
    }

    @m41
    /* renamed from: default, reason: not valid java name */
    public static final <T> Comparator<T> m30313default(@m41 Comparator<T> thenDescending, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(thenDescending, "$this$thenDescending");
        Csuper.m30700throw(comparator, "comparator");
        return new Cfinal(thenDescending, comparator);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T extends Comparable<?>> int m30315else(@z41 T t, @z41 T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }

    @m41
    /* renamed from: final, reason: not valid java name */
    public static final <T> Comparator<T> m30316final(@m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        return new Ccase(comparator);
    }

    @um0
    /* renamed from: for, reason: not valid java name */
    private static final <T> Comparator<T> m30317for(Function1<? super T, ? extends Comparable<?>> function1) {
        return new C0361if(function1);
    }

    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final <T, K> int m30318goto(T t, T t2, Comparator<? super K> comparator, Function1<? super T, ? extends K> function1) {
        return comparator.compare(function1.invoke(t), function1.invoke(t2));
    }

    @um0
    /* renamed from: if, reason: not valid java name */
    private static final <T, K> Comparator<T> m30319if(Comparator<? super K> comparator, Function1<? super T, ? extends K> function1) {
        return new Cfor(comparator, function1);
    }

    @m41
    /* renamed from: import, reason: not valid java name */
    public static final <T> Comparator<T> m30320import(@m41 Comparator<T> reversed) {
        Csuper.m30700throw(reversed, "$this$reversed");
        if (reversed instanceof kotlin.comparisons.Celse) {
            return ((kotlin.comparisons.Celse) reversed).m30289do();
        }
        Comparator<T> celse = kotlin.comparisons.Ctry.f27788do;
        if (Csuper.m30676else(reversed, celse)) {
            kotlin.comparisons.Ccase ccase = kotlin.comparisons.Ccase.f27761do;
            Objects.requireNonNull(ccase, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
            return ccase;
        }
        if (Csuper.m30676else(reversed, kotlin.comparisons.Ccase.f27761do)) {
            Objects.requireNonNull(celse, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
        } else {
            celse = new kotlin.comparisons.Celse<>(reversed);
        }
        return celse;
    }

    @m41
    /* renamed from: native, reason: not valid java name */
    public static final <T> Comparator<T> m30321native(@m41 Comparator<T> then, @m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(then, "$this$then");
        Csuper.m30700throw(comparator, "comparator");
        return new Cgoto(then, comparator);
    }

    @m41
    /* renamed from: new, reason: not valid java name */
    public static final <T> Comparator<T> m30322new(@m41 Function1<? super T, ? extends Comparable<?>>... selectors) {
        Csuper.m30700throw(selectors, "selectors");
        if (selectors.length > 0) {
            return new Cdo(selectors);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @um0
    /* renamed from: public, reason: not valid java name */
    private static final <T, K> Comparator<T> m30323public(Comparator<T> comparator, Comparator<? super K> comparator2, Function1<? super T, ? extends K> function1) {
        return new Cbreak(comparator, comparator2, function1);
    }

    @um0
    /* renamed from: return, reason: not valid java name */
    private static final <T> Comparator<T> m30324return(Comparator<T> comparator, Function1<? super T, ? extends Comparable<?>> function1) {
        return new Cthis(comparator, function1);
    }

    @um0
    /* renamed from: static, reason: not valid java name */
    private static final <T, K> Comparator<T> m30325static(Comparator<T> comparator, Comparator<? super K> comparator2, Function1<? super T, ? extends K> function1) {
        return new Cclass(comparator, comparator2, function1);
    }

    @um0
    /* renamed from: super, reason: not valid java name */
    private static final <T extends Comparable<? super T>> Comparator<T> m30326super() {
        return m30329throw(m30311class());
    }

    @um0
    /* renamed from: switch, reason: not valid java name */
    private static final <T> Comparator<T> m30327switch(Comparator<T> comparator, Function1<? super T, ? extends Comparable<?>> function1) {
        return new Ccatch(comparator, function1);
    }

    @um0
    /* renamed from: this, reason: not valid java name */
    private static final <T> int m30328this(T t, T t2, Function1<? super T, ? extends Comparable<?>> function1) {
        return m30315else(function1.invoke(t), function1.invoke(t2));
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static final <T> Comparator<T> m30329throw(@m41 Comparator<? super T> comparator) {
        Csuper.m30700throw(comparator, "comparator");
        return new Celse(comparator);
    }

    @um0
    /* renamed from: throws, reason: not valid java name */
    private static final <T> Comparator<T> m30330throws(Comparator<T> comparator, Function2<? super T, ? super T, Integer> function2) {
        return new Cconst(comparator, function2);
    }

    @um0
    /* renamed from: try, reason: not valid java name */
    private static final <T, K> Comparator<T> m30331try(Comparator<? super K> comparator, Function1<? super T, ? extends K> function1) {
        return new Ctry(comparator, function1);
    }

    @m41
    /* renamed from: while, reason: not valid java name */
    public static <T extends Comparable<? super T>> Comparator<T> m30332while() {
        kotlin.comparisons.Ccase ccase = kotlin.comparisons.Ccase.f27761do;
        Objects.requireNonNull(ccase, "null cannot be cast to non-null type kotlin.Comparator<T> /* = java.util.Comparator<T> */");
        return ccase;
    }
}
