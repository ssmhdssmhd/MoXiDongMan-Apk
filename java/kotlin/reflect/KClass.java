package kotlin.reflect;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.List;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H'J\u0013\u0010\n\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0001H¦\u0002J\b\u0010\f\u001a\u00020\u000bH&R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR \u0010\u0017\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00140\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00180\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0016R \u0010\u001c\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00000\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0016R\u0018\u0010\u001f\u001a\u0004\u0018\u00018\u00008&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\"\u0010&\u001a\b\u0012\u0004\u0012\u00020!0 8&@'X§\u0004¢\u0006\f\u0012\u0004\b$\u0010%\u001a\u0004\b\"\u0010#R\"\u0010*\u001a\b\u0012\u0004\u0012\u00020'0 8&@'X§\u0004¢\u0006\f\u0012\u0004\b)\u0010%\u001a\u0004\b(\u0010#R*\u0010-\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00000 8&@'X§\u0004¢\u0006\f\u0012\u0004\b,\u0010%\u001a\u0004\b+\u0010#R\u001e\u00102\u001a\u0004\u0018\u00010.8&@'X§\u0004¢\u0006\f\u0012\u0004\b1\u0010%\u001a\u0004\b/\u00100R\u001c\u00103\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b5\u0010%\u001a\u0004\b3\u00104R\u001c\u00106\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b7\u0010%\u001a\u0004\b6\u00104R\u001c\u00108\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b9\u0010%\u001a\u0004\b8\u00104R\u001c\u0010:\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b;\u0010%\u001a\u0004\b:\u00104R\u001c\u0010<\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b=\u0010%\u001a\u0004\b<\u00104R\u001c\u0010>\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\b?\u0010%\u001a\u0004\b>\u00104R\u001c\u0010@\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\bA\u0010%\u001a\u0004\b@\u00104R\u001c\u0010B\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\bC\u0010%\u001a\u0004\bB\u00104R\u001c\u0010D\u001a\u00020\u00078&@'X§\u0004¢\u0006\f\u0012\u0004\bE\u0010%\u001a\u0004\bD\u00104¨\u0006F"}, d2 = {"Lkotlin/reflect/KClass;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KDeclarationContainer;", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/reflect/KClassifier;", ES6Iterator.VALUE_PROPERTY, "", "isInstance", "other", "equals", "", "hashCode", "", "getSimpleName", "()Ljava/lang/String;", "simpleName", "getQualifiedName", "qualifiedName", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "members", "Lkotlin/reflect/KFunction;", "getConstructors", "constructors", "getNestedClasses", "nestedClasses", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance", "", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "()Ljava/util/List;", "getTypeParameters$annotations", "()V", "typeParameters", "Lkotlin/reflect/KType;", "getSupertypes", "getSupertypes$annotations", "supertypes", "getSealedSubclasses", "getSealedSubclasses$annotations", "sealedSubclasses", "Lkotlin/reflect/new;", "getVisibility", "()Lkotlin/reflect/new;", "getVisibility$annotations", "visibility", "isFinal", "()Z", "isFinal$annotations", "isOpen", "isOpen$annotations", "isAbstract", "isAbstract$annotations", "isSealed", "isSealed$annotations", "isData", "isData$annotations", "isInner", "isInner$annotations", "isCompanion", "isCompanion$annotations", "isFun", "isFun$annotations", "isValue", "isValue$annotations", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface KClass<T> extends KDeclarationContainer, KAnnotatedElement, KClassifier {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.reflect.KClass$do, reason: invalid class name */
    public static final class Cdo {
        @iz1(version = "1.1")
        /* renamed from: break, reason: not valid java name */
        public static /* synthetic */ void m30969break() {
        }

        @iz1(version = "1.1")
        /* renamed from: case, reason: not valid java name */
        public static /* synthetic */ void m30970case() {
        }

        @iz1(version = "1.1")
        /* renamed from: catch, reason: not valid java name */
        public static /* synthetic */ void m30971catch() {
        }

        @iz1(version = "1.1")
        /* renamed from: class, reason: not valid java name */
        public static /* synthetic */ void m30972class() {
        }

        @iz1(version = "1.5")
        /* renamed from: const, reason: not valid java name */
        public static /* synthetic */ void m30973const() {
        }

        @iz1(version = "1.3")
        /* renamed from: do, reason: not valid java name */
        public static /* synthetic */ void m30974do() {
        }

        @iz1(version = "1.1")
        /* renamed from: else, reason: not valid java name */
        public static /* synthetic */ void m30975else() {
        }

        @iz1(version = "1.1")
        /* renamed from: for, reason: not valid java name */
        public static /* synthetic */ void m30976for() {
        }

        @iz1(version = "1.1")
        /* renamed from: goto, reason: not valid java name */
        public static /* synthetic */ void m30977goto() {
        }

        @iz1(version = "1.1")
        /* renamed from: if, reason: not valid java name */
        public static /* synthetic */ void m30978if() {
        }

        @iz1(version = "1.1")
        /* renamed from: new, reason: not valid java name */
        public static /* synthetic */ void m30979new() {
        }

        @iz1(version = "1.4")
        /* renamed from: this, reason: not valid java name */
        public static /* synthetic */ void m30980this() {
        }

        @iz1(version = "1.1")
        /* renamed from: try, reason: not valid java name */
        public static /* synthetic */ void m30981try() {
        }
    }

    boolean equals(@z41 Object obj);

    @m41
    Collection<KFunction<T>> getConstructors();

    @Override // kotlin.reflect.KDeclarationContainer
    @m41
    Collection<KCallable<?>> getMembers();

    @m41
    Collection<KClass<?>> getNestedClasses();

    @z41
    T getObjectInstance();

    @z41
    String getQualifiedName();

    @m41
    List<KClass<? extends T>> getSealedSubclasses();

    @z41
    String getSimpleName();

    @m41
    List<KType> getSupertypes();

    @m41
    List<KTypeParameter> getTypeParameters();

    @z41
    Cnew getVisibility();

    int hashCode();

    boolean isAbstract();

    boolean isCompanion();

    boolean isData();

    boolean isFinal();

    boolean isFun();

    boolean isInner();

    @iz1(version = "1.1")
    boolean isInstance(@z41 Object obj);

    boolean isOpen();

    boolean isSealed();

    boolean isValue();
}
