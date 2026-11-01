package rx.internal.util.unsafe;

/* renamed from: rx.internal.util.unsafe.throws, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cthrows<E> extends Ccase<E> {

    /* renamed from: throws, reason: not valid java name */
    private static final Integer f35992throws = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: switch, reason: not valid java name */
    public final int f35993switch;

    public Cthrows(int i) {
        super(i);
        this.f35993switch = Math.min(i / 4, f35992throws.intValue());
    }
}
