.class final Lcom/google/common/util/concurrent/a$do$do;
.super Lcom/google/common/util/concurrent/a$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/a$do;->do()Lcom/google/common/util/concurrent/a$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final do:Lcom/google/common/base/throws;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a$do;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/base/throws;->for()Lcom/google/common/base/throws;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/a$do$do;->do:Lcom/google/common/base/throws;

    return-void
.end method


# virtual methods
.method public for(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/m;->this(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method public if()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$do$do;->do:Lcom/google/common/base/throws;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/throws;->else(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
