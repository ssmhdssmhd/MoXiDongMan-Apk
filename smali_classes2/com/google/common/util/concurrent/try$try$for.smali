.class Lcom/google/common/util/concurrent/try$try$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/try$try;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/try$try;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/try$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->state()Lcom/google/common/util/concurrent/Service$for;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_0

    .line 3
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 4
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    iget-object v0, v0, Lcom/google/common/util/concurrent/try$try;->public:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try;->else()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v0}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/case;->final()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-static {v1}, Lcom/google/common/util/concurrent/try$try;->while(Lcom/google/common/util/concurrent/try$try;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/common/util/concurrent/try$try$for;->do:Lcom/google/common/util/concurrent/try$try;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/case;->class(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
