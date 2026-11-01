.class public abstract Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# instance fields
.field private default:Z

.field private extends:I

.field private finally:I

.field private package:Landroid/graphics/Rect;

.field private private:Landroid/graphics/Rect;

.field private throws:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->default:Z

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->extends:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->finally:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->package:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->private:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->default:Z

    return p0
.end method

.method public static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->default:Z

    return p1
.end method

.method public static synthetic c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->throws:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static synthetic d(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->finally:I

    return p0
.end method

.method public static synthetic e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->finally:I

    return p1
.end method

.method private f(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Landroid/support/v4/ai1;->if(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->package:Landroid/graphics/Rect;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$do;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->goto:Landroid/view/View;

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$if;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$if;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this:Landroid/view/View;

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$for;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$for;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic implements(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->private:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic instanceof(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->extends:I

    return p0
.end method

.method public static synthetic protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->package:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic synchronized(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->extends:I

    return p1
.end method

.method public static synthetic transient(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->package:Landroid/graphics/Rect;

    return-object p1
.end method


# virtual methods
.method public abstract g(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/ScrollView;)Landroid/view/View;
.end method

.method public h()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p3, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->f(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->throws:Landroid/widget/ScrollView;

    .line 2
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->h()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->throws:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->g(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/ScrollView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->throws:Landroid/widget/ScrollView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
