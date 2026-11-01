.class Lcom/wsw/cospa/widget/explosionfield/ExplosionField$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionField;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$1;->this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$1;->this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    invoke-static {v0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->access$000(Lcom/wsw/cospa/widget/explosionfield/ExplosionField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
