.class Lcom/cheng/channel/ChannelView$do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cheng/channel/ChannelView$do;->catch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/cheng/channel/ChannelView$do;


# direct methods
.method public constructor <init>(Lcom/cheng/channel/ChannelView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do$for;->do:Lcom/cheng/channel/ChannelView$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView$do$for;->do:Lcom/cheng/channel/ChannelView$do;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/cheng/channel/ChannelView$do;->else(Lcom/cheng/channel/ChannelView$do;I)I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do$for;->do:Lcom/cheng/channel/ChannelView$do;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cheng/channel/ChannelView$do;->goto(Lcom/cheng/channel/ChannelView$do;Z)Z

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do$for;->do:Lcom/cheng/channel/ChannelView$do;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method
