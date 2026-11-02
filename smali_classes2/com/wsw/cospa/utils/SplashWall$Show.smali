.class Lcom/wsw/cospa/utils/SplashWall$Show;
.super Ljava/lang/Object;
.source "SplashWall.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bmp:Landroid/graphics/Bitmap;

.field private final done:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->done:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/utils/SplashWall$Show;->done:Ljava/lang/Runnable;

    invoke-static {}, Lcom/wsw/cospa/utils/SplashWall;->remaining()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/utils/SplashWall;->finishOnce(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void
.end method
