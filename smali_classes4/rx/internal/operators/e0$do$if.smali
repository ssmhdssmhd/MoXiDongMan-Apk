.class Lrx/internal/operators/e0$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/e0$do;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Throwable;

.field public final synthetic if:Lrx/internal/operators/e0$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/e0$do;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/e0$do$if;->if:Lrx/internal/operators/e0$do;

    iput-object p2, p0, Lrx/internal/operators/e0$do$if;->do:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e0$do$if;->if:Lrx/internal/operators/e0$do;

    iget-boolean v1, v0, Lrx/internal/operators/e0$do;->do:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lrx/internal/operators/e0$do;->do:Z

    .line 3
    iget-object v0, v0, Lrx/internal/operators/e0$do;->for:Landroid/support/v4/y22;

    iget-object v1, p0, Lrx/internal/operators/e0$do$if;->do:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/e0$do$if;->if:Lrx/internal/operators/e0$do;

    iget-object v0, v0, Lrx/internal/operators/e0$do;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    return-void
.end method
