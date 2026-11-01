.class final Lio/reactivex/schedulers/if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/reactivex/schedulers/if$if;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:J

.field public final for:Lio/reactivex/schedulers/if$do;

.field public final if:Ljava/lang/Runnable;

.field public final new:J


# direct methods
.method public constructor <init>(Lio/reactivex/schedulers/if$do;JLjava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/reactivex/schedulers/if$if;->do:J

    .line 3
    iput-object p4, p0, Lio/reactivex/schedulers/if$if;->if:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lio/reactivex/schedulers/if$if;->for:Lio/reactivex/schedulers/if$do;

    .line 5
    iput-wide p5, p0, Lio/reactivex/schedulers/if$if;->new:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/schedulers/if$if;

    invoke-virtual {p0, p1}, Lio/reactivex/schedulers/if$if;->do(Lio/reactivex/schedulers/if$if;)I

    move-result p1

    return p1
.end method

.method public do(Lio/reactivex/schedulers/if$if;)I
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/schedulers/if$if;->do:J

    iget-wide v2, p1, Lio/reactivex/schedulers/if$if;->do:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-wide v0, p0, Lio/reactivex/schedulers/if$if;->new:J

    iget-wide v2, p1, Lio/reactivex/schedulers/if$if;->new:J

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/internal/functions/if;->if(JJ)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/internal/functions/if;->if(JJ)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lio/reactivex/schedulers/if$if;->do:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/reactivex/schedulers/if$if;->if:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TimedRunnable(time = %d, run = %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
