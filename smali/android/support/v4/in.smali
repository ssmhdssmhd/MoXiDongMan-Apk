.class public final synthetic Landroid/support/v4/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/in;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChooseOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/in;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->public(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method
