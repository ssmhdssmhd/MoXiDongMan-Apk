.class public final Lcom/google/common/collect/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/q1$for;,
        Lcom/google/common/collect/q1$new;,
        Lcom/google/common/collect/q1$if;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lcom/google/common/collect/Interner;)Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Interner<",
            "TE;>;)",
            "Lcom/google/common/base/Function<",
            "TE;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/q1$for;

    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Interner;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q1$for;-><init>(Lcom/google/common/collect/Interner;)V

    return-object v0
.end method

.method public static for()Lcom/google/common/collect/Interner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/q1;->if()Lcom/google/common/collect/q1$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/q1$if;->for()Lcom/google/common/collect/q1$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/q1$if;->do()Lcom/google/common/collect/Interner;

    move-result-object v0

    return-object v0
.end method

.method public static if()Lcom/google/common/collect/q1$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/q1$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/q1$if;-><init>(Lcom/google/common/collect/q1$do;)V

    return-object v0
.end method

.method public static new()Lcom/google/common/collect/Interner;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/q1;->if()Lcom/google/common/collect/q1$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/q1$if;->new()Lcom/google/common/collect/q1$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/q1$if;->do()Lcom/google/common/collect/Interner;

    move-result-object v0

    return-object v0
.end method
