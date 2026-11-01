.class public final Lrx/internal/util/unsafe/final;
.super Lrx/internal/util/unsafe/do;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/do<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrx/internal/util/unsafe/do;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/ht0;

    invoke-direct {v0}, Landroid/support/v4/ht0;-><init>()V

    iput-object v0, p0, Lrx/internal/util/unsafe/if;->protected:Landroid/support/v4/ht0;

    .line 3
    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/final;->else(Landroid/support/v4/ht0;)Landroid/support/v4/ht0;

    return-void
.end method


# virtual methods
.method public else(Landroid/support/v4/ht0;)Landroid/support/v4/ht0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ht0<",
            "TE;>;)",
            "Landroid/support/v4/ht0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v6, p0, Lrx/internal/util/unsafe/try;->while:Landroid/support/v4/ht0;

    .line 2
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/try;->import:J

    move-object v1, p0

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "null elements not allowed"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/support/v4/ht0;

    invoke-direct {v0, p1}, Landroid/support/v4/ht0;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Lrx/internal/util/unsafe/final;->else(Landroid/support/v4/ht0;)Landroid/support/v4/ht0;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/ht0;->soNext(Landroid/support/v4/ht0;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/unsafe/if;->protected:Landroid/support/v4/ht0;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/ht0;->lpValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/try;->if()Landroid/support/v4/ht0;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/ht0;->lpValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/unsafe/if;->new()Landroid/support/v4/ht0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/ht0;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v1}, Lrx/internal/util/unsafe/if;->case(Landroid/support/v4/ht0;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/try;->if()Landroid/support/v4/ht0;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/ht0;->getAndNullValue()Ljava/lang/Object;

    move-result-object v0

    .line 8
    iput-object v1, p0, Lrx/internal/util/unsafe/if;->protected:Landroid/support/v4/ht0;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
