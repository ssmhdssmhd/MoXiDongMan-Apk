.class final Lcom/google/common/cache/case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/case$for;
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/common/cache/else;

    invoke-direct {v0}, Lcom/google/common/cache/else;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/cache/case$do;

    invoke-direct {v0}, Lcom/google/common/cache/case$do;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    new-instance v0, Lcom/google/common/cache/case$if;

    invoke-direct {v0}, Lcom/google/common/cache/case$if;-><init>()V

    .line 4
    :goto_0
    sput-object v0, Lcom/google/common/cache/case;->do:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/common/cache/LongAddable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/cache/case;->do:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LongAddable;

    return-object v0
.end method
