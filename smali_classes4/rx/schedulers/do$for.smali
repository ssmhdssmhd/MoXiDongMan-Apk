.class final Lrx/schedulers/do$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field public final do:J

.field public final for:Lrx/if$do;

.field public final if:Lrx/functions/Action0;

.field private final new:J


# direct methods
.method public constructor <init>(Lrx/if$do;JLrx/functions/Action0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-wide v0, Lrx/schedulers/do;->for:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lrx/schedulers/do;->for:J

    iput-wide v0, p0, Lrx/schedulers/do$for;->new:J

    .line 3
    iput-wide p2, p0, Lrx/schedulers/do$for;->do:J

    .line 4
    iput-object p4, p0, Lrx/schedulers/do$for;->if:Lrx/functions/Action0;

    .line 5
    iput-object p1, p0, Lrx/schedulers/do$for;->for:Lrx/if$do;

    return-void
.end method

.method public static synthetic do(Lrx/schedulers/do$for;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrx/schedulers/do$for;->new:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lrx/schedulers/do$for;->do:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lrx/schedulers/do$for;->if:Lrx/functions/Action0;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TimedAction(time = %d, action = %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
