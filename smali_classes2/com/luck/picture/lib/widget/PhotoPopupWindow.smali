.class public Lcom/luck/picture/lib/widget/PhotoPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;
    }
.end annotation


# instance fields
.field private case:Landroid/view/animation/Animation;

.field private do:Landroid/widget/TextView;

.field private else:Landroid/view/animation/Animation;

.field private for:Landroid/widget/TextView;

.field private goto:Z

.field private if:Landroid/widget/TextView;

.field private new:Landroid/widget/LinearLayout;

.field private this:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

.field private try:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->goto:Z

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_camera_pop_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 10
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 12
    sget v1, Lcom/luck/picture/lib/R$anim;->up_in:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->case:Landroid/view/animation/Animation;

    .line 13
    sget v1, Lcom/luck/picture/lib/R$anim;->down_out:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->else:Landroid/view/animation/Animation;

    .line 14
    sget p1, Lcom/luck/picture/lib/R$id;->ll_root:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->new:Landroid/widget/LinearLayout;

    .line 15
    sget p1, Lcom/luck/picture/lib/R$id;->fl_content:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->try:Landroid/widget/FrameLayout;

    .line 16
    sget p1, Lcom/luck/picture/lib/R$id;->picture_tv_photo:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->do:Landroid/widget/TextView;

    .line 17
    sget p1, Lcom/luck/picture/lib/R$id;->picture_tv_cancel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->for:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/luck/picture/lib/R$id;->picture_tv_video:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->if:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->for:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->do:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->try:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic case(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/widget/PhotoPopupWindow;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->goto:Z

    return p1
.end method

.method private else()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/luck/picture/lib/widget/PhotoPopupWindow$if;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$if;-><init>(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic for(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic if(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->else()V

    return-void
.end method

.method public static synthetic new(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic try(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->goto:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->goto:Z

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->new:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->else:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->else:Landroid/view/animation/Animation;

    new-instance v1, Lcom/luck/picture/lib/widget/PhotoPopupWindow$do;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$do;-><init>(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_photo:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->this:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;->onItemClick(I)V

    .line 5
    invoke-static {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->try(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    .line 6
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_video:I

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->this:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;->onItemClick(I)V

    .line 9
    invoke-static {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->case(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->this:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 5

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/16 v2, 0x50

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    aget v1, v0, v3

    const/4 v4, 0x1

    .line 4
    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 5
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    :goto_0
    iput-boolean v3, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->goto:Z

    .line 8
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->new:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->case:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
