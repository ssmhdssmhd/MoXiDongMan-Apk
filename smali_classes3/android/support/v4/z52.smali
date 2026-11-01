.class public final Landroid/support/v4/z52;
.super Lkotlin/time/if;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.3"
.end annotation

.annotation build Landroid/support/v4/l90;
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0008\u001a\u00020\u0007H\u0014J\u001b\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroid/support/v4/z52;",
        "Lkotlin/time/if;",
        "Lkotlin/time/new;",
        "duration",
        "Landroid/support/v4/ub2;",
        "for",
        "(J)V",
        "",
        "if",
        "new",
        "<init>",
        "()V",
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
.field private if:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lkotlin/time/if;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private final for(J)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestTimeSource will overflow if its reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v4/z52;->if:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns is advanced by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lkotlin/time/new;->K(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public if()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/z52;->if:J

    return-wide v0
.end method

.method public final new(J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lkotlin/time/if;->do()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lkotlin/time/new;->H(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 2
    iget-wide v2, p0, Landroid/support/v4/z52;->if:J

    add-long v4, v2, v0

    xor-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_3

    xor-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/v4/z52;->for(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkotlin/time/if;->do()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lkotlin/time/new;->E(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 5
    iget-wide v6, p0, Landroid/support/v4/z52;->if:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v0

    long-to-double v0, v2

    cmpl-double v2, v6, v0

    if-gtz v2, :cond_1

    long-to-double v0, v4

    cmpg-double v2, v6, v0

    if-gez v2, :cond_2

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/z52;->for(J)V

    :cond_2
    double-to-long v4, v6

    .line 7
    :cond_3
    :goto_0
    iput-wide v4, p0, Landroid/support/v4/z52;->if:J

    return-void
.end method
