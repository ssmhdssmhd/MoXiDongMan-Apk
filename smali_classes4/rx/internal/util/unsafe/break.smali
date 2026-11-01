.class abstract Lrx/internal/util/unsafe/break;
.super Lrx/internal/util/unsafe/class;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/class<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final t:J


# instance fields
.field private volatile s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lrx/internal/util/unsafe/break;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/implements;->do(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/break;->t:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/class;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final throw(JJ)Z
    .locals 8

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/break;->t:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method public final while()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/internal/util/unsafe/break;->s:J

    return-wide v0
.end method
