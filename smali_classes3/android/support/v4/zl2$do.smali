.class public Landroid/support/v4/zl2$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/zl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/zl2;


# direct methods
.method public constructor <init>(Landroid/support/v4/zl2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/zl2$do;->do:Landroid/support/v4/zl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v4/zl2$do;->do:Landroid/support/v4/zl2;

    invoke-static {p2}, Lorg/repackage/a/a/a/a$do;->do(Landroid/os/IBinder;)Lorg/repackage/a/a/a/a;

    move-result-object p2

    .line 2
    iput-object p2, p1, Landroid/support/v4/zl2;->do:Lorg/repackage/a/a/a/a;

    .line 3
    iget-object p1, p0, Landroid/support/v4/zl2$do;->do:Landroid/support/v4/zl2;

    .line 4
    iget-object p1, p1, Landroid/support/v4/zl2;->new:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/zl2$do;->do:Landroid/support/v4/zl2;

    .line 7
    iget-object p2, p2, Landroid/support/v4/zl2;->new:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/zl2$do;->do:Landroid/support/v4/zl2;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroid/support/v4/zl2;->do:Lorg/repackage/a/a/a/a;

    return-void
.end method
