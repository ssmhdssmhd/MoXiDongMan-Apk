.class public abstract Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$OnProvideDefaultTheme;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final return:I = 0x0

.field public static final static:I = 0x1

.field private static switch:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$OnProvideDefaultTheme;


# instance fields
.field public break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;",
            ">;"
        }
    .end annotation
.end field

.field public case:Landroid/widget/LinearLayout;

.field private catch:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;

.field public class:Landroid/widget/TextView;

.field public const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

.field private do:Landroid/content/Context;

.field public else:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

.field private final:I

.field public for:Ljava/lang/String;

.field public goto:Landroid/view/View;

.field public if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

.field private import:I

.field private native:I

.field private new:Z

.field private public:I

.field private super:I

.field public this:Landroid/view/View;

.field private throw:Z

.field private try:Z

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->new:Z

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->try:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    .line 7
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->throw:Z

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->while:I

    .line 9
    sget v0, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_separator:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import:I

    .line 10
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native:I

    .line 11
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public:I

    .line 12
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    return-void
.end method

.method private catch(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroidx/legacy/widget/Space;

    invoke-direct {v0, p1}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static continue(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$OnProvideDefaultTheme;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->switch:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$OnProvideDefaultTheme;

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public abstract(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->catch:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;

    return-object p0
.end method

.method public break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$layout;->qmui_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->case:Landroid/widget/LinearLayout;

    .line 4
    sget v1, Lcom/qmuiteam/qmui/R$id;->dialog:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->else:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->catch:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->setOnDecorationListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->case:Landroid/widget/LinearLayout;

    sget v1, Lcom/qmuiteam/qmui/R$id;->anchor_top:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->goto:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->case:Landroid/widget/LinearLayout;

    sget v1, Lcom/qmuiteam/qmui/R$id;->anchor_bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->else:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->switch(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->else:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->else:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->static(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->case:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->new:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->setCancelable(Z)V

    .line 13
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->try:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->case:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    return-object p1
.end method

.method public case(ILjava/lang/CharSequence;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->try(ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public class()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this:Landroid/view/View;

    return-object v0
.end method

.method public const()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->goto:Landroid/view/View;

    return-object v0
.end method

.method public default(IIII)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->while:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public:I

    return-object p0
.end method

.method public else(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public extends(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->new:Z

    return-object p0
.end method

.method public final()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    return-object v0
.end method

.method public finally(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->try:Z

    return-object p0
.end method

.method public for(IILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public goto(Ljava/lang/CharSequence;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->try(ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public if(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->try(ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->for:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->show()V

    return-object v0
.end method

.method public native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$if;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$if;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)V

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->goto:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->case:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public new(ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->for(IILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public package(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->throw:Z

    return-object p0
.end method

.method public private(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final:I

    return-object p0
.end method

.method public public(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public abstract return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
.end method

.method public static(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 2
    sget-object v3, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef:[I

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_action_container_style:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_0
    if-ge v9, v4, :cond_4

    .line 4
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 5
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_container_justify_content:I

    if-ne v14, v15, :cond_0

    .line 6
    invoke-virtual {v3, v14, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    goto :goto_1

    .line 7
    :cond_0
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_container_custom_space_index:I

    if-ne v14, v15, :cond_1

    .line 8
    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    goto :goto_1

    .line 9
    :cond_1
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_space:I

    if-ne v14, v15, :cond_2

    .line 10
    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    goto :goto_1

    .line 11
    :cond_2
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_height:I

    if-ne v14, v15, :cond_3

    .line 12
    invoke-virtual {v3, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iget v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    if-ne v3, v8, :cond_6

    :cond_5
    const/4 v11, -0x1

    goto :goto_2

    :cond_6
    if-nez v10, :cond_7

    move v11, v2

    goto :goto_2

    :cond_7
    if-ne v10, v8, :cond_8

    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x3

    if-ne v10, v3, :cond_5

    .line 15
    :goto_2
    new-instance v3, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    sget v4, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_action_container_style:I

    invoke-direct {v3, v1, v5, v4}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 16
    iget v4, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    if-ne v4, v8, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v7, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    if-ge v6, v2, :cond_11

    if-ne v11, v6, :cond_a

    .line 18
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->catch(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    :cond_a
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 20
    iget v4, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    if-ne v4, v8, :cond_b

    .line 21
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_6

    .line 22
    :cond_b
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-ltz v11, :cond_d

    if-lt v6, v11, :cond_c

    .line 23
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 24
    :cond_c
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_d
    :goto_5
    const/4 v9, 0x2

    if-ne v10, v9, :cond_e

    const/high16 v9, 0x3f800000    # 1.0f

    .line 25
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 26
    :cond_e
    :goto_6
    iget-object v9, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    invoke-virtual {v3, v9, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->for(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;I)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object v3

    .line 27
    iget v9, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->while:I

    if-lez v9, :cond_10

    if-lez v6, :cond_10

    if-eq v11, v6, :cond_10

    .line 28
    iget v14, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    if-ne v14, v8, :cond_f

    .line 29
    iget v14, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native:I

    iget v15, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public:I

    iget v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import:I

    .line 30
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 31
    invoke-virtual {v3, v14, v15, v9, v5}, Lcom/qmuiteam/qmui/layout/QMUIButton;->onlyShowTopDivider(IIII)V

    goto :goto_7

    .line 32
    :cond_f
    iget v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native:I

    iget v14, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public:I

    iget v15, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import:I

    .line 33
    invoke-static {v1, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    .line 34
    invoke-virtual {v3, v5, v14, v9, v15}, Lcom/qmuiteam/qmui/layout/QMUIButton;->onlyShowLeftDivider(IIII)V

    .line 35
    :cond_10
    :goto_7
    iget-boolean v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->throw:Z

    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    .line 36
    iget-boolean v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->throw:Z

    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 37
    iget-object v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v5, -0x2

    goto :goto_4

    :cond_11
    if-ne v11, v2, :cond_12

    .line 38
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->catch(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    :cond_12
    iget v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    if-nez v1, :cond_13

    .line 40
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    new-instance v2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;

    invoke-direct {v2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 41
    :cond_13
    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public strictfp(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public super()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/ih1;->final(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public switch(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    .line 3
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->for:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    sget p3, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_title_style:I

    invoke-static {p1, p3}, Landroid/support/v4/sh1;->do(Landroid/widget/TextView;I)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public(Landroid/widget/TextView;)V

    .line 6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->switch:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$OnProvideDefaultTheme;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$OnProvideDefaultTheme;->getThemeForBuilder(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget v0, Lcom/qmuiteam/qmui/R$style;->QMUI_Dialog:I

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object v0

    return-object v0
.end method

.method public throw()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 3
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->try()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public throws(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super:I

    return-object p0
.end method

.method public try(ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do:Landroid/content/Context;

    sget v1, Lcom/qmuiteam/qmui/R$string;->qmui_tool_fixellipsize:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->for:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public while()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    return-object v0
.end method
