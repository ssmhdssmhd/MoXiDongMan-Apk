package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Predicate;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public class AppendOnlyLinkedArrayList<T> {

    /* renamed from: do, reason: not valid java name */
    public final int f27430do;

    /* renamed from: for, reason: not valid java name */
    public Object[] f27431for;

    /* renamed from: if, reason: not valid java name */
    public final Object[] f27432if;

    /* renamed from: new, reason: not valid java name */
    public int f27433new;

    public interface NonThrowingPredicate<T> extends Predicate<T> {
        @Override // io.reactivex.functions.Predicate
        boolean test(T t);
    }

    public AppendOnlyLinkedArrayList(int i) {
        this.f27430do = i;
        Object[] objArr = new Object[i + 1];
        this.f27432if = objArr;
        this.f27431for = objArr;
    }

    /* renamed from: case, reason: not valid java name */
    public void m29706case(T t) {
        this.f27432if[0] = t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
    
        continue;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <U> boolean m29707do(Observer<? super U> observer) {
        Object[] objArr = this.f27432if;
        int i = this.f27430do;
        while (true) {
            if (objArr == null) {
                return false;
            }
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 == null) {
                    break;
                }
                if (Cbreak.acceptFull(objArr2, observer)) {
                    return true;
                }
            }
            objArr = objArr[i];
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m29708for(T t) {
        int i = this.f27430do;
        int i2 = this.f27433new;
        if (i2 == i) {
            Object[] objArr = new Object[i + 1];
            this.f27431for[i] = objArr;
            this.f27431for = objArr;
            i2 = 0;
        }
        this.f27431for[i2] = t;
        this.f27433new = i2 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
    
        continue;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <U> boolean m29709if(Subscriber<? super U> subscriber) {
        Object[] objArr = this.f27432if;
        int i = this.f27430do;
        while (true) {
            if (objArr == null) {
                return false;
            }
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 == null) {
                    break;
                }
                if (Cbreak.acceptFull(objArr2, subscriber)) {
                    return true;
                }
            }
            objArr = objArr[i];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0018, code lost:
    
        continue;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m29710new(NonThrowingPredicate<? super T> nonThrowingPredicate) {
        int i = this.f27430do;
        for (Object[] objArr = this.f27432if; objArr != null; objArr = (Object[]) objArr[i]) {
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = objArr[i2];
                if (obj == null) {
                    break;
                } else {
                    if (nonThrowingPredicate.test(obj)) {
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public <S> void m29711try(S s, BiPredicate<? super S, ? super T> biPredicate) throws Exception {
        Object[] objArr = this.f27432if;
        int i = this.f27430do;
        while (true) {
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = objArr[i2];
                if (obj == null || biPredicate.test(s, obj)) {
                    return;
                }
            }
            objArr = (Object[]) objArr[i];
        }
    }
}
