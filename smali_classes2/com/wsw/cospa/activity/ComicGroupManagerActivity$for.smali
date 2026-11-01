.class Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->default(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->do:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    invoke-static {v2}, Lcom/wsw/cospa/dao/do;->k(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->catch(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->try()V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->ll_action_button:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    return-void
.end method
