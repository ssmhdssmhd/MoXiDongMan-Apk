.class Lcom/google/android/material/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/SnackbarManager$if;,
        Lcom/google/android/material/snackbar/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final case:I = 0x5dc

.field private static final else:I = 0xabe

.field private static goto:Lcom/google/android/material/snackbar/SnackbarManager;

.field public static final try:I


# instance fields
.field private final do:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private for:Lcom/google/android/material/snackbar/SnackbarManager$if;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final if:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private new:Lcom/google/android/material/snackbar/SnackbarManager$if;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/SnackbarManager$do;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/SnackbarManager$do;-><init>(Lcom/google/android/material/snackbar/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->if:Landroid/os/Handler;

    return-void
.end method

.method private const(Lcom/google/android/material/snackbar/SnackbarManager$if;)V
    .locals 4
    .param p1    # Lcom/google/android/material/snackbar/SnackbarManager$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$if;->if:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xabe

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->if:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->if:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private do(Lcom/google/android/material/snackbar/SnackbarManager$if;I)Z
    .locals 2
    .param p1    # Lcom/google/android/material/snackbar/SnackbarManager$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/google/android/material/snackbar/SnackbarManager$if;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->if:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->dismiss(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager$if;->do(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static for()Lcom/google/android/material/snackbar/SnackbarManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->goto:Lcom/google/android/material/snackbar/SnackbarManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/snackbar/SnackbarManager;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/SnackbarManager;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->goto:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/SnackbarManager;->goto:Lcom/google/android/material/snackbar/SnackbarManager;

    return-object v0
.end method

.method private goto(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/SnackbarManager$if;->do(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private super()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-eqz v0, :cond_1

    .line 2
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    .line 4
    iget-object v0, v0, Lcom/google/android/material/snackbar/SnackbarManager$if;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/google/android/material/snackbar/SnackbarManager$Callback;->show()V

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public break(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->const(Lcom/google/android/material/snackbar/SnackbarManager$if;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public case(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->goto(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public catch(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$if;->for:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$if;->for:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->if:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public class(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$if;->for:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Lcom/google/android/material/snackbar/SnackbarManager$if;->for:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->const(Lcom/google/android/material/snackbar/SnackbarManager$if;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    iput p1, p2, Lcom/google/android/material/snackbar/SnackbarManager$if;->if:I

    .line 4
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->if:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->const(Lcom/google/android/material/snackbar/SnackbarManager$if;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->goto(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    iput p1, p2, Lcom/google/android/material/snackbar/SnackbarManager$if;->if:I

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/google/android/material/snackbar/SnackbarManager$if;

    invoke-direct {v1, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager$if;-><init>(ILcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->do(Lcom/google/android/material/snackbar/SnackbarManager$if;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    .line 14
    invoke-direct {p0}, Lcom/google/android/material/snackbar/SnackbarManager;->super()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public if(Lcom/google/android/material/snackbar/SnackbarManager$Callback;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->do(Lcom/google/android/material/snackbar/SnackbarManager$if;I)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->goto(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/SnackbarManager;->do(Lcom/google/android/material/snackbar/SnackbarManager$if;I)Z

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public new(Lcom/google/android/material/snackbar/SnackbarManager$if;)V
    .locals 2
    .param p1    # Lcom/google/android/material/snackbar/SnackbarManager$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->do(Lcom/google/android/material/snackbar/SnackbarManager$if;I)Z

    .line 4
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public this(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->for:Lcom/google/android/material/snackbar/SnackbarManager$if;

    .line 4
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager;->new:Lcom/google/android/material/snackbar/SnackbarManager$if;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/snackbar/SnackbarManager;->super()V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public try(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->do:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/SnackbarManager;->else(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
