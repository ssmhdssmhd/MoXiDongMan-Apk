.class public Landroid/support/v4/nh1;
.super Landroid/support/v4/rh1;
.source "SourceFile"


# instance fields
.field private volatile:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/rh1;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p3, p0, Landroid/support/v4/nh1;->volatile:Landroid/widget/BaseAdapter;

    return-void
.end method


# virtual methods
.method public transient(IILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentListView;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Landroid/support/v4/nh1;->volatile:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/support/v4/rh1;->import(Landroid/view/View;)V

    return-void
.end method
