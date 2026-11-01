package android.support.v4;

import java.util.Collection;
import kotlin.Cwhile;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Csuper;
import kotlin.reflect.KCallable;

@iz1(version = "1.1")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f\u0012\u0006\u0010\u0014\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R \u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR \u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Landroid/support/v4/lb1;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "", "other", "", "equals", "", "hashCode", "", "toString", "", "Lkotlin/reflect/KCallable;", "getMembers", "()Ljava/util/Collection;", "members", "Ljava/lang/Class;", "jClass", "Ljava/lang/Class;", "getJClass", "()Ljava/lang/Class;", "moduleName", "<init>", "(Ljava/lang/Class;Ljava/lang/String;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class lb1 implements ClassBasedDeclarationContainer {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final Class<?> f3616do;

    /* renamed from: if, reason: not valid java name */
    private final String f3617if;

    public lb1(@m41 Class<?> jClass, @m41 String moduleName) {
        Csuper.m30700throw(jClass, "jClass");
        Csuper.m30700throw(moduleName, "moduleName");
        this.f3616do = jClass;
        this.f3617if = moduleName;
    }

    public boolean equals(@z41 Object obj) {
        return (obj instanceof lb1) && Csuper.m30676else(getJClass(), ((lb1) obj).getJClass());
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    @m41
    public Class<?> getJClass() {
        return this.f3616do;
    }

    @Override // kotlin.reflect.KDeclarationContainer
    @m41
    public Collection<KCallable<?>> getMembers() {
        throw new sr0();
    }

    public int hashCode() {
        return getJClass().hashCode();
    }

    @m41
    public String toString() {
        return getJClass().toString() + dm1.f1082if;
    }
}
