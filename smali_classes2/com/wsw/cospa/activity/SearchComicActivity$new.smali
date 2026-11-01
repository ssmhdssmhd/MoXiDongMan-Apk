.class Lcom/wsw/cospa/activity/SearchComicActivity$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity;->instanceof(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$new;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$new;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->tv_source_name:Landroid/widget/TextView;

    const-string v0, "\u5168\u90e8"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$new;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->abstract(Lcom/wsw/cospa/activity/SearchComicActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$new;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->tv_source_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
