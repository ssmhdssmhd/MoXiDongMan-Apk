.class Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->setVisibility(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout$1;->this$0:Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout$1;->this$0:Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;->access$001(Lcom/wsw/cospa/widget/view/SwitchNightRelativeLayout;I)V

    const-string p1, "\u5207\u6362\u6210\u529f"

    .line 2
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

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
