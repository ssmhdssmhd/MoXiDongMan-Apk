.class Lrx/internal/operators/w2$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/w2;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Landroid/support/v4/b02;

.field public final synthetic if:Ljava/lang/Object;

.field public final synthetic new:Lrx/internal/operators/w2;


# direct methods
.method public constructor <init>(Lrx/internal/operators/w2;Ljava/lang/Object;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/w2$do;->new:Lrx/internal/operators/w2;

    iput-object p2, p0, Lrx/internal/operators/w2$do;->if:Ljava/lang/Object;

    iput-object p3, p0, Lrx/internal/operators/w2$do;->for:Landroid/support/v4/b02;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/w2$do;->new:Lrx/internal/operators/w2;

    iget-boolean v1, v0, Lrx/internal/operators/w2;->new:Z

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Lrx/internal/operators/w2;->for:Lrx/functions/Action1;

    iget-object v1, p0, Lrx/internal/operators/w2$do;->if:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lrx/internal/operators/w2$do;->for:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/w2$do;->for:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lrx/internal/operators/w2$do;->new:Lrx/internal/operators/w2;

    iget-boolean v0, p1, Lrx/internal/operators/w2;->new:Z

    if-nez v0, :cond_1

    .line 7
    :try_start_1
    iget-object p1, p1, Lrx/internal/operators/w2;->for:Lrx/functions/Action1;

    iget-object v0, p0, Lrx/internal/operators/w2$do;->if:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 8
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/w2$do;->new:Lrx/internal/operators/w2;

    iget-object v1, p0, Lrx/internal/operators/w2$do;->for:Landroid/support/v4/b02;

    iget-object v2, p0, Lrx/internal/operators/w2$do;->if:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lrx/internal/operators/w2;->if(Landroid/support/v4/b02;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
