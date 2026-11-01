.class Lorg/chromium/base/task/TaskRunnerImpl$do;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/task/TaskRunnerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lorg/chromium/base/task/TaskRunnerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:J


# direct methods
.method public constructor <init>(Lorg/chromium/base/task/TaskRunnerImpl;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/task/TaskRunnerImpl;->do()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-static {p1}, Lorg/chromium/base/task/TaskRunnerImpl;->if(Lorg/chromium/base/task/TaskRunnerImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl$do;->do:J

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/task/this;->if()Lorg/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/task/TaskRunnerImpl$do;->do:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/base/task/TaskRunnerImpl$Natives;->destroy(J)V

    return-void
.end method
