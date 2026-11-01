package kotlin.streams.jdk8;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.wp0;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import kotlin.Cwhile;
import kotlin.collections.Ccatch;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;

@wp0(name = "StreamsKt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\u001a\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a\u0012\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002*\u00020\u0004H\u0007\u001a\u0012\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0002*\u00020\u0007H\u0007\u001a\u0012\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0002*\u00020\nH\u0007\u001a\u001e\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007\u001a\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a\u0012\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e*\u00020\u0004H\u0007\u001a\u0012\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u000e*\u00020\u0007H\u0007\u001a\u0012\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e*\u00020\nH\u0007¨\u0006\u0013"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/stream/Stream;", "Lkotlin/sequences/Sequence;", "new", "Ljava/util/stream/IntStream;", "", "if", "Ljava/util/stream/LongStream;", "", "for", "Ljava/util/stream/DoubleStream;", "", "do", "try", "", "this", "else", "goto", "case", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 5, 1}, pn = "kotlin.streams")
/* renamed from: kotlin.streams.jdk8.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/streams/jdk8/do$do", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.streams.jdk8.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0373do<T> implements Sequence<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Stream f28015do;

        public C0373do(Stream stream) {
            this.f28015do = stream;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<T> iterator() {
            Iterator<T> it = this.f28015do.iterator();
            Csuper.m30696super(it, "iterator()");
            return it;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/streams/jdk8/do$for", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.streams.jdk8.do$for, reason: invalid class name */
    public static final class Cfor implements Sequence<Long> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ LongStream f28016do;

        public Cfor(LongStream longStream) {
            this.f28016do = longStream;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<Long> iterator() {
            Iterator<Long> it = this.f28016do.iterator();
            Csuper.m30696super(it, "iterator()");
            return it;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/streams/jdk8/do$if", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.streams.jdk8.do$if, reason: invalid class name */
    public static final class Cif implements Sequence<Integer> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ IntStream f28017do;

        public Cif(IntStream intStream) {
            this.f28017do = intStream;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<Integer> iterator() {
            Iterator<Integer> it = this.f28017do.iterator();
            Csuper.m30696super(it, "iterator()");
            return it;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¨\u0006\u0004¸\u0006\u0005"}, d2 = {"kotlin/streams/jdk8/do$new", "Lkotlin/sequences/Sequence;", "", "iterator", "kotlin-stdlib", "kotlin/sequences/break$do"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.streams.jdk8.do$new, reason: invalid class name */
    public static final class Cnew implements Sequence<Double> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DoubleStream f28018do;

        public Cnew(DoubleStream doubleStream) {
            this.f28018do = doubleStream;
        }

        @Override // kotlin.sequences.Sequence
        @m41
        public Iterator<Double> iterator() {
            Iterator<Double> it = this.f28018do.iterator();
            Csuper.m30696super(it, "iterator()");
            return it;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a&\u0012\f\u0012\n \u0002*\u0004\u0018\u00018\u00008\u0000 \u0002*\u0012\u0012\f\u0012\n \u0002*\u0004\u0018\u00018\u00008\u0000\u0018\u00010\u00010\u0001\"\u0004\b\u0000\u0010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/Spliterator;", "kotlin.jvm.PlatformType", "do", "()Ljava/util/Spliterator;"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.streams.jdk8.do$try, reason: invalid class name */
    public static final class Ctry<T> implements Supplier {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Sequence f28019do;

        public Ctry(Sequence sequence) {
            this.f28019do = sequence;
        }

        @Override // java.util.function.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Spliterator<T> get() {
            return Spliterators.spliteratorUnknownSize(this.f28019do.iterator(), 16);
        }
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: case, reason: not valid java name */
    public static final List<Double> m31096case(@m41 DoubleStream toList) {
        Csuper.m30700throw(toList, "$this$toList");
        double[] array = toList.toArray();
        Csuper.m30696super(array, "toArray()");
        return Ccatch.m29994throw(array);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: do, reason: not valid java name */
    public static final Sequence<Double> m31097do(@m41 DoubleStream asSequence) {
        Csuper.m30700throw(asSequence, "$this$asSequence");
        return new Cnew(asSequence);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: else, reason: not valid java name */
    public static final List<Integer> m31098else(@m41 IntStream toList) {
        Csuper.m30700throw(toList, "$this$toList");
        int[] array = toList.toArray();
        Csuper.m30696super(array, "toArray()");
        return Ccatch.m29980import(array);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: for, reason: not valid java name */
    public static final Sequence<Long> m31099for(@m41 LongStream asSequence) {
        Csuper.m30700throw(asSequence, "$this$asSequence");
        return new Cfor(asSequence);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: goto, reason: not valid java name */
    public static final List<Long> m31100goto(@m41 LongStream toList) {
        Csuper.m30700throw(toList, "$this$toList");
        long[] array = toList.toArray();
        Csuper.m30696super(array, "toArray()");
        return Ccatch.m29983native(array);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: if, reason: not valid java name */
    public static final Sequence<Integer> m31101if(@m41 IntStream asSequence) {
        Csuper.m30700throw(asSequence, "$this$asSequence");
        return new Cif(asSequence);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: new, reason: not valid java name */
    public static final <T> Sequence<T> m31102new(@m41 Stream<T> asSequence) {
        Csuper.m30700throw(asSequence, "$this$asSequence");
        return new C0373do(asSequence);
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: this, reason: not valid java name */
    public static final <T> List<T> m31103this(@m41 Stream<T> toList) {
        Csuper.m30700throw(toList, "$this$toList");
        Object objCollect = toList.collect(Collectors.toList());
        Csuper.m30696super(objCollect, "collect(Collectors.toList<T>())");
        return (List) objCollect;
    }

    @m41
    @iz1(version = "1.2")
    /* renamed from: try, reason: not valid java name */
    public static final <T> Stream<T> m31104try(@m41 Sequence<? extends T> asStream) {
        Csuper.m30700throw(asStream, "$this$asStream");
        Stream<T> stream = StreamSupport.stream(new Ctry(asStream), 16, false);
        Csuper.m30696super(stream, "StreamSupport.stream({ S…literator.ORDERED, false)");
        return stream;
    }
}
