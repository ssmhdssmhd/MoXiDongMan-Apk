.class final Lio/reactivex/internal/schedulers/super$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/reactivex/internal/schedulers/super$if;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Runnable;

.field public final for:I

.field public final if:J

.field public volatile new:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/super$if;->do:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/internal/schedulers/super$if;->if:J

    .line 4
    iput p3, p0, Lio/reactivex/internal/schedulers/super$if;->for:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/internal/schedulers/super$if;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/super$if;->do(Lio/reactivex/internal/schedulers/super$if;)I

    move-result p1

    return p1
.end method

.method public do(Lio/reactivex/internal/schedulers/super$if;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/schedulers/super$if;->if:J

    iget-wide v2, p1, Lio/reactivex/internal/schedulers/super$if;->if:J

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/internal/functions/if;->if(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lio/reactivex/internal/schedulers/super$if;->for:I

    iget p1, p1, Lio/reactivex/internal/schedulers/super$if;->for:I

    invoke-static {v0, p1}, Lio/reactivex/internal/functions/if;->do(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
