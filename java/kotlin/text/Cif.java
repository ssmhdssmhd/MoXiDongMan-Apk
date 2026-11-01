package kotlin.text;

import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.yr0;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Cfinal;
import kotlin.Cwhile;
import kotlin.Lazy;
import kotlin.collections.Cvolatile;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.Ccase;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u001d\b\u0086\u0001\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001e¨\u0006\u001f"}, d2 = {"Lkotlin/text/if;", "", "", ES6Iterator.VALUE_PROPERTY, OptRuntime.GeneratorState.resumptionPoint_TYPE, "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "if", "UNDEFINED", "LEFT_TO_RIGHT", "RIGHT_TO_LEFT", "RIGHT_TO_LEFT_ARABIC", "EUROPEAN_NUMBER", "EUROPEAN_NUMBER_SEPARATOR", "EUROPEAN_NUMBER_TERMINATOR", "ARABIC_NUMBER", "COMMON_NUMBER_SEPARATOR", "NONSPACING_MARK", "BOUNDARY_NEUTRAL", "PARAGRAPH_SEPARATOR", "SEGMENT_SEPARATOR", "WHITESPACE", "OTHER_NEUTRALS", "LEFT_TO_RIGHT_EMBEDDING", "LEFT_TO_RIGHT_OVERRIDE", "RIGHT_TO_LEFT_EMBEDDING", "RIGHT_TO_LEFT_OVERRIDE", "POP_DIRECTIONAL_FORMAT", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.if, reason: invalid class name */
/* loaded from: classes3.dex */
public enum Cif {
    UNDEFINED(-1),
    LEFT_TO_RIGHT(0),
    RIGHT_TO_LEFT(1),
    RIGHT_TO_LEFT_ARABIC(2),
    EUROPEAN_NUMBER(3),
    EUROPEAN_NUMBER_SEPARATOR(4),
    EUROPEAN_NUMBER_TERMINATOR(5),
    ARABIC_NUMBER(6),
    COMMON_NUMBER_SEPARATOR(7),
    NONSPACING_MARK(8),
    BOUNDARY_NEUTRAL(9),
    PARAGRAPH_SEPARATOR(10),
    SEGMENT_SEPARATOR(11),
    WHITESPACE(12),
    OTHER_NEUTRALS(13),
    LEFT_TO_RIGHT_EMBEDDING(14),
    LEFT_TO_RIGHT_OVERRIDE(15),
    RIGHT_TO_LEFT_EMBEDDING(16),
    RIGHT_TO_LEFT_OVERRIDE(17),
    POP_DIRECTIONAL_FORMAT(18);

    private final int value;

    @m41
    public static final C0375if Companion = new C0375if(null);

    /* renamed from: if, reason: not valid java name */
    private static final Lazy f28044if = Cfinal.m30446for(Cdo.INSTANCE);

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lkotlin/text/if;", "invoke", "()Ljava/util/Map;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.if$do, reason: invalid class name */
    public static final class Cdo extends yr0 implements Function0<Map<Integer, ? extends Cif>> {
        public static final Cdo INSTANCE = new Cdo();

        public Cdo() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m41
        public final Map<Integer, ? extends Cif> invoke() {
            Cif[] cifArrValues = Cif.values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(Ccase.m30873final(Cvolatile.m30270break(cifArrValues.length), 16));
            for (Cif cif : cifArrValues) {
                linkedHashMap.put(Integer.valueOf(cif.getValue()), cif);
            }
            return linkedHashMap;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R)\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"kotlin/text/if$if", "", "", "directionality", "Lkotlin/text/if;", "if", "", "directionalityMap$delegate", "Lkotlin/Lazy;", "do", "()Ljava/util/Map;", "directionalityMap", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0375if {
        private C0375if() {
        }

        /* renamed from: do, reason: not valid java name */
        private final Map<Integer, Cif> m31191do() {
            Lazy lazy = Cif.f28044if;
            C0375if c0375if = Cif.Companion;
            return (Map) lazy.getValue();
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Cif m31192if(int i) {
            Cif cif = m31191do().get(Integer.valueOf(i));
            if (cif != null) {
                return cif;
            }
            throw new IllegalArgumentException("Directionality #" + i + " is not defined.");
        }

        public /* synthetic */ C0375if(rx rxVar) {
            this();
        }
    }

    Cif(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
