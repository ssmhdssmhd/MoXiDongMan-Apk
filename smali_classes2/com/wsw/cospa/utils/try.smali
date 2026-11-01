.class public Lcom/wsw/cospa/utils/try;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:F = 1.05f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/utils/try;->catch(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static case(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/utils/try;->else(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static catch(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static class(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 7
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 9
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 11
    invoke-static {v4, p1}, Lcom/wsw/cospa/utils/try;->break(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 13
    aget-object v0, p0, v2

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/try;->break(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x2

    .line 14
    aget-object p0, p0, v0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/try;->break(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static const(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/wsw/cospa/utils/try;->final(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static do(II)Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v3, 0x1

    aput p0, v1, v3

    const/4 v4, 0x2

    aput p0, v1, v4

    const/4 p0, 0x3

    aput p1, v1, p0

    const/4 v5, 0x4

    aput p1, v1, v5

    new-array p1, v0, [[I

    new-array v0, v4, [I

    .line 1
    fill-array-data v0, :array_0

    aput-object v0, p1, v2

    new-array v0, v4, [I

    .line 2
    fill-array-data v0, :array_1

    aput-object v0, p1, v3

    new-array v0, v3, [I

    const v6, 0x101009c

    aput v6, v0, v2

    aput-object v0, p1, v4

    new-array v0, v3, [I

    const v3, 0x101009d

    aput v3, v0, v2

    aput-object v0, p1, p0

    new-array p0, v2, [I

    aput-object p0, p1, v5

    .line 3
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10102fe
    .end array-data
.end method

.method public static else(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 4
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static final(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f09038d

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800f9

    .line 3
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    invoke-static {v1, v0}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    const v1, 0x7f090394

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x41600000    # 14.0f

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 7
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v2

    const v4, 0x3f866666    # 1.05f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 9
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    invoke-static {v4, v0}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablePadding(I)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setIncludeFontPadding(Z)V

    const v4, 0x7f09038e

    .line 15
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const v5, 0x7f0800c7

    .line 16
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 17
    invoke-static {v4, v0}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    const v0, 0x7f090393

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 22
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f080074

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_0
    invoke-static {v1, p1, p2}, Lcom/wsw/cospa/utils/try;->try(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/lang/String;Z)V

    return-void
.end method

.method public static for(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f09038d

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    invoke-static {v1, v0}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    const v1, 0x7f090394

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v3, 0x41600000    # 14.0f

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 7
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablePadding(I)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setIncludeFontPadding(Z)V

    const v4, 0x7f09038e

    .line 12
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const v5, 0x7f0800c7

    .line 13
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 14
    invoke-static {v4, v0}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    const v0, 0x7f090393

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 17
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 18
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 19
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f080070

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 24
    :goto_0
    invoke-static {v1, p1, p2}, Lcom/wsw/cospa/utils/try;->try(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/lang/String;Z)V

    return-void
.end method

.method public static goto(Landroid/view/MenuItem;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public static if(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/wsw/cospa/utils/try;->for(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static new(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/utils/try;->try(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/lang/String;Z)V

    return-void
.end method

.method public static super(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/wsw/cospa/utils/try;->throw(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static this(Landroid/view/View;I)V
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 7
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 9
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 11
    invoke-static {v4, p1}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 13
    aget-object v0, p0, v2

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x2

    .line 14
    aget-object p0, p0, v0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static throw(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f09038d

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0800f9

    .line 3
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    invoke-static {v1, v0}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    const v1, 0x7f090394

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x41600000    # 14.0f

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 7
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v2

    const v4, 0x3f866666    # 1.05f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 9
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    invoke-static {v4, v0}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablePadding(I)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setIncludeFontPadding(Z)V

    const v4, 0x7f09038e

    .line 15
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const v5, 0x7f0800c7

    .line 16
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 17
    invoke-static {v4, v0}, Lcom/wsw/cospa/utils/try;->this(Landroid/view/View;I)V

    const v0, 0x7f090393

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 22
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f080070

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 27
    :goto_0
    invoke-static {v1, p1, p2}, Lcom/wsw/cospa/utils/try;->try(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/lang/String;Z)V

    return-void
.end method

.method public static try(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result p2

    const v0, 0x3f866666    # 1.05f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const p2, -0x777778

    .line 5
    invoke-static {v0, p2}, Lcom/wsw/cospa/utils/try;->case(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    new-instance p2, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x21

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static while(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "presenter"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "menuView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/NavigationMenuView;

    .line 7
    new-instance v0, Lcom/wsw/cospa/utils/try$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/utils/try$do;-><init>(Lcom/google/android/material/internal/NavigationMenuView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
