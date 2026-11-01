.class public abstract Landroid/support/v4/uh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/th2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()Landroid/support/v4/th2;
.end method

.method public declared-synchronized if()Landroid/support/v4/th2;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/uh2;->do:Landroid/support/v4/th2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/uh2;->do()Landroid/support/v4/th2;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/uh2;->do:Landroid/support/v4/th2;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/uh2;->do:Landroid/support/v4/th2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
