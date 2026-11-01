.class public final Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Suppliers$try;,
        Lcom/google/common/base/Suppliers$SupplierFunction;,
        Lcom/google/common/base/Suppliers$else;,
        Lcom/google/common/base/Suppliers$case;,
        Lcom/google/common/base/Suppliers$do;,
        Lcom/google/common/base/Suppliers$for;,
        Lcom/google/common/base/Suppliers$if;,
        Lcom/google/common/base/Suppliers$new;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;)",
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/Suppliers$else;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$else;-><init>(Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static do(Lcom/google/common/base/Function;Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TF;TT;>;",
            "Lcom/google/common/base/Supplier<",
            "TF;>;)",
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/Suppliers$new;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Suppliers$new;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static for(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/Suppliers$do;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/base/Suppliers$do;-><init>(Lcom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static if(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;)",
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/base/Suppliers$for;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/common/base/Suppliers$if;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/base/Suppliers$if;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$if;-><init>(Lcom/google/common/base/Supplier;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/base/Suppliers$for;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$for;-><init>(Lcom/google/common/base/Supplier;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static new(Ljava/lang/Object;)Lcom/google/common/base/Supplier;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/base/Suppliers$case;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$case;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static try()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function<",
            "Lcom/google/common/base/Supplier<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/base/Suppliers$try;->INSTANCE:Lcom/google/common/base/Suppliers$try;

    return-object v0
.end method
