.class public Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public do:Lcom/scwang/smartrefresh/header/internal/pathview/if;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-direct {p1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->do:Lcom/scwang/smartrefresh/header/internal/pathview/if;

    return-void
.end method


# virtual methods
.method public varargs do([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->do:Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->case([I)V

    return-void
.end method

.method public varargs if([Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->do:Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->else([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->do:Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->if([Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->do:Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 5
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->setBounds(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/pathview/PathsView;->do:Lcom/scwang/smartrefresh/header/internal/pathview/if;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
