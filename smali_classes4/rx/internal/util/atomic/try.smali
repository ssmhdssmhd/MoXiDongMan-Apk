.class public final Lrx/internal/util/atomic/try;
.super Lrx/internal/util/atomic/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/atomic/if<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lrx/internal/util/atomic/if;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/ht0;

    invoke-direct {v0}, Landroid/support/v4/ht0;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/if;->case(Landroid/support/v4/ht0;)V

    .line 4
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/if;->try(Landroid/support/v4/ht0;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v4/ht0;->soNext(Landroid/support/v4/ht0;)V

    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Lrx/internal/util/atomic/if;->if()Landroid/support/v4/ht0;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/ht0;->soNext(Landroid/support/v4/ht0;)V

    .line 4
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/if;->case(Landroid/support/v4/ht0;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/atomic/if;->do()Landroid/support/v4/ht0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ht0;->lpValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
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
    invoke-virtual {p0}, Lrx/internal/util/atomic/if;->do()Landroid/support/v4/ht0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ht0;->getAndNullValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/if;->try(Landroid/support/v4/ht0;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
