.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuBaseDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;",
        ">",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public default:Landroid/widget/LinearLayout;

.field public extends:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

.field public finally:Landroid/widget/LinearLayout$LayoutParams;

.field public package:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field public throws:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public implements()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public instanceof(I)V
    .locals 0

    return-void
.end method

.method public protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$for;

    invoke-direct {v1, p0, p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$for;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->default:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->default:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef:[I

    sget v5, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_menu_container_style:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v2, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    .line 7
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 8
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef_android_paddingTop:I

    if-ne v14, v15, :cond_0

    .line 9
    invoke-virtual {v2, v14, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    goto :goto_1

    .line 10
    :cond_0
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef_android_paddingBottom:I

    if-ne v14, v15, :cond_1

    .line 11
    invoke-virtual {v2, v14, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    goto :goto_1

    .line 12
    :cond_1
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_container_single_padding_vertical:I

    if-ne v14, v15, :cond_2

    .line 13
    invoke-virtual {v2, v14, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    goto :goto_1

    .line 14
    :cond_2
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_container_padding_top_when_title_exist:I

    if-ne v14, v15, :cond_3

    .line 15
    invoke-virtual {v2, v14, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    goto :goto_1

    .line 16
    :cond_3
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_container_padding_bottom_when_action_exist:I

    if-ne v14, v15, :cond_4

    .line 17
    invoke-virtual {v2, v14, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    goto :goto_1

    .line 18
    :cond_4
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_item_height:I

    if-ne v14, v15, :cond_5

    .line 19
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->finally:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x10

    .line 22
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 23
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_7

    move v12, v9

    goto :goto_2

    :cond_7
    move v9, v10

    .line 24
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v11, v9

    .line 25
    :goto_3
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    goto :goto_4

    :cond_9
    move v13, v12

    .line 26
    :goto_4
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->default:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v11, v7, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 28
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;

    .line 29
    invoke-interface {v3, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;->createItemView(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;

    move-result-object v3

    .line 30
    iget-object v4, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->default:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->finally:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v4, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 32
    :cond_a
    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-direct {v2, v1}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->extends:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->setMaxHeight(I)V

    .line 34
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->extends:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->default:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 35
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->extends:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 36
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->extends:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public transient(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setMenuIndex(I)V

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$do;

    invoke-direct {v0, p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MenuItemViewListener;)V

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->throws:Ljava/util/ArrayList;

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$if;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$if;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
