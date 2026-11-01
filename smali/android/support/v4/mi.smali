.class public final synthetic Landroid/support/v4/mi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicShelfGroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/mi;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput-object p2, p0, Landroid/support/v4/mi;->if:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/mi;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v1, p0, Landroid/support/v4/mi;->if:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->switch(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfGroupBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
