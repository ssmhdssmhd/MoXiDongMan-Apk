.class Lrx/internal/operators/g$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lrx/internal/operators/g;

.field public final synthetic do:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic for:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic if:Lrx/internal/producers/do;

.field public final synthetic new:Lrx/if$do;

.field public final synthetic try:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/do;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/if$do;Lrx/functions/Action0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$try;->case:Lrx/internal/operators/g;

    iput-object p2, p0, Lrx/internal/operators/g$try;->do:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lrx/internal/operators/g$try;->if:Lrx/internal/producers/do;

    iput-object p4, p0, Lrx/internal/operators/g$try;->for:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lrx/internal/operators/g$try;->new:Lrx/if$do;

    iput-object p6, p0, Lrx/internal/operators/g$try;->try:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$try;->do:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    iget-object v0, p0, Lrx/internal/operators/g$try;->if:Lrx/internal/producers/do;

    invoke-virtual {v0, p1, p2}, Lrx/internal/producers/do;->request(J)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/g$try;->for:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lrx/internal/operators/g$try;->new:Lrx/if$do;

    iget-object p2, p0, Lrx/internal/operators/g$try;->try:Lrx/functions/Action0;

    invoke-virtual {p1, p2}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    :cond_0
    return-void
.end method
