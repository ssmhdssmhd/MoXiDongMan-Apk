.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

.field public final synthetic for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

.field public final synthetic new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

.field public final synthetic try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    iput-object p4, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iput-object p5, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->abstract(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->continue(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/fh1;->if(IIF)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->continue(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {v2, v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->abstract(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/support/v4/fh1;->if(IIF)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-virtual {v2, v3, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->new:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->try:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {v0, v1, v2, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->strictfp(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;F)V

    return-void
.end method
