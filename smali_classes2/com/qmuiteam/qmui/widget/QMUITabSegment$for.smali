.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:I

.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

.field public final synthetic else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

.field public final synthetic for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

.field public final synthetic new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

.field public final synthetic try:I


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    iput-object p4, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iput-object p5, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    iput p6, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->try:I

    iput p7, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->case:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->break(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->else(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->try:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->volatile(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->case:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->interface(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/widget/TextView;Z)V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/widget/TextView;Z)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->try:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)I

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->else(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)Z

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v3

    invoke-virtual {p1, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->this(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;->else:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
