.class public final synthetic Lcom/wsw/cospa/activity/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/do;->do:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    iput-boolean p2, p0, Lcom/wsw/cospa/activity/do;->if:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/wsw/cospa/activity/do;->do:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/do;->if:Z

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->do(Lcom/wsw/cospa/bean/ComicShelfGroupBean;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method
