.class Lcom/wsw/cospa/activity/SourceDebugActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SourceDebugActivity;->throws()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SourceDebugActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$do;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$do;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->return(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$do;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->static(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity$do;->do:Lcom/wsw/cospa/activity/SourceDebugActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {p1}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
