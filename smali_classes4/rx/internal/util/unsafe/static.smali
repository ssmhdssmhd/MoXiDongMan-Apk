.class abstract Lrx/internal/util/unsafe/static;
.super Lrx/internal/util/unsafe/public;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/public<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private volatile G:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/public;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final super()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/internal/util/unsafe/static;->G:J

    return-wide v0
.end method

.method public final throw(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lrx/internal/util/unsafe/static;->G:J

    return-void
.end method
