.class public Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "this"
.end annotation


# static fields
.field public static final return:I = -0x80000000


# instance fields
.field private break:Ljava/lang/CharSequence;

.field private case:I

.field private catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private class:I

.field private const:Landroid/widget/TextView;

.field private do:I

.field private else:I

.field private final:I

.field private for:I

.field private goto:I

.field private if:I

.field private import:F

.field private native:I

.field private new:Landroid/graphics/drawable/Drawable;

.field private public:I

.field private super:I

.field private this:I

.field private throw:Z

.field private try:Landroid/graphics/drawable/Drawable;

.field private while:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 22
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do:I

    .line 23
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->if:I

    .line 24
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for:I

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->try:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case:I

    .line 28
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else:I

    .line 29
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->goto:I

    const/16 v0, 0x11

    .line 30
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->this:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class:I

    .line 32
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->final:I

    .line 33
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->super:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->throw:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->while:F

    .line 36
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->import:F

    .line 37
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->native:I

    .line 38
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->public:I

    .line 39
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    :cond_0
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->try:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    .line 42
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    invoke-virtual {p2, v1, v1, p1, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    :cond_1
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->break:Ljava/lang/CharSequence;

    .line 44
    iput-boolean p4, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->throw:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->if:I

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->try:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case:I

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else:I

    .line 9
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->goto:I

    const/16 v0, 0x11

    .line 10
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->this:I

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class:I

    .line 12
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->final:I

    .line 13
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->super:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->throw:Z

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->while:F

    .line 16
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->import:F

    .line 17
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->native:I

    .line 18
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->public:I

    .line 19
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->break:Ljava/lang/CharSequence;

    return-void
.end method

.method private break(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view:I

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_minSize:I

    invoke-static {p1, v2}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x6

    .line 4
    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_tab_segment_item_id:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->this(Landroid/view/View;)V

    .line 8
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->final:I

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->super:I

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->continue(II)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    return-object p1
.end method

.method public static synthetic case(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->public:I

    return p1
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else:I

    return p0
.end method

.method public static synthetic else(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->import:F

    return p0
.end method

.method private final()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->native:I

    return p0
.end method

.method public static synthetic goto(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->while:F

    return p0
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case:I

    return p0
.end method

.method private native(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/kh1;->new(I)I

    move-result v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class:I

    if-le v0, v1, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 3
    :goto_0
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class:I

    if-gt v0, v1, :cond_0

    const-string v1, "9"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "+"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->native:I

    return p1
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->public:I

    return p0
.end method


# virtual methods
.method public abstract(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->goto:I

    return-void
.end method

.method public catch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else:I

    return v0
.end method

.method public class()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case:I

    return v0
.end method

.method public const()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch:Ljava/util/List;

    return-object v0
.end method

.method public continue(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->final:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->super:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method public default()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public extends()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->throw:Z

    return v0
.end method

.method public finally(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else:I

    return-void
.end method

.method public implements(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->break(Landroid/content/Context;)Landroid/widget/TextView;

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_minSize_with_text:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->native(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_tab_sign_count_view_minSize:I

    invoke-static {p2, v0}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public import()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public interface(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->if:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for:I

    return-void
.end method

.method public package(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case:I

    return-void
.end method

.method public private(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->this:I

    return-void
.end method

.method public protected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do:I

    return-void
.end method

.method public public()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for:I

    return v0
.end method

.method public return()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->try:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->const:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public strictfp(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->import:F

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->while:F

    return-void
.end method

.method public super()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->this:I

    return v0
.end method

.method public switch()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->break:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public this(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch:Ljava/util/List;

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->final()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->goto:I

    return v0
.end method

.method public throws()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do:I

    return v0
.end method

.method public transient(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class:I

    return-void
.end method

.method public volatile(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->break:Ljava/lang/CharSequence;

    return-void
.end method

.method public while()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->if:I

    return v0
.end method
