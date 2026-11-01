.class abstract Lrx/internal/util/unsafe/return;
.super Lrx/internal/util/unsafe/while;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/while<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synchronized:J


# instance fields
.field private volatile instanceof:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lrx/internal/util/unsafe/return;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/implements;->do(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/return;->synchronized:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/while;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final catch()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/internal/util/unsafe/return;->instanceof:J

    return-wide v0
.end method

.method public final class(J)V
    .locals 6

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/return;->synchronized:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
