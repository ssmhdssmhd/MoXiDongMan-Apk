.class Lcom/luck/picture/lib/widget/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/widget/do;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/widget/do;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/widget/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/widget/do$do;->do:Lcom/luck/picture/lib/widget/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/widget/do$do;->do:Lcom/luck/picture/lib/widget/do;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/widget/do;->do(Lcom/luck/picture/lib/widget/do;Z)Z

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/widget/do$do;->do:Lcom/luck/picture/lib/widget/do;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/do;->if(Lcom/luck/picture/lib/widget/do;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/do$do;->do:Lcom/luck/picture/lib/widget/do;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/do;->for(Lcom/luck/picture/lib/widget/do;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
