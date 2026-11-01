.class Lrx/internal/operators/u2$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/u2;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final synthetic for:Landroid/support/v4/ww1;

.field public final synthetic if:Landroid/support/v4/b02;

.field public final synthetic new:Lrx/internal/operators/u2;


# direct methods
.method public constructor <init>(Lrx/internal/operators/u2;Landroid/support/v4/b02;Landroid/support/v4/ww1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/u2$if;->new:Lrx/internal/operators/u2;

    iput-object p2, p0, Lrx/internal/operators/u2$if;->if:Landroid/support/v4/b02;

    iput-object p3, p0, Lrx/internal/operators/u2$if;->for:Landroid/support/v4/ww1;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u2$if;->do:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/u2$if;->do:Z

    .line 3
    iget-object v0, p0, Lrx/internal/operators/u2$if;->for:Landroid/support/v4/ww1;

    iget-object v1, p0, Lrx/internal/operators/u2$if;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, v1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/u2$if;->new:Lrx/internal/operators/u2;

    iget-object v0, v0, Lrx/internal/operators/u2;->do:Lrx/Single;

    iget-object v1, p0, Lrx/internal/operators/u2$if;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, v1}, Lrx/Single;->u(Landroid/support/v4/b02;)Lrx/Subscription;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/u2$if;->do:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx/internal/operators/u2$if;->do:Z

    .line 4
    iget-object v0, p0, Lrx/internal/operators/u2$if;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/u2$if;->onCompleted()V

    return-void
.end method
