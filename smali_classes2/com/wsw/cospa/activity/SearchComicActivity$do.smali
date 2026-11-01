.class Lcom/wsw/cospa/activity/SearchComicActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;


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
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/wsw/cospa/bean/ComicInfoBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method
