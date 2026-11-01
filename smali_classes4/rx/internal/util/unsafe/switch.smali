.class public final Lrx/internal/util/unsafe/switch;
.super Lrx/internal/util/unsafe/package;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/j32;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/package<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/package;-><init>(I)V

    return-void
.end method

.method private catch()J
    .locals 3

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v1, Lrx/internal/util/unsafe/default;->t:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private class()J
    .locals 3

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v1, Lrx/internal/util/unsafe/private;->c:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private const(J)V
    .locals 6

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/default;->t:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method private final(J)V
    .locals 6

    .line 1
    sget-object v0, Lrx/internal/util/unsafe/implements;->do:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/private;->c:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lrx/internal/util/unsafe/switch;->class()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/unsafe/switch;->catch()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "null elements not allowed"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lrx/internal/util/unsafe/case;->import:[Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lrx/internal/util/unsafe/private;->a:J

    .line 4
    invoke-virtual {p0, v1, v2}, Lrx/internal/util/unsafe/case;->do(J)J

    move-result-wide v3

    .line 5
    invoke-virtual {p0, v0, v3, v4}, Lrx/internal/util/unsafe/case;->case([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v3, v4, p1}, Lrx/internal/util/unsafe/case;->goto([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 7
    invoke-direct {p0, v1, v2}, Lrx/internal/util/unsafe/switch;->final(J)V

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
    iget-wide v0, p0, Lrx/internal/util/unsafe/default;->s:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/case;->do(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/case;->try(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lrx/internal/util/unsafe/default;->s:J

    .line 2
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/case;->do(J)J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lrx/internal/util/unsafe/case;->import:[Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v4, v2, v3}, Lrx/internal/util/unsafe/case;->case([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    .line 5
    :cond_0
    invoke-virtual {p0, v4, v2, v3, v6}, Lrx/internal/util/unsafe/case;->goto([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 6
    invoke-direct {p0, v0, v1}, Lrx/internal/util/unsafe/switch;->const(J)V

    return-object v5
.end method

.method public size()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lrx/internal/util/unsafe/switch;->catch()J

    move-result-wide v0

    .line 2
    :goto_0
    invoke-direct {p0}, Lrx/internal/util/unsafe/switch;->class()J

    move-result-wide v2

    .line 3
    invoke-direct {p0}, Lrx/internal/util/unsafe/switch;->catch()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    sub-long/2addr v2, v4

    long-to-int v0, v2

    return v0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method
