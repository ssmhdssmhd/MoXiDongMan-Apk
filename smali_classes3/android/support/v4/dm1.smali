.class public Landroid/support/v4/dm1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Landroid/support/v4/fm1;

.field private static final for:[Lkotlin/reflect/KClass;

.field public static final if:Ljava/lang/String; = " (Kotlin reflection is not available)"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/fm1;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/fm1;

    invoke-direct {v0}, Landroid/support/v4/fm1;-><init>()V

    :goto_1
    sput-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/KClass;

    .line 4
    sput-object v0, Landroid/support/v4/dm1;->for:[Lkotlin/reflect/KClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Landroid/support/v4/h11;)Lkotlin/reflect/KMutableProperty1;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->goto(Landroid/support/v4/h11;)Lkotlin/reflect/KMutableProperty1;

    move-result-object p0

    return-object p0
.end method

.method public static case([Ljava/lang/Class;)[Lkotlin/reflect/KClass;
    .locals 4

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Landroid/support/v4/dm1;->for:[Lkotlin/reflect/KClass;

    return-object p0

    .line 3
    :cond_0
    new-array v1, v0, [Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static catch(Landroid/support/v4/j11;)Lkotlin/reflect/KMutableProperty2;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->this(Landroid/support/v4/j11;)Lkotlin/reflect/KMutableProperty2;

    move-result-object p0

    return-object p0
.end method

.method public static class(Ljava/lang/Class;)Lkotlin/reflect/KType;
    .locals 3
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/Class;Landroid/support/v4/qq0;)Lkotlin/reflect/KType;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static default(Ljava/lang/Class;Landroid/support/v4/qq0;)Lkotlin/reflect/KType;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static do(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->do(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static else(Ljava/lang/Class;)Lkotlin/reflect/KDeclarationContainer;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/fm1;->case(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public static extends(Ljava/lang/Class;Landroid/support/v4/qq0;Landroid/support/v4/qq0;)Lkotlin/reflect/KType;
    .locals 3
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/support/v4/qq0;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v2}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static final(Ljava/lang/Class;Landroid/support/v4/qq0;Landroid/support/v4/qq0;)Lkotlin/reflect/KType;
    .locals 3
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/support/v4/qq0;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p0, p2, p1}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static varargs finally(Ljava/lang/Class;[Landroid/support/v4/qq0;)Lkotlin/reflect/KType;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/goto;->tx([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static for(Landroid/support/v4/je0;)Lkotlin/reflect/KFunction;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->for(Landroid/support/v4/je0;)Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/fm1;->case(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/fm1;->if(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static import(Landroid/support/v4/ig1;)Lkotlin/reflect/KProperty1;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->catch(Landroid/support/v4/ig1;)Lkotlin/reflect/KProperty1;

    move-result-object p0

    return-object p0
.end method

.method public static native(Landroid/support/v4/kg1;)Lkotlin/reflect/KProperty2;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->class(Landroid/support/v4/kg1;)Lkotlin/reflect/KProperty2;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static package(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KType;
    .locals 3
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static private(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/for;Z)Lkotlin/reflect/KTypeParameter;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/fm1;->while(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/for;Z)Lkotlin/reflect/KTypeParameter;

    move-result-object p0

    return-object p0
.end method

.method public static public(Landroid/support/v4/yr0;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->const(Landroid/support/v4/yr0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static return(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->final(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static static(Lkotlin/reflect/KTypeParameter;Lkotlin/reflect/KType;)V
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/fm1;->super(Lkotlin/reflect/KTypeParameter;Ljava/util/List;)V

    return-void
.end method

.method public static varargs super(Ljava/lang/Class;[Landroid/support/v4/qq0;)Lkotlin/reflect/KType;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/goto;->tx([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static varargs switch(Lkotlin/reflect/KTypeParameter;[Lkotlin/reflect/KType;)V
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p1}, Lkotlin/collections/goto;->tx([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/fm1;->super(Lkotlin/reflect/KTypeParameter;Ljava/util/List;)V

    return-void
.end method

.method public static this(Landroid/support/v4/f11;)Lkotlin/reflect/KMutableProperty0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->else(Landroid/support/v4/f11;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KType;
    .locals 3
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static throws(Ljava/lang/Class;)Lkotlin/reflect/KType;
    .locals 3
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-static {p0}, Landroid/support/v4/dm1;->new(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/fm1;->throw(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/fm1;->try(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static while(Landroid/support/v4/gg1;)Lkotlin/reflect/KProperty0;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/dm1;->do:Landroid/support/v4/fm1;

    invoke-virtual {v0, p0}, Landroid/support/v4/fm1;->break(Landroid/support/v4/gg1;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method
