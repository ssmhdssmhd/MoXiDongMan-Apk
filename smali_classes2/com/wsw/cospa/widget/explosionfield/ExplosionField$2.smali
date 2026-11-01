.class Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->explode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public random:Ljava/util/Random;

.field public final synthetic this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionField;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    iput-object p2, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
