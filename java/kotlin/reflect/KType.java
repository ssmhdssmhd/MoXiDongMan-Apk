package kotlin.reflect;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.qq0;
import android.support.v4.z41;
import java.util.List;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00028&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0004R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b8&@'X§\u0004¢\u0006\f\u0012\u0004\b\f\u0010\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u000e8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlin/reflect/KType;", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "getClassifier$annotations", "()V", "classifier", "", "Landroid/support/v4/qq0;", "getArguments", "()Ljava/util/List;", "getArguments$annotations", "arguments", "", "isMarkedNullable", "()Z", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface KType extends KAnnotatedElement {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.reflect.KType$do, reason: invalid class name */
    public static final class Cdo {
        @iz1(version = "1.1")
        /* renamed from: do, reason: not valid java name */
        public static /* synthetic */ void m30990do() {
        }

        @iz1(version = "1.1")
        /* renamed from: if, reason: not valid java name */
        public static /* synthetic */ void m30991if() {
        }
    }

    @m41
    List<qq0> getArguments();

    @z41
    KClassifier getClassifier();

    boolean isMarkedNullable();
}
