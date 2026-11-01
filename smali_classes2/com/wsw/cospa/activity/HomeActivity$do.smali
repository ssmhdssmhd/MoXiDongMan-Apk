.class Lcom/wsw/cospa/activity/HomeActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/HomeActivity;->i(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/activity/HomeActivity;->updateTitle(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/HomeActivity;->transient(Lcom/wsw/cospa/activity/HomeActivity;)Lcom/wsw/cospa/fragment/RecommendFragmant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/HomeActivity;->transient(Lcom/wsw/cospa/activity/HomeActivity;)Lcom/wsw/cospa/fragment/RecommendFragmant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->finally(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$do;->do:Lcom/wsw/cospa/activity/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/activity/HomeActivity;->y(Z)V

    return-void
.end method
