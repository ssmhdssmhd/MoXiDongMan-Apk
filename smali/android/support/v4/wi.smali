.class public final synthetic Landroid/support/v4/wi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicShelfBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wi;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput-object p2, p0, Landroid/support/v4/wi;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/wi;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v1, p0, Landroid/support/v4/wi;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->t(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
