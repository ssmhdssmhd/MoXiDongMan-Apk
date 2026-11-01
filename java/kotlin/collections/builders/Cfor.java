package kotlin.collections.builders;

import android.support.v4.hy1;
import android.support.v4.ix0;
import android.support.v4.jx0;
import android.support.v4.kx0;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\n\b\u0000\u0018\u0000 ;*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003:\u0006LPvwxTBG\b\u0002\u0012\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n\u0012\u0006\u0010_\u001a\u00020\\\u0012\u0006\u0010a\u001a\u00020\\\u0012\u0006\u0010b\u001a\u00020\u0004\u0012\u0006\u0010c\u001a\u00020\u0004¢\u0006\u0004\br\u0010sB\t\b\u0016¢\u0006\u0004\br\u00108B\u0011\b\u0016\u0012\u0006\u0010t\u001a\u00020\u0004¢\u0006\u0004\br\u0010uJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002J\u0015\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0016\u0010\u000fJ\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00028\u0001H\u0002¢\u0006\u0004\b\u0018\u0010\u000fJ\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u000e\u0010\u001e\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001dH\u0002J\u001c\u0010\"\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0002J\"\u0010%\u001a\u00020\u00142\u0018\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 0#H\u0002J\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001dJ\b\u0010'\u001a\u00020\u0014H\u0016J\u0017\u0010(\u001a\u00020\u00142\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00028\u0001H\u0016¢\u0006\u0004\b*\u0010)J\u001a\u0010+\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0001H\u0016¢\u0006\u0004\b-\u0010.J\u001e\u0010/\u001a\u00020\u00062\u0014\u0010$\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001dH\u0016J\u0019\u00100\u001a\u0004\u0018\u00018\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b0\u0010,J\b\u00101\u001a\u00020\u0006H\u0016J\u0013\u00103\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u000102H\u0096\u0002J\b\u00104\u001a\u00020\u0004H\u0016J\b\u00106\u001a\u000205H\u0016J\u000f\u00107\u001a\u00020\u0006H\u0000¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0000¢\u0006\u0004\b9\u0010\u000fJ\u0017\u0010:\u001a\u00020\u00042\u0006\u0010\r\u001a\u00028\u0000H\u0000¢\u0006\u0004\b:\u0010\u000fJ#\u0010;\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0000¢\u0006\u0004\b;\u0010<J\u001b\u0010>\u001a\u00020\u00142\n\u0010=\u001a\u0006\u0012\u0002\b\u00030#H\u0000¢\u0006\u0004\b>\u0010?J#\u0010@\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010 H\u0000¢\u0006\u0004\b@\u0010<J\u0017\u0010B\u001a\u00020\u00142\u0006\u0010A\u001a\u00028\u0001H\u0000¢\u0006\u0004\bB\u0010)J\u001b\u0010D\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010CH\u0000¢\u0006\u0004\bD\u0010EJ\u001b\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010FH\u0000¢\u0006\u0004\bG\u0010HJ\u001b\u0010J\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010IH\u0000¢\u0006\u0004\bJ\u0010KR\u0016\u0010N\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR$\u0010S\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00048\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bP\u0010M\u001a\u0004\bQ\u0010RR\u0016\u0010V\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u001c\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00000\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u001e\u0010[\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010XR\u0016\u0010_\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010a\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010^R\u0016\u0010b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010MR\u0016\u0010c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010MR\u0016\u0010\b\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bd\u0010RR\u0016\u0010f\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\be\u0010RR\u001c\u0010j\u001a\b\u0012\u0004\u0012\u00028\u00000g8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bh\u0010iR\u001c\u0010n\u001a\b\u0012\u0004\u0012\u00028\u00010k8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bl\u0010mR(\u0010q\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010o0g8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bp\u0010i¨\u0006y"}, d2 = {"Lkotlin/collections/builders/for;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "", "n", "Landroid/support/v4/ub2;", "public", "capacity", "native", "", "class", "()[Ljava/lang/Object;", "key", "abstract", "(Ljava/lang/Object;)I", "super", "newHashSize", "protected", ak.aC, "", "interface", "static", ES6Iterator.VALUE_PROPERTY, "switch", "index", "synchronized", "removedHash", "implements", "", "other", "import", "", "entry", "volatile", "", TypedValues.Transition.S_FROM, "strictfp", "const", "isEmpty", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "remove", FreemarkerServlet.r, "", "equals", "hashCode", "", "toString", "final", "()V", "catch", "instanceof", "while", "(Ljava/util/Map$Entry;)Z", "m", "throw", "(Ljava/util/Collection;)Z", "transient", "element", ak.av, "Lkotlin/collections/builders/for$try;", "continue", "()Lkotlin/collections/builders/for$try;", "Lkotlin/collections/builders/for$case;", "b", "()Lkotlin/collections/builders/for$case;", "Lkotlin/collections/builders/for$if;", "return", "()Lkotlin/collections/builders/for$if;", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "hashShift", "<set-?>", "if", "package", "()I", "size", "case", "Z", "isReadOnly", "else", "[Ljava/lang/Object;", "keysArray", "goto", "valuesArray", "", "this", "[I", "presenceArray", "break", "hashArray", "maxProbeDistance", "length", "throws", "extends", "hashSize", "", "finally", "()Ljava/util/Set;", "keys", "", "private", "()Ljava/util/Collection;", "values", "", "default", "entries", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "initialCapacity", "(I)V", "for", "new", "try", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.builders.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<K, V> implements Map<K, V>, KMutableMap {

    /* renamed from: const, reason: not valid java name */
    @Deprecated
    private static final int f27659const = -1640531527;

    /* renamed from: final, reason: not valid java name */
    @Deprecated
    private static final int f27660final = 8;

    /* renamed from: super, reason: not valid java name */
    @Deprecated
    private static final int f27661super = 2;

    /* renamed from: throw, reason: not valid java name */
    @Deprecated
    private static final int f27662throw = -1;

    /* renamed from: while, reason: not valid java name */
    @m41
    private static final Cdo f27663while = new Cdo(null);

    /* renamed from: break, reason: not valid java name */
    private int[] f27664break;

    /* renamed from: case, reason: not valid java name */
    private boolean f27665case;

    /* renamed from: catch, reason: not valid java name */
    private int f27666catch;

    /* renamed from: class, reason: not valid java name */
    private int f27667class;

    /* renamed from: do, reason: not valid java name */
    private int f27668do;

    /* renamed from: else, reason: not valid java name */
    private K[] f27669else;

    /* renamed from: for, reason: not valid java name */
    private jx0<K> f27670for;

    /* renamed from: goto, reason: not valid java name */
    private V[] f27671goto;

    /* renamed from: if, reason: not valid java name */
    private int f27672if;

    /* renamed from: new, reason: not valid java name */
    private kx0<V> f27673new;

    /* renamed from: this, reason: not valid java name */
    private int[] f27674this;

    /* renamed from: try, reason: not valid java name */
    private ix0<K, V> f27675try;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\b\u0012\u0004\u0012\u00028\u00030\u0004B\u001b\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"kotlin/collections/builders/for$case", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/for$new;", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "Lkotlin/collections/builders/for;", "map", "<init>", "(Lkotlin/collections/builders/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.for$case, reason: invalid class name */
    public static final class Ccase<K, V> extends Cnew<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(@m41 Cfor<K, V> map) {
            super(map);
            Csuper.m30700throw(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            if (m29940do() >= ((Cfor) m29941for()).f27667class) {
                throw new NoSuchElementException();
            }
            int iM29940do = m29940do();
            m29944try(iM29940do + 1);
            m29939case(iM29940do);
            Object[] objArr = ((Cfor) m29941for()).f27671goto;
            Csuper.m30672const(objArr);
            V v = (V) objArr[m29942if()];
            m29943new();
            return v;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"kotlin/collections/builders/for$do", "", "", "capacity", "for", "hashSize", "new", "INITIAL_CAPACITY", OptRuntime.GeneratorState.resumptionPoint_TYPE, "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.for$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public final int m29933for(int i) {
            return Integer.highestOneBit(kotlin.ranges.Ccase.m30873final(i, 1) * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public final int m29935new(int i) {
            return Integer.numberOfLeadingZeros(i) + 1;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B#\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u0005\u001a\u00028\u00032\u0006\u0010\u0004\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00028\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00028\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0017¨\u0006\u001d"}, d2 = {"kotlin/collections/builders/for$for", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "other", "", "equals", "", "hashCode", "", "toString", "Lkotlin/collections/builders/for;", "do", "Lkotlin/collections/builders/for;", "map", "if", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "getKey", "()Ljava/lang/Object;", "key", "getValue", ES6Iterator.VALUE_PROPERTY, "<init>", "(Lkotlin/collections/builders/for;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0355for<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: do, reason: not valid java name */
        private final Cfor<K, V> f27676do;

        /* renamed from: if, reason: not valid java name */
        private final int f27677if;

        public C0355for(@m41 Cfor<K, V> map, int i) {
            Csuper.m30700throw(map, "map");
            this.f27676do = map;
            this.f27677if = i;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@z41 Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Csuper.m30676else(entry.getKey(), getKey()) && Csuper.m30676else(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) ((Cfor) this.f27676do).f27669else[this.f27677if];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            Object[] objArr = ((Cfor) this.f27676do).f27671goto;
            Csuper.m30672const(objArr);
            return (V) objArr[this.f27677if];
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            this.f27676do.m29923final();
            Object[] objArrM29896class = this.f27676do.m29896class();
            int i = this.f27677if;
            V v2 = (V) objArrM29896class[i];
            objArrM29896class[i] = v;
            return v2;
        }

        @m41
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append(hy1.f2563new);
            sb.append(getValue());
            return sb.toString();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00050\u0004B\u001b\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006H\u0096\u0002J\u000f\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000f\u001a\u00020\u000e2\n\u0010\r\u001a\u00060\u000bj\u0002`\f¨\u0006\u0014"}, d2 = {"kotlin/collections/builders/for$if", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/for$new;", "", "", "Lkotlin/collections/builders/for$for;", "else", "", "this", "()I", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "Landroid/support/v4/ub2;", "goto", "Lkotlin/collections/builders/for;", "map", "<init>", "(Lkotlin/collections/builders/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.for$if, reason: invalid class name */
    public static final class Cif<K, V> extends Cnew<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(@m41 Cfor<K, V> map) {
            super(map);
            Csuper.m30700throw(map, "map");
        }

        @Override // java.util.Iterator
        @m41
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public C0355for<K, V> next() {
            if (m29940do() >= ((Cfor) m29941for()).f27667class) {
                throw new NoSuchElementException();
            }
            int iM29940do = m29940do();
            m29944try(iM29940do + 1);
            m29939case(iM29940do);
            C0355for<K, V> c0355for = new C0355for<>(m29941for(), m29942if());
            m29943new();
            return c0355for;
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m29937goto(@m41 StringBuilder sb) {
            Csuper.m30700throw(sb, "sb");
            if (m29940do() >= ((Cfor) m29941for()).f27667class) {
                throw new NoSuchElementException();
            }
            int iM29940do = m29940do();
            m29944try(iM29940do + 1);
            m29939case(iM29940do);
            Object obj = ((Cfor) m29941for()).f27669else[m29942if()];
            if (Csuper.m30676else(obj, m29941for())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append(hy1.f2563new);
            Object[] objArr = ((Cfor) m29941for()).f27671goto;
            Csuper.m30672const(objArr);
            Object obj2 = objArr[m29942if()];
            if (Csuper.m30676else(obj2, m29941for())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            m29943new();
        }

        /* renamed from: this, reason: not valid java name */
        public final int m29938this() {
            if (m29940do() >= ((Cfor) m29941for()).f27667class) {
                throw new NoSuchElementException();
            }
            int iM29940do = m29940do();
            m29944try(iM29940do + 1);
            m29939case(iM29940do);
            Object obj = ((Cfor) m29941for()).f27669else[m29942if()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = ((Cfor) m29941for()).f27671goto;
            Csuper.m30672const(objArr);
            Object obj2 = objArr[m29942if()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            m29943new();
            return iHashCode2;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0004R\"\u0010\u0010\u001a\u00020\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0013\u001a\u00020\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR(\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00148\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017¨\u0006\u001b"}, d2 = {"kotlin/collections/builders/for$new", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Landroid/support/v4/ub2;", "new", "()V", "", "hasNext", "remove", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "()I", "try", "(I)V", "index", "if", "case", "lastIndex", "Lkotlin/collections/builders/for;", "for", "Lkotlin/collections/builders/for;", "()Lkotlin/collections/builders/for;", "map", "<init>", "(Lkotlin/collections/builders/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.for$new, reason: invalid class name */
    public static class Cnew<K, V> {

        /* renamed from: do, reason: not valid java name */
        private int f27678do;

        /* renamed from: for, reason: not valid java name */
        @m41
        private final Cfor<K, V> f27679for;

        /* renamed from: if, reason: not valid java name */
        private int f27680if;

        public Cnew(@m41 Cfor<K, V> map) {
            Csuper.m30700throw(map, "map");
            this.f27679for = map;
            this.f27680if = -1;
            m29943new();
        }

        /* renamed from: case, reason: not valid java name */
        public final void m29939case(int i) {
            this.f27680if = i;
        }

        /* renamed from: do, reason: not valid java name */
        public final int m29940do() {
            return this.f27678do;
        }

        @m41
        /* renamed from: for, reason: not valid java name */
        public final Cfor<K, V> m29941for() {
            return this.f27679for;
        }

        public final boolean hasNext() {
            return this.f27678do < ((Cfor) this.f27679for).f27667class;
        }

        /* renamed from: if, reason: not valid java name */
        public final int m29942if() {
            return this.f27680if;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m29943new() {
            while (this.f27678do < ((Cfor) this.f27679for).f27667class) {
                int[] iArr = ((Cfor) this.f27679for).f27674this;
                int i = this.f27678do;
                if (iArr[i] >= 0) {
                    return;
                } else {
                    this.f27678do = i + 1;
                }
            }
        }

        public final void remove() {
            if (!(this.f27680if != -1)) {
                throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
            }
            this.f27679for.m29923final();
            this.f27679for.m29914synchronized(this.f27680if);
            this.f27680if = -1;
        }

        /* renamed from: try, reason: not valid java name */
        public final void m29944try(int i) {
            this.f27678do = i;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B\u001b\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"kotlin/collections/builders/for$try", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/builders/for$new;", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "Lkotlin/collections/builders/for;", "map", "<init>", "(Lkotlin/collections/builders/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.for$try, reason: invalid class name */
    public static final class Ctry<K, V> extends Cnew<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(@m41 Cfor<K, V> map) {
            super(map);
            Csuper.m30700throw(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            if (m29940do() >= ((Cfor) m29941for()).f27667class) {
                throw new NoSuchElementException();
            }
            int iM29940do = m29940do();
            m29944try(iM29940do + 1);
            m29939case(iM29940do);
            K k = (K) ((Cfor) m29941for()).f27669else[m29942if()];
            m29943new();
            return k;
        }
    }

    private Cfor(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.f27669else = kArr;
        this.f27671goto = vArr;
        this.f27674this = iArr;
        this.f27664break = iArr2;
        this.f27666catch = i;
        this.f27667class = i2;
        this.f27668do = f27663while.m29935new(m29899extends());
    }

    /* renamed from: abstract, reason: not valid java name */
    private final int m29893abstract(K k) {
        return ((k != null ? k.hashCode() : 0) * (-1640531527)) >>> this.f27668do;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public final V[] m29896class() {
        V[] vArr = this.f27671goto;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) kotlin.collections.builders.Cif.m29952new(m29916throws());
        this.f27671goto = vArr2;
        return vArr2;
    }

    /* renamed from: extends, reason: not valid java name */
    private final int m29899extends() {
        return this.f27664break.length;
    }

    /* renamed from: implements, reason: not valid java name */
    private final void m29903implements(int i) {
        int iM30885return = kotlin.ranges.Ccase.m30885return(this.f27666catch * 2, m29899extends() / 2);
        int i2 = 0;
        int i3 = i;
        do {
            i = i == 0 ? m29899extends() - 1 : i - 1;
            i2++;
            if (i2 > this.f27666catch) {
                this.f27664break[i3] = 0;
                return;
            }
            int[] iArr = this.f27664break;
            int i4 = iArr[i];
            if (i4 == 0) {
                iArr[i3] = 0;
                return;
            }
            if (i4 < 0) {
                iArr[i3] = -1;
            } else {
                int i5 = i4 - 1;
                if (((m29893abstract(this.f27669else[i5]) - i) & (m29899extends() - 1)) >= i2) {
                    this.f27664break[i3] = i4;
                    this.f27674this[i5] = i3;
                }
                iM30885return--;
            }
            i3 = i;
            i2 = 0;
            iM30885return--;
        } while (iM30885return >= 0);
        this.f27664break[i3] = -1;
    }

    /* renamed from: import, reason: not valid java name */
    private final boolean m29904import(Map<?, ?> map) {
        return size() == map.size() && m29929throw(map.entrySet());
    }

    /* renamed from: interface, reason: not valid java name */
    private final boolean m29905interface(int i) {
        int iM29893abstract = m29893abstract(this.f27669else[i]);
        int i2 = this.f27666catch;
        while (true) {
            int[] iArr = this.f27664break;
            if (iArr[iM29893abstract] == 0) {
                iArr[iM29893abstract] = i + 1;
                this.f27674this[i] = iM29893abstract;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            iM29893abstract = iM29893abstract == 0 ? m29899extends() - 1 : iM29893abstract - 1;
        }
    }

    /* renamed from: native, reason: not valid java name */
    private final void m29906native(int i) {
        if (i <= m29916throws()) {
            if ((this.f27667class + i) - size() > m29916throws()) {
                m29908protected(m29899extends());
                return;
            }
            return;
        }
        int iM29916throws = (m29916throws() * 3) / 2;
        if (i <= iM29916throws) {
            i = iM29916throws;
        }
        this.f27669else = (K[]) kotlin.collections.builders.Cif.m29954try(this.f27669else, i);
        V[] vArr = this.f27671goto;
        this.f27671goto = vArr != null ? (V[]) kotlin.collections.builders.Cif.m29954try(vArr, i) : null;
        int[] iArrCopyOf = Arrays.copyOf(this.f27674this, i);
        Csuper.m30696super(iArrCopyOf, "java.util.Arrays.copyOf(this, newSize)");
        this.f27674this = iArrCopyOf;
        int iM29933for = f27663while.m29933for(i);
        if (iM29933for > m29899extends()) {
            m29908protected(iM29933for);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private final void m29908protected(int i) {
        if (this.f27667class > size()) {
            m29912super();
        }
        int i2 = 0;
        if (i != m29899extends()) {
            this.f27664break = new int[i];
            this.f27668do = f27663while.m29935new(i);
        } else {
            Ccatch.y1(this.f27664break, 0, 0, m29899extends());
        }
        while (i2 < this.f27667class) {
            int i3 = i2 + 1;
            if (!m29905interface(i2)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i2 = i3;
        }
    }

    /* renamed from: public, reason: not valid java name */
    private final void m29909public(int i) {
        m29906native(this.f27667class + i);
    }

    /* renamed from: static, reason: not valid java name */
    private final int m29910static(K k) {
        int iM29893abstract = m29893abstract(k);
        int i = this.f27666catch;
        while (true) {
            int i2 = this.f27664break[iM29893abstract];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (Csuper.m30676else(this.f27669else[i3], k)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iM29893abstract = iM29893abstract == 0 ? m29899extends() - 1 : iM29893abstract - 1;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private final boolean m29911strictfp(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z = false;
        if (collection.isEmpty()) {
            return false;
        }
        m29909public(collection.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = collection.iterator();
        while (it.hasNext()) {
            if (m29918volatile(it.next())) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: super, reason: not valid java name */
    private final void m29912super() {
        int i;
        V[] vArr = this.f27671goto;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.f27667class;
            if (i2 >= i) {
                break;
            }
            if (this.f27674this[i2] >= 0) {
                K[] kArr = this.f27669else;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                i3++;
            }
            i2++;
        }
        kotlin.collections.builders.Cif.m29948else(this.f27669else, i3, i);
        if (vArr != null) {
            kotlin.collections.builders.Cif.m29948else(vArr, i3, this.f27667class);
        }
        this.f27667class = i3;
    }

    /* renamed from: switch, reason: not valid java name */
    private final int m29913switch(V v) {
        int i = this.f27667class;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.f27674this[i] >= 0) {
                V[] vArr = this.f27671goto;
                Csuper.m30672const(vArr);
                if (Csuper.m30676else(vArr[i], v)) {
                    return i;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public final void m29914synchronized(int i) {
        kotlin.collections.builders.Cif.m29946case(this.f27669else, i);
        m29903implements(this.f27674this[i]);
        this.f27674this[i] = -1;
        this.f27672if = size() - 1;
    }

    /* renamed from: throws, reason: not valid java name */
    private final int m29916throws() {
        return this.f27669else.length;
    }

    /* renamed from: volatile, reason: not valid java name */
    private final boolean m29918volatile(Map.Entry<? extends K, ? extends V> entry) {
        int iM29919catch = m29919catch(entry.getKey());
        V[] vArrM29896class = m29896class();
        if (iM29919catch >= 0) {
            vArrM29896class[iM29919catch] = entry.getValue();
            return true;
        }
        int i = (-iM29919catch) - 1;
        if (!(!Csuper.m30676else(entry.getValue(), vArrM29896class[i]))) {
            return false;
        }
        vArrM29896class[i] = entry.getValue();
        return true;
    }

    public final boolean a(V v) {
        m29923final();
        int iM29913switch = m29913switch(v);
        if (iM29913switch < 0) {
            return false;
        }
        m29914synchronized(iM29913switch);
        return true;
    }

    @m41
    public final Ccase<K, V> b() {
        return new Ccase<>(this);
    }

    /* renamed from: catch, reason: not valid java name */
    public final int m29919catch(K k) {
        m29923final();
        while (true) {
            int iM29893abstract = m29893abstract(k);
            int iM30885return = kotlin.ranges.Ccase.m30885return(this.f27666catch * 2, m29899extends() / 2);
            int i = 0;
            while (true) {
                int i2 = this.f27664break[iM29893abstract];
                if (i2 <= 0) {
                    if (this.f27667class < m29916throws()) {
                        int i3 = this.f27667class;
                        int i4 = i3 + 1;
                        this.f27667class = i4;
                        this.f27669else[i3] = k;
                        this.f27674this[i3] = iM29893abstract;
                        this.f27664break[iM29893abstract] = i4;
                        this.f27672if = size() + 1;
                        if (i > this.f27666catch) {
                            this.f27666catch = i;
                        }
                        return i3;
                    }
                    m29909public(1);
                } else {
                    if (Csuper.m30676else(this.f27669else[i2 - 1], k)) {
                        return -i2;
                    }
                    i++;
                    if (i > iM30885return) {
                        m29908protected(m29899extends() * 2);
                        break;
                    }
                    iM29893abstract = iM29893abstract == 0 ? m29899extends() - 1 : iM29893abstract - 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        m29923final();
        int i = this.f27667class - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.f27674this;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.f27664break[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        kotlin.collections.builders.Cif.m29948else(this.f27669else, 0, this.f27667class);
        V[] vArr = this.f27671goto;
        if (vArr != null) {
            kotlin.collections.builders.Cif.m29948else(vArr, 0, this.f27667class);
        }
        this.f27672if = 0;
        this.f27667class = 0;
    }

    @m41
    /* renamed from: const, reason: not valid java name */
    public final Map<K, V> m29920const() {
        m29923final();
        this.f27665case = true;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return m29910static(obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return m29913switch(obj) >= 0;
    }

    @m41
    /* renamed from: continue, reason: not valid java name */
    public final Ctry<K, V> m29921continue() {
        return new Ctry<>(this);
    }

    @m41
    /* renamed from: default, reason: not valid java name */
    public Set<Map.Entry<K, V>> m29922default() {
        ix0<K, V> ix0Var = this.f27675try;
        if (ix0Var != null) {
            return ix0Var;
        }
        ix0<K, V> ix0Var2 = new ix0<>(this);
        this.f27675try = ix0Var2;
        return ix0Var2;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m29922default();
    }

    @Override // java.util.Map
    public boolean equals(@z41 Object obj) {
        return obj == this || ((obj instanceof Map) && m29904import((Map) obj));
    }

    /* renamed from: final, reason: not valid java name */
    public final void m29923final() {
        if (this.f27665case) {
            throw new UnsupportedOperationException();
        }
    }

    @m41
    /* renamed from: finally, reason: not valid java name */
    public Set<K> m29924finally() {
        jx0<K> jx0Var = this.f27670for;
        if (jx0Var != null) {
            return jx0Var;
        }
        jx0<K> jx0Var2 = new jx0<>(this);
        this.f27670for = jx0Var2;
        return jx0Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @z41
    public V get(Object obj) {
        int iM29910static = m29910static(obj);
        if (iM29910static < 0) {
            return null;
        }
        V[] vArr = this.f27671goto;
        Csuper.m30672const(vArr);
        return vArr[iM29910static];
    }

    @Override // java.util.Map
    public int hashCode() {
        Cif<K, V> cifM29928return = m29928return();
        int iM29938this = 0;
        while (cifM29928return.hasNext()) {
            iM29938this += cifM29928return.m29938this();
        }
        return iM29938this;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final int m29925instanceof(K k) {
        m29923final();
        int iM29910static = m29910static(k);
        if (iM29910static < 0) {
            return -1;
        }
        m29914synchronized(iM29910static);
        return iM29910static;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m29924finally();
    }

    /* renamed from: package, reason: not valid java name */
    public int m29926package() {
        return this.f27672if;
    }

    @m41
    /* renamed from: private, reason: not valid java name */
    public Collection<V> m29927private() {
        kx0<V> kx0Var = this.f27673new;
        if (kx0Var != null) {
            return kx0Var;
        }
        kx0<V> kx0Var2 = new kx0<>(this);
        this.f27673new = kx0Var2;
        return kx0Var2;
    }

    @Override // java.util.Map
    @z41
    public V put(K k, V v) {
        m29923final();
        int iM29919catch = m29919catch(k);
        V[] vArrM29896class = m29896class();
        if (iM29919catch >= 0) {
            vArrM29896class[iM29919catch] = v;
            return null;
        }
        int i = (-iM29919catch) - 1;
        V v2 = vArrM29896class[i];
        vArrM29896class[i] = v;
        return v2;
    }

    @Override // java.util.Map
    public void putAll(@m41 Map<? extends K, ? extends V> from) {
        Csuper.m30700throw(from, "from");
        m29923final();
        m29911strictfp(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @z41
    public V remove(Object obj) {
        int iM29925instanceof = m29925instanceof(obj);
        if (iM29925instanceof < 0) {
            return null;
        }
        V[] vArr = this.f27671goto;
        Csuper.m30672const(vArr);
        V v = vArr[iM29925instanceof];
        kotlin.collections.builders.Cif.m29946case(vArr, iM29925instanceof);
        return v;
    }

    @m41
    /* renamed from: return, reason: not valid java name */
    public final Cif<K, V> m29928return() {
        return new Cif<>(this);
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m29926package();
    }

    /* renamed from: throw, reason: not valid java name */
    public final boolean m29929throw(@m41 Collection<?> m) {
        Csuper.m30700throw(m, "m");
        for (Object obj : m) {
            if (obj != null) {
                try {
                    if (!m29931while((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @m41
    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        Cif<K, V> cifM29928return = m29928return();
        int i = 0;
        while (cifM29928return.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            cifM29928return.m29937goto(sb);
            i++;
        }
        sb.append("}");
        String string = sb.toString();
        Csuper.m30696super(string, "sb.toString()");
        return string;
    }

    /* renamed from: transient, reason: not valid java name */
    public final boolean m29930transient(@m41 Map.Entry<? extends K, ? extends V> entry) {
        Csuper.m30700throw(entry, "entry");
        m29923final();
        int iM29910static = m29910static(entry.getKey());
        if (iM29910static < 0) {
            return false;
        }
        Csuper.m30672const(this.f27671goto);
        if (!Csuper.m30676else(r2[iM29910static], entry.getValue())) {
            return false;
        }
        m29914synchronized(iM29910static);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m29927private();
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m29931while(@m41 Map.Entry<? extends K, ? extends V> entry) {
        Csuper.m30700throw(entry, "entry");
        int iM29910static = m29910static(entry.getKey());
        if (iM29910static < 0) {
            return false;
        }
        V[] vArr = this.f27671goto;
        Csuper.m30672const(vArr);
        return Csuper.m30676else(vArr[iM29910static], entry.getValue());
    }

    public Cfor() {
        this(8);
    }

    public Cfor(int i) {
        this(kotlin.collections.builders.Cif.m29952new(i), null, new int[i], new int[f27663while.m29933for(i)], 2, 0);
    }
}
