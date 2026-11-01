.class final Lcom/google/common/hash/throw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/throw$for;
    }
.end annotation


# static fields
.field private static final do:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/hash/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/common/hash/while;

    invoke-direct {v0}, Lcom/google/common/hash/while;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/hash/throw$do;

    invoke-direct {v0}, Lcom/google/common/hash/throw$do;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    new-instance v0, Lcom/google/common/hash/throw$if;

    invoke-direct {v0}, Lcom/google/common/hash/throw$if;-><init>()V

    .line 4
    :goto_0
    sput-object v0, Lcom/google/common/hash/throw;->do:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/common/hash/LongAddable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/throw;->do:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/LongAddable;

    return-object v0
.end method
