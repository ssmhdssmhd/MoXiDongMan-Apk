.class Lcom/wsw/cospa/utils/SplashWall$Timeout;
.super Ljava/lang/Object;
.source "SplashWall.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final done:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/SplashWall$Timeout;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/wsw/cospa/utils/SplashWall$Timeout;->done:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/wsw/cospa/utils/SplashWall$Timeout;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/utils/SplashWall$Timeout;->done:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/utils/SplashWall;->finishOnce(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void
.end method
