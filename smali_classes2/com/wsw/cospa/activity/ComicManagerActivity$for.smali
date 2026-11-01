.class Lcom/wsw/cospa/activity/ComicManagerActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicManagerActivity;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicSourceBean;

.field public final synthetic if:Lcom/wsw/cospa/activity/ComicManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicManagerActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->break(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->transient()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->continue(Lcom/wsw/cospa/activity/ComicManagerActivity;Z)Z

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->abstract(Lcom/wsw/cospa/activity/ComicManagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->volatile(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$for;->if:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->p()V

    :cond_0
    return-void
.end method
