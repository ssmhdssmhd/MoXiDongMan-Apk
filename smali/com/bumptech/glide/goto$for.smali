.class Lcom/bumptech/glide/goto$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/fn1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic if:Lcom/bumptech/glide/goto;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/goto;Landroid/support/v4/fn1;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/goto;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/goto$for;->if:Lcom/bumptech/glide/goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/goto$for;->do:Landroid/support/v4/fn1;

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/goto$for;->if:Lcom/bumptech/glide/goto;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto$for;->do:Landroid/support/v4/fn1;

    invoke-virtual {v0}, Landroid/support/v4/fn1;->else()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
