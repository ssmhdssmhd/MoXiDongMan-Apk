.class Lrx/Single$new$do$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$new$do;->call()V
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
.field public final synthetic if:Lrx/Single$new$do;


# direct methods
.method public constructor <init>(Lrx/Single$new$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    iget-object v0, v0, Lrx/Single$new$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    iget-object p1, p1, Lrx/Single$new$do;->if:Lrx/if$do;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    iget-object v0, v0, Lrx/Single$new$do;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    throw p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    iget-object v0, v0, Lrx/Single$new$do;->do:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    iget-object p1, p1, Lrx/Single$new$do;->if:Lrx/if$do;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/Single$new$do$do;->if:Lrx/Single$new$do;

    iget-object v0, v0, Lrx/Single$new$do;->if:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    throw p1
.end method
