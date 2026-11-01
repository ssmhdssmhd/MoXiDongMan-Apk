.class Lrx/internal/operators/OperatorReplay$catch$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$catch;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/OperatorReplay$catch;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorReplay$catch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$catch;->for:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$catch;->new:Landroid/support/v4/q71;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    iget-boolean v1, v1, Lrx/internal/operators/OperatorReplay$catch;->for:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$catch;->new:Landroid/support/v4/q71;

    invoke-virtual {v1}, Landroid/support/v4/q71;->goto()V

    .line 5
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    iget-wide v2, v1, Lrx/internal/operators/OperatorReplay$catch;->case:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lrx/internal/operators/OperatorReplay$catch;->case:J

    .line 6
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$catch$do;->do:Lrx/internal/operators/OperatorReplay$catch;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lrx/internal/operators/OperatorReplay$catch;->for:Z

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
