.class Lcom/cheng/channel/ChannelView$do$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lcom/cheng/channel/ChannelView$do$new;->do:Lcom/cheng/channel/ChannelView$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cheng/channel/ChannelView$do$new;->do:Lcom/cheng/channel/ChannelView$do;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cheng/channel/ChannelView$do;->goto(Lcom/cheng/channel/ChannelView$do;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
