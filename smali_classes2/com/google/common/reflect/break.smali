.class public abstract Lcom/google/common/reflect/break;
.super Lcom/google/common/reflect/else;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/break$this;,
        Lcom/google/common/reflect/break$goto;,
        Lcom/google/common/reflect/break$try;,
        Lcom/google/common/reflect/break$break;,
        Lcom/google/common/reflect/break$case;,
        Lcom/google/common/reflect/break$else;,
        Lcom/google/common/reflect/break$catch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/else<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x327b23b1befe387cL


# instance fields
.field private transient do:Lcom/google/common/reflect/this;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field private transient if:Lcom/google/common/reflect/this;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field

.field private final runtimeType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/common/reflect/else;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/reflect/else;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 4
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    invoke-static {v1, v2, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/common/reflect/else;-><init>()V

    .line 6
    invoke-super {p0}, Lcom/google/common/reflect/else;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 8
    iput-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/this;->new(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/this;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/common/reflect/else;-><init>()V

    .line 11
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/break$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/this;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->catch()Lcom/google/common/reflect/this;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/this;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->class()Lcom/google/common/reflect/this;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/common/reflect/break;)Lcom/google/common/collect/g1;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->final()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/common/reflect/break;)Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method private break(Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/common/reflect/break<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getComponentType()Lcom/google/common/reflect/break;

    move-result-object v0

    const-string v1, "%s isn\'t a super type of %s"

    invoke-static {v0, v1, p1, p0}, Landroid/support/v4/af1;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/reflect/break;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 4
    invoke-static {p1}, Lcom/google/common/reflect/break;->switch(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method private static case(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-static {v4, v5}, Lcom/google/common/reflect/break;->new(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/google/common/reflect/class;->final(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method private catch()Lcom/google/common/reflect/this;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->if:Lcom/google/common/reflect/this;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/this;->new(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/this;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/break;->if:Lcom/google/common/reflect/this;

    :cond_0
    return-object v0
.end method

.method private class()Lcom/google/common/reflect/this;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->do:Lcom/google/common/reflect/this;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/this;->case(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/this;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/break;->do:Lcom/google/common/reflect/this;

    :cond_0
    return-object v0
.end method

.method private const()Ljava/lang/reflect/Type;
    .locals 2
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private default(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/google/common/reflect/break;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/break;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 6
    new-instance v1, Lcom/google/common/reflect/this;

    invoke-direct {v1}, Lcom/google/common/reflect/this;-><init>()V

    iget-object v2, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/common/reflect/this;->final(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/this;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method private static do([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$try;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/break$try;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private static else(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lcom/google/common/reflect/break;->case(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 5
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/break;->else(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/common/reflect/class;->catch(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private extends(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->final()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final()Lcom/google/common/collect/g1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g1;->builder()Lcom/google/common/collect/g1$do;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/reflect/break$new;

    invoke-direct {v1, p0, v0}, Lcom/google/common/reflect/break$new;-><init>(Lcom/google/common/reflect/break;Lcom/google/common/collect/g1$do;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/catch;->do([Ljava/lang/reflect/Type;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/g1$do;->final()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method private for([Ljava/lang/reflect/Type;)Lcom/google/common/collect/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/reflect/break<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/v0;->builder()Lcom/google/common/collect/v0$do;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 3
    invoke-static {v3}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method private static goto([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$try;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/break$try;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private if(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/break<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private import(Ljava/lang/reflect/Type;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getTypes()Lcom/google/common/reflect/break$catch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/qd0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/break;

    .line 2
    invoke-direct {v1}, Lcom/google/common/reflect/break;->const()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private native(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->of(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 7
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method private static new(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/reflect/break;->try(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/break;->else(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$goto;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/break$goto;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/break<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/reflect/break$goto;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/break$goto;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private public(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->extends(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/common/reflect/break;->catch()Lcom/google/common/reflect/this;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v4

    aget-object v5, v1, v3

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Lcom/google/common/reflect/break;->while(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->import(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private return(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-class p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 8
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/hf1;->for()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private super(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/break<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/common/reflect/break;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a subclass of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static switch(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/class$try;->JAVA7:Lcom/google/common/reflect/class$try;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/class$try;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private this(Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/reflect/break<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getComponentType()Lcom/google/common/reflect/break;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 3
    invoke-static {p1}, Lcom/google/common/reflect/break;->switch(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method private throw(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/break<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-static {v2}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/common/reflect/break;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a super type of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private throws(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/break<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->catch()Lcom/google/common/reflect/this;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/break;->if:Lcom/google/common/reflect/this;

    iput-object v0, p1, Lcom/google/common/reflect/break;->if:Lcom/google/common/reflect/this;

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/break;->do:Lcom/google/common/reflect/this;

    iput-object v0, p1, Lcom/google/common/reflect/break;->do:Lcom/google/common/reflect/this;

    return-object p1
.end method

.method public static toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 3
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/break<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/break;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 3
    invoke-static {p0}, Lcom/google/common/reflect/class;->catch(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/break;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, v0

    if-gtz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/google/common/reflect/break;->of(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    :goto_1
    invoke-static {v1, p0, v0}, Lcom/google/common/reflect/class;->final(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p0

    return-object p0
.end method

.method private static try(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/WildcardType;",
            ")",
            "Ljava/lang/reflect/WildcardType;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 4
    invoke-static {p0}, Lcom/google/common/reflect/break;->do([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/common/reflect/break$try;->do(Ljava/lang/reflect/Type;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5
    invoke-static {v5}, Lcom/google/common/reflect/break;->else(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lcom/google/common/reflect/class$break;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/class$break;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method private while(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p2, p1}, Lcom/google/common/reflect/break;->try(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/reflect/break;->goto([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/break$try;->if(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->goto([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/google/common/reflect/break$try;->do(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/reflect/break;->else(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p1}, Lcom/google/common/reflect/break;->else(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/try;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lcom/google/common/reflect/try<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "%s not declared by %s"

    .line 3
    invoke-static {v0, v2, p1, v1}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/common/reflect/break$if;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/break$if;-><init>(Lcom/google/common/reflect/break;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/reflect/break;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/reflect/break;

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getComponentType()Lcom/google/common/reflect/break;
    .locals 1
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/class;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0
.end method

.method public final getGenericInterfaces()Lcom/google/common/collect/v0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/reflect/break<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->for([Ljava/lang/reflect/Type;)Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->for([Ljava/lang/reflect/Type;)Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/common/collect/v0;->builder()Lcom/google/common/collect/v0$do;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7
    invoke-direct {p0, v4}, Lcom/google/common/reflect/break;->throws(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0
.end method

.method public final getGenericSuperclass()Lcom/google/common/reflect/break;
    .locals 3
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->if(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->if(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->throws(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->final()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/reflect/break<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot get subtype of type variable <%s>"

    invoke-static {v0, v1, p0}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/break;->super(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->this(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s isn\'t a subclass of %s"

    .line 7
    invoke-static {v0, v1, p1, p0}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->default(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lcom/google/common/reflect/break;->isSubtypeOf(Lcom/google/common/reflect/break;)Z

    move-result v0

    const-string v1, "%s does not appear to be a subtype of %s"

    .line 11
    invoke-static {v0, v1, p1, p0}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/common/reflect/break<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->extends(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a super class of %s"

    .line 2
    invoke-static {v0, v1, p1, p0}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/break;->throw(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/break;->throw(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->break(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/google/common/reflect/break;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->throws(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getTypes()Lcom/google/common/reflect/break$catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$catch;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/break$catch;-><init>(Lcom/google/common/reflect/break;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isArray()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getComponentType()Lcom/google/common/reflect/break;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrimitive()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubtypeOf(Lcom/google/common/reflect/break;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public final isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->do([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/break$try;->if(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->do([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break$try;->do(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 9
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->do([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break$try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break$try;->do(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    .line 10
    :cond_4
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 11
    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p1, v0}, Lcom/google/common/reflect/break;->return(Ljava/lang/reflect/GenericArrayType;)Z

    move-result p1

    return p1

    .line 12
    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 13
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->extends(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 14
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 15
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->public(Ljava/lang/reflect/ParameterizedType;)Z

    move-result p1

    return p1

    .line 16
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    .line 17
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/break;->native(Ljava/lang/reflect/GenericArrayType;)Z

    move-result p1

    return p1

    :cond_8
    return v2
.end method

.method public final isSupertypeOf(Lcom/google/common/reflect/break;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public final isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/reflect/break;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/break;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public final method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/try;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/try<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/break;->extends(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s not declared by %s"

    .line 2
    invoke-static {v0, v1, p1, p0}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/common/reflect/break$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/break$do;-><init>(Lcom/google/common/reflect/break;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final rejectTypeVariables()Lcom/google/common/reflect/break;
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$for;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/break$for;-><init>(Lcom/google/common/reflect/break;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/catch;->do([Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method public final resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/break<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/common/reflect/break;->class()Lcom/google/common/reflect/this;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/class;->public(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unwrap()Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/break;->static()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Landroid/support/v4/hf1;->try(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->of(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final where(Lcom/google/common/reflect/goto;Lcom/google/common/reflect/break;)Lcom/google/common/reflect/break;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/goto<",
            "TX;>;",
            "Lcom/google/common/reflect/break<",
            "TX;>;)",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/this;

    invoke-direct {v0}, Lcom/google/common/reflect/this;-><init>()V

    new-instance v1, Lcom/google/common/reflect/this$new;

    iget-object p1, p1, Lcom/google/common/reflect/goto;->do:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/this$new;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object p1, p2, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    .line 2
    invoke-static {v1, p1}, Lcom/google/common/collect/x0;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/this;->super(Ljava/util/Map;)Lcom/google/common/reflect/this;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/google/common/reflect/break$goto;

    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/common/reflect/break$goto;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public final where(Lcom/google/common/reflect/goto;Ljava/lang/Class;)Lcom/google/common/reflect/break;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/goto<",
            "TX;>;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/common/reflect/break;->of(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/reflect/break;->where(Lcom/google/common/reflect/goto;Lcom/google/common/reflect/break;)Lcom/google/common/reflect/break;

    move-result-object p1

    return-object p1
.end method

.method public final wrap()Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Landroid/support/v4/hf1;->case(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->of(Ljava/lang/Class;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/reflect/this;

    invoke-direct {v0}, Lcom/google/common/reflect/this;-><init>()V

    iget-object v1, p0, Lcom/google/common/reflect/break;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object v0

    return-object v0
.end method
