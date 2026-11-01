.class final Lkotlin/ranges/break;
.super Landroid/support/v4/qa2;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.3"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0011\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\nR\u001c\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0008\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/ranges/break;",
        "Landroid/support/v4/qa2;",
        "",
        "hasNext",
        "Landroid/support/v4/oa2;",
        "if",
        "()J",
        "do",
        "J",
        "finalElement",
        "Z",
        "for",
        "step",
        "new",
        "next",
        "first",
        "last",
        "",
        "<init>",
        "(JJJLandroid/support/v4/rx;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final do:J

.field private final for:J

.field private if:Z

.field private new:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qa2;-><init>()V

    .line 2
    iput-wide p3, p0, Lkotlin/ranges/break;->do:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oc2;->else(JJ)I

    move-result v2

    if-lez v4, :cond_0

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/break;->if:Z

    .line 4
    invoke-static {p5, p6}, Landroid/support/v4/oa2;->goto(J)J

    move-result-wide p5

    iput-wide p5, p0, Lkotlin/ranges/break;->for:J

    .line 5
    iget-boolean p5, p0, Lkotlin/ranges/break;->if:Z

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move-wide p1, p3

    :goto_1
    iput-wide p1, p0, Lkotlin/ranges/break;->new:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLandroid/support/v4/rx;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p6}, Lkotlin/ranges/break;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlin/ranges/break;->if:Z

    return v0
.end method

.method public if()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/break;->new:J

    .line 2
    iget-wide v2, p0, Lkotlin/ranges/break;->do:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    iget-boolean v2, p0, Lkotlin/ranges/break;->if:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lkotlin/ranges/break;->if:Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/break;->for:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Landroid/support/v4/oa2;->goto(J)J

    move-result-wide v2

    iput-wide v2, p0, Lkotlin/ranges/break;->new:J

    :goto_0
    return-wide v0
.end method
