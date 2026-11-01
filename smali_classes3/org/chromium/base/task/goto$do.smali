.class Lorg/chromium/base/task/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/task/goto;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Runnable;

.field public final synthetic if:Lorg/chromium/base/task/goto;


# direct methods
.method public constructor <init>(Lorg/chromium/base/task/goto;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/base/task/goto$do;->if:Lorg/chromium/base/task/goto;

    iput-object p2, p0, Lorg/chromium/base/task/goto$do;->do:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/task/goto$do;->do:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lorg/chromium/base/task/goto$do;->if:Lorg/chromium/base/task/goto;

    invoke-virtual {v0}, Lorg/chromium/base/task/goto;->do()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/base/task/goto$do;->if:Lorg/chromium/base/task/goto;

    invoke-virtual {v1}, Lorg/chromium/base/task/goto;->do()V

    .line 3
    throw v0
.end method
