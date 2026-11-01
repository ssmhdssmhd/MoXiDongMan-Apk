package kotlin.collections;

import android.R;
import android.support.v4.iz1;
import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u009e\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032b\u0010\f\u001a^\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00018\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00028\u00020\u0004H\u0087\bø\u0001\u0000\u001a¹\u0001\u0010\u0012\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u00032b\u0010\f\u001a^\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00018\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00028\u00020\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a¿\u0001\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000326\u0010\u0015\u001a2\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u00142K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0016H\u0087\bø\u0001\u0000\u001aÚ\u0001\u0010\u0018\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u000326\u0010\u0015\u001a2\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u00142K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0081\u0001\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u001a\u001a\u00028\u000226\u0010\f\u001a2\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0095\u0001\u0010\u001d\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u00032\u0006\u0010\u001a\u001a\u00028\u000226\u0010\f\u001a2\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00020\u0014H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u008b\u0001\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\u001f\"\b\b\u0001\u0010\u0000*\u00028\u0000\"\u0004\b\u0002\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00032K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00000\u0016H\u0087\bø\u0001\u0000\u001a¦\u0001\u0010!\u001a\u00028\u0003\"\u0004\b\u0000\u0010\u001f\"\b\b\u0001\u0010\u0000*\u00028\u0000\"\u0004\b\u0002\u0010\u0001\"\u0016\b\u0003\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00000\u000f*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00032\u0006\u0010\u0011\u001a\u00028\u00032K\u0010\f\u001aG\u0012\u0013\u0012\u00118\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00028\u00000\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001aK\u0010$\u001a\u00028\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0016\b\u0002\u0010\u0010*\u0010\u0012\u0006\b\u0000\u0012\u00028\u0001\u0012\u0004\u0012\u00020#0\u000f*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0011\u001a\u00028\u0002H\u0007¢\u0006\u0004\b$\u0010%\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006&"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "K", "R", "Lkotlin/collections/Grouping;", "Lkotlin/Function4;", "Landroid/support/v4/xb1;", "name", "key", "accumulator", "element", "", "first", "operation", "", "for", "", "M", "destination", "new", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)Ljava/util/Map;", "Lkotlin/Function2;", "initialValueSelector", "Lkotlin/Function3;", "else", "this", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "initialValue", "case", "(Lkotlin/collections/Grouping;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", "goto", "(Lkotlin/collections/Grouping;Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/Map;", ExifInterface.LATITUDE_SOUTH, "break", "catch", "(Lkotlin/collections/Grouping;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Ljava/util/Map;", "", "try", "(Lkotlin/collections/Grouping;Ljava/util/Map;)Ljava/util/Map;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/GroupingKt")
/* renamed from: kotlin.collections.package, reason: invalid class name */
/* loaded from: classes3.dex */
class Cpackage extends Cfinally {
    /* JADX WARN: Multi-variable type inference failed */
    @m41
    @iz1(version = "1.1")
    /* renamed from: break, reason: not valid java name */
    public static final <S, T extends S, K> Map<K, S> m30127break(@m41 Grouping<T, ? extends K> reduce, @m41 Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        Csuper.m30700throw(reduce, "$this$reduce");
        Csuper.m30700throw(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator itSourceIterator = reduce.sourceIterator();
        while (itSourceIterator.hasNext()) {
            S sInvoke = (Object) itSourceIterator.next();
            Object objKeyOf = reduce.keyOf(sInvoke);
            R.attr attrVar = (Object) linkedHashMap.get(objKeyOf);
            if (!(attrVar == null && !linkedHashMap.containsKey(objKeyOf))) {
                sInvoke = operation.invoke(objKeyOf, attrVar, sInvoke);
            }
            linkedHashMap.put(objKeyOf, sInvoke);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @m41
    @iz1(version = "1.1")
    /* renamed from: case, reason: not valid java name */
    public static final <T, K, R> Map<K, R> m30128case(@m41 Grouping<T, ? extends K> fold, R r, @m41 Function2<? super R, ? super T, ? extends R> operation) {
        Csuper.m30700throw(fold, "$this$fold");
        Csuper.m30700throw(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = fold.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            K kKeyOf = fold.keyOf(next);
            R.bool boolVar = (Object) linkedHashMap.get(kKeyOf);
            if (boolVar == null && !linkedHashMap.containsKey(kKeyOf)) {
                boolVar = (Object) r;
            }
            linkedHashMap.put(kKeyOf, operation.invoke(boolVar, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    @iz1(version = "1.1")
    /* renamed from: catch, reason: not valid java name */
    public static final <S, T extends S, K, M extends Map<? super K, S>> M m30129catch(@m41 Grouping<T, ? extends K> reduceTo, @m41 M destination, @m41 Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        Csuper.m30700throw(reduceTo, "$this$reduceTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(operation, "operation");
        Iterator itSourceIterator = reduceTo.sourceIterator();
        while (itSourceIterator.hasNext()) {
            S sInvoke = (Object) itSourceIterator.next();
            Object objKeyOf = reduceTo.keyOf(sInvoke);
            R.attr attrVar = (Object) destination.get(objKeyOf);
            if (!(attrVar == null && !destination.containsKey(objKeyOf))) {
                sInvoke = operation.invoke(objKeyOf, attrVar, sInvoke);
            }
            destination.put(objKeyOf, sInvoke);
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @m41
    @iz1(version = "1.1")
    /* renamed from: else, reason: not valid java name */
    public static final <T, K, R> Map<K, R> m30130else(@m41 Grouping<T, ? extends K> fold, @m41 Function2<? super K, ? super T, ? extends R> initialValueSelector, @m41 Function3<? super K, ? super R, ? super T, ? extends R> operation) {
        Csuper.m30700throw(fold, "$this$fold");
        Csuper.m30700throw(initialValueSelector, "initialValueSelector");
        Csuper.m30700throw(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = fold.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = fold.keyOf(next);
            R rInvoke = (Object) linkedHashMap.get(objKeyOf);
            if (rInvoke == null && !linkedHashMap.containsKey(objKeyOf)) {
                rInvoke = initialValueSelector.invoke(objKeyOf, next);
            }
            linkedHashMap.put(objKeyOf, operation.invoke(objKeyOf, rInvoke, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @m41
    @iz1(version = "1.1")
    /* renamed from: for, reason: not valid java name */
    public static final <T, K, R> Map<K, R> m30131for(@m41 Grouping<T, ? extends K> aggregate, @m41 Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        Csuper.m30700throw(aggregate, "$this$aggregate");
        Csuper.m30700throw(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> itSourceIterator = aggregate.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = aggregate.keyOf(next);
            R.attr attrVar = (Object) linkedHashMap.get(objKeyOf);
            linkedHashMap.put(objKeyOf, operation.invoke(objKeyOf, attrVar, next, Boolean.valueOf(attrVar == null && !linkedHashMap.containsKey(objKeyOf))));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @m41
    @iz1(version = "1.1")
    /* renamed from: goto, reason: not valid java name */
    public static final <T, K, R, M extends Map<? super K, R>> M m30132goto(@m41 Grouping<T, ? extends K> foldTo, @m41 M destination, R r, @m41 Function2<? super R, ? super T, ? extends R> operation) {
        Csuper.m30700throw(foldTo, "$this$foldTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(operation, "operation");
        Iterator<T> itSourceIterator = foldTo.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            K kKeyOf = foldTo.keyOf(next);
            R.bool boolVar = (Object) destination.get(kKeyOf);
            if (boolVar == null && !destination.containsKey(kKeyOf)) {
                boolVar = (Object) r;
            }
            destination.put(kKeyOf, operation.invoke(boolVar, next));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @m41
    @iz1(version = "1.1")
    /* renamed from: new, reason: not valid java name */
    public static final <T, K, R, M extends Map<? super K, R>> M m30133new(@m41 Grouping<T, ? extends K> aggregateTo, @m41 M destination, @m41 Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        Csuper.m30700throw(aggregateTo, "$this$aggregateTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(operation, "operation");
        Iterator<T> itSourceIterator = aggregateTo.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = aggregateTo.keyOf(next);
            R.attr attrVar = (Object) destination.get(objKeyOf);
            destination.put(objKeyOf, operation.invoke(objKeyOf, attrVar, next, Boolean.valueOf(attrVar == null && !destination.containsKey(objKeyOf))));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @m41
    @iz1(version = "1.1")
    /* renamed from: this, reason: not valid java name */
    public static final <T, K, R, M extends Map<? super K, R>> M m30134this(@m41 Grouping<T, ? extends K> foldTo, @m41 M destination, @m41 Function2<? super K, ? super T, ? extends R> initialValueSelector, @m41 Function3<? super K, ? super R, ? super T, ? extends R> operation) {
        Csuper.m30700throw(foldTo, "$this$foldTo");
        Csuper.m30700throw(destination, "destination");
        Csuper.m30700throw(initialValueSelector, "initialValueSelector");
        Csuper.m30700throw(operation, "operation");
        Iterator<T> itSourceIterator = foldTo.sourceIterator();
        while (itSourceIterator.hasNext()) {
            ?? next = itSourceIterator.next();
            Object objKeyOf = foldTo.keyOf(next);
            R rInvoke = (Object) destination.get(objKeyOf);
            if (rInvoke == null && !destination.containsKey(objKeyOf)) {
                rInvoke = initialValueSelector.invoke(objKeyOf, next);
            }
            destination.put(objKeyOf, operation.invoke(objKeyOf, rInvoke, next));
        }
        return destination;
    }

    @m41
    @iz1(version = "1.1")
    /* renamed from: try, reason: not valid java name */
    public static final <T, K, M extends Map<? super K, Integer>> M m30135try(@m41 Grouping<T, ? extends K> eachCountTo, @m41 M destination) {
        Csuper.m30700throw(eachCountTo, "$this$eachCountTo");
        Csuper.m30700throw(destination, "destination");
        Iterator<T> itSourceIterator = eachCountTo.sourceIterator();
        while (itSourceIterator.hasNext()) {
            K kKeyOf = eachCountTo.keyOf(itSourceIterator.next());
            Object obj = destination.get(kKeyOf);
            if (obj == null && !destination.containsKey(kKeyOf)) {
                obj = 0;
            }
            destination.put(kKeyOf, Integer.valueOf(((Number) obj).intValue() + 1));
        }
        return destination;
    }
}
