.class public interface abstract Lcom/hwangjr/rxbus/thread/ThreadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/hwangjr/rxbus/thread/ThreadHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;

    invoke-direct {v0}, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;-><init>()V

    sput-object v0, Lcom/hwangjr/rxbus/thread/ThreadHandler;->DEFAULT:Lcom/hwangjr/rxbus/thread/ThreadHandler;

    return-void
.end method


# virtual methods
.method public abstract getExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method
