.class Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/SourceSheetDialog;->lambda$getOriginList$1(Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/SourceSheetDialog;

.field public final synthetic val$bean:Lcom/wsw/cospa/bean/SearchComicBean;

.field public final synthetic val$originList:Ljava/util/List;

.field public final synthetic val$searchBeans:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog;Ljava/util/List;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->this$0:Lcom/wsw/cospa/widget/view/SourceSheetDialog;

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$searchBeans:Ljava/util/List;

    iput-object p3, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$bean:Lcom/wsw/cospa/bean/SearchComicBean;

    iput-object p4, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$originList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$searchBeans:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$bean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->extends(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$searchBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5
    iget-object v4, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$searchBeans:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$originList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$originList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$originList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->this$0:Lcom/wsw/cospa/widget/view/SourceSheetDialog;

    invoke-static {v1}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->access$000(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->this$0:Lcom/wsw/cospa/widget/view/SourceSheetDialog;

    iget-object v0, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh()Z

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->this$0:Lcom/wsw/cospa/widget/view/SourceSheetDialog;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->access$400(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;->val$originList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;->refresh(Ljava/util/List;)V

    :goto_2
    return-void
.end method
