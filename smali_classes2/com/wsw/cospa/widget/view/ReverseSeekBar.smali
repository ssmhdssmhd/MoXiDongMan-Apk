.class public Lcom/wsw/cospa/widget/view/ReverseSeekBar;
.super Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.source "SourceFile"


# instance fields
.field private isReverse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->isReverse:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->isReverse:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->isReverse:Z

    return-void
.end method


# virtual methods
.method public isRtl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->isReverse:Z

    return v0
.end method

.method public setReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->isReverse:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
