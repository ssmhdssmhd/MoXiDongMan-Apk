.class Lrx/internal/operators/finally$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/finally;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/internal/operators/finally;


# direct methods
.method public constructor <init>(Lrx/internal/operators/finally;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/finally$do;->if:Lrx/internal/operators/finally;

    iput-object p2, p0, Lrx/internal/operators/finally$do;->do:Landroid/support/v4/y22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/finally$do;->do:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/finally$do;->if:Lrx/internal/operators/finally;

    iget-object v0, v0, Lrx/internal/operators/finally;->do:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/finally$do;->do:Landroid/support/v4/y22;

    invoke-static {v1}, Lrx/observers/new;->case(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    :cond_0
    return-void
.end method
