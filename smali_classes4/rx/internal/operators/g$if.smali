.class Lrx/internal/operators/g$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


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

.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic for:Lrx/internal/producers/do;

.field public final synthetic if:Landroid/support/v4/u22;

.field public final synthetic new:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic try:Landroid/support/v4/ww1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g;Landroid/support/v4/y22;Landroid/support/v4/u22;Lrx/internal/producers/do;Ljava/util/concurrent/atomic/AtomicLong;Landroid/support/v4/ww1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$if;->case:Lrx/internal/operators/g;

    iput-object p2, p0, Lrx/internal/operators/g$if;->do:Landroid/support/v4/y22;

    iput-object p3, p0, Lrx/internal/operators/g$if;->if:Landroid/support/v4/u22;

    iput-object p4, p0, Lrx/internal/operators/g$if;->for:Lrx/internal/producers/do;

    iput-object p5, p0, Lrx/internal/operators/g$if;->new:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lrx/internal/operators/g$if;->try:Landroid/support/v4/ww1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$if;->do:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lrx/internal/operators/g$if$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/g$if$do;-><init>(Lrx/internal/operators/g$if;)V

    .line 3
    iget-object v1, p0, Lrx/internal/operators/g$if;->try:Landroid/support/v4/ww1;

    invoke-virtual {v1, v0}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 4
    iget-object v1, p0, Lrx/internal/operators/g$if;->case:Lrx/internal/operators/g;

    iget-object v1, v1, Lrx/internal/operators/g;->do:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
