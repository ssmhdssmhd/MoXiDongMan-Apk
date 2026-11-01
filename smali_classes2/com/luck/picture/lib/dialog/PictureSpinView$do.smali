.class Lcom/luck/picture/lib/dialog/PictureSpinView$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/dialog/PictureSpinView;->try()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/dialog/PictureSpinView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/dialog/PictureSpinView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-static {v0}, Lcom/luck/picture/lib/dialog/PictureSpinView;->do(Lcom/luck/picture/lib/dialog/PictureSpinView;)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/luck/picture/lib/dialog/PictureSpinView;->if(Lcom/luck/picture/lib/dialog/PictureSpinView;F)F

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-static {v0}, Lcom/luck/picture/lib/dialog/PictureSpinView;->do(Lcom/luck/picture/lib/dialog/PictureSpinView;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-static {v1}, Lcom/luck/picture/lib/dialog/PictureSpinView;->do(Lcom/luck/picture/lib/dialog/PictureSpinView;)F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-static {v1}, Lcom/luck/picture/lib/dialog/PictureSpinView;->do(Lcom/luck/picture/lib/dialog/PictureSpinView;)F

    move-result v1

    sub-float/2addr v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/luck/picture/lib/dialog/PictureSpinView;->if(Lcom/luck/picture/lib/dialog/PictureSpinView;F)F

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-static {v0}, Lcom/luck/picture/lib/dialog/PictureSpinView;->for(Lcom/luck/picture/lib/dialog/PictureSpinView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;->do:Lcom/luck/picture/lib/dialog/PictureSpinView;

    invoke-static {v0}, Lcom/luck/picture/lib/dialog/PictureSpinView;->new(Lcom/luck/picture/lib/dialog/PictureSpinView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
