.class abstract Lrx/internal/util/unsafe/do;
.super Lrx/internal/util/unsafe/if;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/if<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public implements:J

.field public instanceof:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public synchronized:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/internal/util/unsafe/if;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/unsafe/if;->try()Landroid/support/v4/ht0;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/try;->if()Landroid/support/v4/ht0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/unsafe/if;->try()Landroid/support/v4/ht0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lrx/internal/util/unsafe/try;->if()Landroid/support/v4/ht0;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    .line 3
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/ht0;->lvNext()Landroid/support/v4/ht0;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_1
    return v2
.end method
