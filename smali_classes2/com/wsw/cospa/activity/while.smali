.class public final synthetic Lcom/wsw/cospa/activity/while;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity$do;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity$do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/while;->do:Lcom/wsw/cospa/activity/ComicDetailActivity$do;

    return-void
.end method


# virtual methods
.method public final tvChapterOnClick(Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/while;->do:Lcom/wsw/cospa/activity/ComicDetailActivity$do;

    invoke-static {v0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicDetailActivity$do;->do(Lcom/wsw/cospa/activity/ComicDetailActivity$do;Lcom/wsw/cospa/bean/ChapterListBean;Landroid/view/View;I)V

    return-void
.end method
