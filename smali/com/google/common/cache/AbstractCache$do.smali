.class public final Lcom/google/common/cache/AbstractCache$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final case:Lcom/google/common/cache/LongAddable;

.field private final do:Lcom/google/common/cache/LongAddable;

.field private final for:Lcom/google/common/cache/LongAddable;

.field private final if:Lcom/google/common/cache/LongAddable;

.field private final new:Lcom/google/common/cache/LongAddable;

.field private final try:Lcom/google/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/cache/case;->do()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->do:Lcom/google/common/cache/LongAddable;

    .line 3
    invoke-static {}, Lcom/google/common/cache/case;->do()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->if:Lcom/google/common/cache/LongAddable;

    .line 4
    invoke-static {}, Lcom/google/common/cache/case;->do()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->for:Lcom/google/common/cache/LongAddable;

    .line 5
    invoke-static {}, Lcom/google/common/cache/case;->do()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->new:Lcom/google/common/cache/LongAddable;

    .line 6
    invoke-static {}, Lcom/google/common/cache/case;->do()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->try:Lcom/google/common/cache/LongAddable;

    .line 7
    invoke-static {}, Lcom/google/common/cache/case;->do()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->case:Lcom/google/common/cache/LongAddable;

    return-void
.end method

.method private static if(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public do(Lcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->snapshot()Landroid/support/v4/df;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->do:Lcom/google/common/cache/LongAddable;

    invoke-virtual {p1}, Landroid/support/v4/df;->for()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->if:Lcom/google/common/cache/LongAddable;

    invoke-virtual {p1}, Landroid/support/v4/df;->break()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 4
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->for:Lcom/google/common/cache/LongAddable;

    invoke-virtual {p1}, Landroid/support/v4/df;->goto()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 5
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->new:Lcom/google/common/cache/LongAddable;

    invoke-virtual {p1}, Landroid/support/v4/df;->case()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 6
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->try:Lcom/google/common/cache/LongAddable;

    invoke-virtual {p1}, Landroid/support/v4/df;->final()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 7
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->case:Lcom/google/common/cache/LongAddable;

    invoke-virtual {p1}, Landroid/support/v4/df;->if()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordEviction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->case:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    return-void
.end method

.method public recordHits(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->do:Lcom/google/common/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordLoadException(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->new:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->try:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->for:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->try:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordMisses(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->if:Lcom/google/common/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public snapshot()Landroid/support/v4/df;
    .locals 14

    .line 1
    new-instance v13, Landroid/support/v4/df;

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->do:Lcom/google/common/cache/LongAddable;

    .line 2
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/cache/AbstractCache$do;->if(J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->if:Lcom/google/common/cache/LongAddable;

    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/cache/AbstractCache$do;->if(J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->for:Lcom/google/common/cache/LongAddable;

    .line 4
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/common/cache/AbstractCache$do;->if(J)J

    move-result-wide v5

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->new:Lcom/google/common/cache/LongAddable;

    .line 5
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/common/cache/AbstractCache$do;->if(J)J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->try:Lcom/google/common/cache/LongAddable;

    .line 6
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/common/cache/AbstractCache$do;->if(J)J

    move-result-wide v9

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$do;->case:Lcom/google/common/cache/LongAddable;

    .line 7
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/common/cache/AbstractCache$do;->if(J)J

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/support/v4/df;-><init>(JJJJJJ)V

    return-object v13
.end method
