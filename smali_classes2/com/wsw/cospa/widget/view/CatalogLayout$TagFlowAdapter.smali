.class Lcom/wsw/cospa/widget/view/CatalogLayout$TagFlowAdapter;
.super Lcom/wsw/cospa/widget/view/FlowAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/view/CatalogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagFlowAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wsw/cospa/widget/view/FlowAdapter<",
        "Lcom/wsw/cospa/bean/ChapterListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/CatalogLayout;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/CatalogLayout;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout$TagFlowAdapter;->this$0:Lcom/wsw/cospa/widget/view/CatalogLayout;

    .line 2
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/view/FlowAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILcom/wsw/cospa/widget/view/FlowLayout;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout$TagFlowAdapter;->this$0:Lcom/wsw/cospa/widget/view/CatalogLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout$TagFlowAdapter;->this$0:Lcom/wsw/cospa/widget/view/CatalogLayout;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/CatalogLayout;->access$100(Lcom/wsw/cospa/widget/view/CatalogLayout;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
