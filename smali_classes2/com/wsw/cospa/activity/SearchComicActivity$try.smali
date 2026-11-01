.class Lcom/wsw/cospa/activity/SearchComicActivity$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/SearchComicActivity;->extends(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/SearchComicActivity;->package(Lcom/wsw/cospa/activity/SearchComicActivity;)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/model/SearchComicModel;->continue(Ljava/lang/String;JLjava/lang/Boolean;)V

    return-void
.end method

.method public onRefresh()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->switch()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v2, v1, Lcom/wsw/cospa/activity/SearchComicActivity;->tv_source_name:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/wsw/cospa/activity/SearchComicActivity;->private(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/wsw/cospa/model/SearchComicModel;->implements(Landroid/widget/TextView;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel;->interface(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/SearchComicActivity;->extends(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/SearchComicActivity;->package(Lcom/wsw/cospa/activity/SearchComicActivity;)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/model/SearchComicModel;->continue(Ljava/lang/String;JLjava/lang/Boolean;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$try;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->startRefresh()V

    return-void
.end method
