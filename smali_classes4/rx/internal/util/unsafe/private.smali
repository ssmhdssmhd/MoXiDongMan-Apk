.class abstract Lrx/internal/util/unsafe/private;
.super Lrx/internal/util/unsafe/extends;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/extends<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lrx/internal/util/unsafe/private;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/implements;->do(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/private;->c:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/extends;-><init>(I)V

    return-void
.end method
