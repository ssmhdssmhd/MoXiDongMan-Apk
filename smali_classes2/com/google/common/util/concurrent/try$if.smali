.class Lcom/google/common/util/concurrent/try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/try;->for()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/try;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$if;->do:Lcom/google/common/util/concurrent/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/try$if;->do:Lcom/google/common/util/concurrent/try;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/try;->case()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/implements;->final(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
