.class public Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/ShadowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final UNSPECIFIED_GRAVITY:I = -0x1


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    .line 10
    iput p3, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    .line 3
    sget-object v1, Lcom/wsw/cospa/R$styleable;->ShadowLayout_lay:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;)V
    .locals 1
    .param p1    # Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    .line 17
    iget p1, p1, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    iput p1, p0, Lcom/wsw/cospa/widget/view/ShadowLayout$LayoutParams;->gravity:I

    return-void
.end method
