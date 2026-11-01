.class Lcom/google/common/util/concurrent/try$do;
.super Lcom/google/common/util/concurrent/Service$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/try;->for()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic if:Lcom/google/common/util/concurrent/try;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/try;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/try$do;->if:Lcom/google/common/util/concurrent/try;

    iput-object p2, p0, Lcom/google/common/util/concurrent/try$do;->do:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$if;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/common/util/concurrent/Service$for;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/common/util/concurrent/try$do;->do:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public try(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/common/util/concurrent/try$do;->do:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
